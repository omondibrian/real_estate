import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:tenants/domain/Tenant/entity/tenant_entity.dart';
import 'package:tenants/domain/Tenant/entity/tenant_credentials.dart';
import 'package:tenants/domain/Tenant/repository/tenant_repository.dart';
import 'package:tenants/domain/core/tenant_failures.dart';
import 'package:tenants/infrastructure/tenant/dto/tenant_dto.dart';

//TODO: finish tenants repository impl
@prod
@LazySingleton(as: TenantRepository)
class TenantRepositoryImpl implements TenantRepository {
  @override
  Future<Either<TenantFailures, String>> emailSignIn(
      TenantCredentials creds) async {
    //happy path everything goes well
    return right("Login Successfull");
  }

  @override
  Future<Either<TenantFailures, TenantEntity>> fetchUserProfile() async {
    var profile = TenantDTO(
      id: "1",
      name: "Brian Omondi",
      email: "omondibrian392@gmail.com",
      role: "Tenant",
      profileImage:
          "/storage/40886cf6-4420-42d3-b185-5696e2b50a76_1667138227657.png",
      phoneNumber: "phoneNumber",
      placementDate: "4-9-2022",
      accountStatus: true,
    );

    return right(profile.toEntity());
  }

  @override
  Future<Either<TenantFailures, String>> passwordReset(String email) async {
    return right(
      "Password reset was successfull check your email for a reset token",
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
    return right("received successfully");
  }

  @override
  Future<Either<TenantFailures, String>> updatePassword(
      TenantEntity user) async {
    return right(
      "Password reset was successfull check your email for a reset token",
    );
  }

  @override
  Future<Either<TenantFailures, TenantEntity>> updateProfile(
      TenantEntity user) async {
    var profile = TenantDTO(
      id: "1",
      name: "Brian Omondi",
      email: "omondibrian392@gmail.com",
      role: "Tenant",
      profileImage:
          "/storage/40886cf6-4420-42d3-b185-5696e2b50a76_1667138227657.png",
      phoneNumber: "phoneNumber",
      placementDate: "4-9-2022",
      accountStatus: true,
    );

    return right(profile.toEntity());
  }

  @override
  Future<Either<TenantFailures, String>> verifyOTP(
      String code, String email) async {
    //store token to shared preferences
    return right("otp verification was successfull");
  }
}
