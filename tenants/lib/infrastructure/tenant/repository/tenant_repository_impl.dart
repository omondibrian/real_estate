import 'dart:async';

import 'package:dartz/dartz.dart';
import 'package:flutter/foundation.dart';
import 'package:injectable/injectable.dart';

import 'package:tenants/domain/Tenant/datasources/external_datasources.dart';
import 'package:tenants/domain/Tenant/datasources/internal_datasource.dart';
import 'package:tenants/domain/Tenant/entity/tenant_credentials.dart';
import 'package:tenants/domain/Tenant/entity/tenant_entity.dart';
import 'package:tenants/domain/Tenant/repository/tenant_repository.dart';
import 'package:tenants/domain/core/tenant_failures.dart';
import 'package:tenants/infrastructure/tenant/dto/tenant_dto.dart';

//TODO: finish tenants repository impl
@prod
@LazySingleton(as: TenantRepository)
class TenantRepositoryImpl implements TenantRepository {
  final InternalDataSource internalTenantDatasource;
  final ExternalDataSource externalDataSource;
  TenantRepositoryImpl({
    required this.internalTenantDatasource,
    required this.externalDataSource,
  });
  @override
  Future<Either<TenantFailures, String>> emailSignIn(
      TenantCredentials creds) async {
    var res = await externalDataSource.signIn(creds);
    var msg = "";
    Completer<Either<TenantFailures, String>> result = Completer();
    res.fold((err) {
      result.complete(left(err));
      return left(err);
    }, (authDTO) {
      print(authDTO);
      internalTenantDatasource.saveAuthAndRefreshToken(
        authDTO.token!,
        authDTO.refreshToken!,
      );
      msg = authDTO.message;
      result.complete(right(msg));
    });
    return result.future;
  }

  @override
  Future<Either<TenantFailures, TenantEntity>> fetchUserProfile() async {
    var profile = const TenantDTO.initial();
    //TODO: check if their isn't stable connection and pass precached data
    var res = await externalDataSource.fetchProfile();
    res.fold(
      (err) => left(err),
      (tenant) => profile.copyWith(
        name: tenant.data.name,
        email: tenant.data.email,
        role: tenant.data.role,
        profileImage: tenant.data.profileImage,
        phoneNumber: tenant.data.phoneNumber,
        placementDate: tenant.data.placementDate,
        accountStatus: tenant.data.accountStatus,
      ),
    );
    return right(profile.toEntity());
  }

  @override
  Future<Either<TenantFailures, String>> passwordReset(String email) async {
    String result = '';
    var res = await externalDataSource.passwordReset(email);
    res.fold((err) => left(err), (msg) => result = msg);
    return right(
      result,
    );
  }

  @override
  Future<Either<TenantFailures, String>> registerNewUser({
    required String name,
    required String email,
    required String phoneNumber,
    required String password,
    required String role,
  }) async {
    String result = '';
    var newUserRes = await externalDataSource.registerNewUser({
      'name': name,
      'email': email,
      'phoneNumber': phoneNumber,
      'password': password,
      'role': role
    });

    newUserRes.fold((err) => left(err), (msg) => result = msg);

    return right(
      result,
    );
  }

  @override
  Future<Either<TenantFailures, String>> updatePassword(String password) async {
    var result = '';
    var res = await externalDataSource.profileUpdate({'password': password});
    res.fold((err) => left(err), (payload) {
      result = payload.message!;
      //cache user data
      internalTenantDatasource.saveUserToCache(payload.data.toEntity());
    });
    return right(
      result,
    );
  }

  @override
  Future<Either<TenantFailures, TenantEntity>> updateProfile(
      Map<String, dynamic> userMap) async {
    var profile = const TenantDTO.initial();
    var res = await externalDataSource.profileUpdate(userMap);
    res.fold((err) => left(err), (payload) {
      profile = payload.data;
      //cache user data
      internalTenantDatasource.saveUserToCache(payload.data.toEntity());
    });
    return right(
      profile.toEntity(),
    );
  }

  @override
  Future<Either<TenantFailures, String>> verifyOTP(String code) async {
    var res = '';
    var otpRes = await externalDataSource.verifyOtpToken(code);
    otpRes.fold((err) => left(err), (payload) {
      res = payload.message;
      //cache user  token data
      //refreshtoken token is empty because user is currenetly reseting creds
      //store token to shared preferences
      internalTenantDatasource.saveAuthAndRefreshToken(payload.token!, '');
    });

    return right(res);
  }
}
