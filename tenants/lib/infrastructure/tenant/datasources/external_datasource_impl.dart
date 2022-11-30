import 'package:dartz/dartz.dart';
import 'package:flutter/foundation.dart';
import 'package:graphql/client.dart';
import 'package:injectable/injectable.dart';
import 'package:tenants/domain/Tenant/datasources/external_datasources.dart';
import 'package:tenants/infrastructure/tenant/dto/tenant_dto.dart';
import 'package:tenants/infrastructure/tenant/dto/otp_dto.dart';
import 'package:tenants/infrastructure/tenant/dto/auth_dto.dart';
import 'package:tenants/domain/core/tenant_failures.dart';
import 'package:tenants/domain/core/payload.dart';
import 'package:tenants/domain/Tenant/entity/tenant_credentials.dart';

import '../../core/base_datasource.dart';
import 'graphql_queries.dart';

@prod
@LazySingleton(as: ExternalDataSource)
class ExternalDatasourceImpl extends BaseDataSource
    implements ExternalDataSource {
  ExternalDatasourceImpl();
  @override
  Future<Either<TenantFailures, Payload<TenantDTO>>> fetchProfile() async {
    try {
      final client = getClient();
      final QueryOptions options = QueryOptions(
        document: gql(fetchUserProfile),
      );
      final QueryResult result = await client.query(options);
      if (result.hasException) {
        if (kDebugMode) {
          print(result.exception.toString());
        }
        throw Exception(result.exception.toString());
      }
      var data = result.data!['fetchProfile'] as Map<String, dynamic>;
      var message = Payload(
        typeName: data["__typename"],
        data: const TenantDTO.initial(),
      );
      switch (data["__typename"]) {
        case "User":
          message.copyWith(
            data: TenantDTO(
              name: data['name'],
              email: data['email'],
              role: data['role'],
              profileImage: data['profileImage'],
              phoneNumber: data['phoneNumber'],
              placementDate: data['placementDate'],
              accountStatus: data['accountStatus'],
            ),
            message: data['message'],
            typeName: data["__typename"],
          );
          break;
        case "ApplicationErrors":
          message.copyWith(
            message: data['errorMessage'],
            typeName: data["__typename"],
          );
          break;
        default:
          throw Exception("invalid response type");
      }

      return right(message);
    } on Exception catch (e) {
      if (kDebugMode) {
        print(e);
      }
      return left(
        const TenantFailures.internalServerError(
            msg: "error while reseting password"),
      );
    }
  }

  @override
  Future<Either<TenantFailures, String>> passwordReset(String email) async {
    try {
      final client = getClient();
      final QueryOptions options = QueryOptions(
        document: gql(resetPass),
        variables: <String, dynamic>{
          "email": email,
        },
      );
      final QueryResult result = await client.query(options);
      if (result.hasException) {
        if (kDebugMode) {
          print(result.exception.toString());
        }
        throw Exception(result.exception.toString());
      }
      var data = result.data!['forgotPassword'] as Map<String, dynamic>;
      var message = '';
      switch (data["__typename"]) {
        case "DefaultResponse":
          message = data['message'];
          break;
        case "ApplicationErrors":
          message = data['errorMessage'];
          break;
        default:
          throw Exception("invalid response type");
      }

      return right(message);
    } on Exception catch (e) {
      if (kDebugMode) {
        print(e);
      }
      return left(
        const TenantFailures.internalServerError(
            msg: "error while reseting password"),
      );
    }
  }

  @override
  Future<Either<TenantFailures, Payload<TenantDTO>>> profileUpdate(
      Map<String, dynamic> profile) async {
    try {
      final client = getClient();
      final QueryOptions options = QueryOptions(
        document: gql(updateProfile),
        variables: profile,
      );
      final QueryResult result = await client.query(options);
      if (result.hasException) {
        if (kDebugMode) {
          print(result.exception.toString());
        }
        throw Exception(result.exception.toString());
      }
      var data = result.data!['updateProfile'] as Map<String, dynamic>;
      Payload<TenantDTO> user = Payload(
        typeName: data["__typename"],
        data: const TenantDTO.initial(),
      );
      switch (data["__typename"]) {
        case "User":
          user.copyWith(
            data: TenantDTO(
              name: data['name'],
              email: data['email'],
              role: data['role'],
              profileImage: data['profileImage'],
              phoneNumber: data['phoneNumber'],
              placementDate: data['placementDate'],
              accountStatus: data['accountStatus'],
            ),
            message: "profile updated successfully",
            typeName: data["__typename"],
          );
          break;
        case "ApplicationErrors":
          throw Exception(data['errorMessage']);
        default:
          throw Exception("invalid response type");
      }

      return right(user);
    } on Exception catch (e) {
      if (kDebugMode) {
        print(e);
      }
      return left(
        const TenantFailures.internalServerError(msg: "error updating profile"),
      );
    }
  }

  @override
  Future<Either<TenantFailures, String>> registerNewUser(
    Map<String, dynamic> newTenant,
  ) async {
    final client = getClient();
    final QueryOptions options = QueryOptions(
      document: gql(regNewUser),
      variables: <String, dynamic>{
        "name": newTenant["name"],
        "email": newTenant["email"],
        "role": newTenant["role"],
        "phoneNumber": newTenant["phoneNumber"],
        "password": newTenant["password"],
        "state": newTenant["state"],
        "profileImage": newTenant['profileImageFile']
      },
    );

    final QueryResult result = await client.query(options);
    if (result.hasException) {
      if (kDebugMode) {
        print(result.exception.toString());
      }
      throw Exception(result.exception.toString());
    }
    var data = result.data!['signup'] as Map<String, dynamic>;
    if (data['error']) {
      return data['error'];
    } else {
      return data['message'];
    }
  }

  @override
  Future<Either<TenantFailures, AuthDTO>> signIn(
      TenantCredentials creds) async {
    try {
      final client = getClient();
      final QueryOptions options = QueryOptions(
        document: gql(signInUser),
        variables: creds.toMap(),
      );

      final QueryResult result = await client.query(options);
      if (result.hasException) {
        if (kDebugMode) {
          print(result.exception.toString());
        }
        throw Exception(result.exception.toString());
      }
      var data = result.data!['signin'] as Map<String, dynamic>;
      if (data['errors'] != null) {
        throw Exception(data["errors"]["code"]);
      }
      if (kDebugMode) {
        print(data);
      }
      AuthDTO resultPayload = AuthDTO.initial();
      switch (data["__typename"]) {
        case "SignInResponse":
          resultPayload.copyWith(
            message: data['message'],
            typeName: data["__typename"],
            refreshToken: data["refreshToken"],
            token: data["token"],
            tenant: TenantDTO.fromJson(
              data["user"],
            ),
          );
          break;
        case "AccountNotActive":
          resultPayload.copyWith(
            message: data['message'],
            typeName: data["__typename"],
          );
          break;
        case "InvalidCredentials":
          return left(
            TenantFailures.invalidCredentials(
              msg: data['msg'],
            ),
          );

        default:
          throw Exception("invalid response type");
      }

      return right(resultPayload);
    } catch (e) {
      if (kDebugMode) {
        print(e);
      }
      return left(
        const TenantFailures.internalServerError(msg: 'error while logging in'),
      );
    }
  }

  @override
  Future<Either<TenantFailures, OtpDTO>> verifyOtpToken(String otp) async {
    try {
      final client = getClient();
      final QueryOptions options = QueryOptions(
        document: gql(verifyOtp),
        variables: <String, String>{"otp": otp},
      );

      final QueryResult result = await client.query(options);
      if (result.hasException) {
        if (kDebugMode) {
          print(result.exception.toString());
        }
        throw Exception(result.exception.toString());
      }
      var data = result.data!['verifyToken'] as Map<String, dynamic>;
      OtpDTO resultPayload = OtpDTO.initial();
      switch (data["__typename"]) {
        case "OTPResponse":
          resultPayload.copyWith(
            message: data['message'],
            token: data['token'],
            typename: data["__typename"],
          );
          break;
        case "ApplicationErrors":
          resultPayload.copyWith(
            message: data['errorMesssage'],
            typename: data["__typename"],
          );
          break;

        default:
          throw Exception("invalid response type");
      }

      return right(resultPayload);
    } catch (e) {
      if (kDebugMode) {
        print(e);
      }
      return left(
        const TenantFailures.internalServerError(msg: 'error while logging in'),
      );
    }
  }
}
