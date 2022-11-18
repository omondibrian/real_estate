import 'package:dartz/dartz.dart';
import 'package:tenants/domain/Tenant/entity/tenant_entity.dart';
import 'package:tenants/domain/core/tenant_failures.dart';

import '../entity/tenant_credentials.dart';

/// contain all intergration functionality pertaining the tenant
abstract class TenantRepository {
  /// performs a sign up operation with the backend api service
  /// and returns either [TenantFailures] in case of an error
  /// or [String] to signal a successfull operation
  Future<Either<TenantFailures, String>> registerNewUser({
    required String name,
    required String email,
    required String phoneNumber,
    required String password,
    required String role,
    });

  /// performs a signIn operation with Backend api service.
  /// By receiving the  user's [TenantCredentials]
  /// and returns either [TenantFailures] in case of an [Error]
  /// or [String] to signal a successfull operation
  Future<Either<TenantFailures, String>> emailSignIn(TenantCredentials creds);

  /// performs a password reset operation with [Backend] api service.
  /// and returns either [TenantFailures] in case of an [Error]
  /// or [String] to signal a successfull operation
  Future<Either<TenantFailures, String>> passwordReset(
    String email,
  );

  /// performs a password update operation with [Backend] api service.
  /// and returns either [TenantFailures] in case of an [Error]
  /// or [String] to signal a successfull operation
  Future<Either<TenantFailures, String>> updatePassword(TenantEntity user);

  /// retrives the user's profile info from an appropriate service.
  /// i.e the [Backend] api
  /// and returns either [TenantFailures] in case of an [Error]
  /// or [TenantEntity] to signal a successfull operation
  Future<Either<TenantFailures, TenantEntity>> fetchUserProfile();

  /// updates the user's profile info to the [Backend] api
  /// and returns either [TenantFailures] in case of an [Error]
  /// or [TenantEntity] to signal a successfull operation
  Future<Either<TenantFailures, TenantEntity>> updateProfile(TenantEntity user);

  /// verifys the otp code entered by the user using  an appropriate service.
  /// i.e the [Backend] api
  /// and returns either [TenantFailures] in case of an [Error]
  /// or [String] to signal a successfull operation
  Future<Either<TenantFailures, String>> verifyOTP(
      String code, String email);
}
