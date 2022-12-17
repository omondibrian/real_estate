import 'package:dartz/dartz.dart';
import 'package:tenants/domain/Tenant/entity/tenant_credentials.dart';
import 'package:tenants/domain/core/payload.dart';
import 'package:tenants/domain/core/tenant_failures.dart';
import 'package:tenants/infrastructure/tenant/dto/auth_dto.dart';
import 'package:tenants/infrastructure/tenant/dto/otp_dto.dart';
import 'package:tenants/infrastructure/tenant/dto/tenant_dto.dart';

/// Handles all external service communications for the application
abstract class ExternalDataSource {
  /// handles onboarding of new tenants in the platform.
  /// and returns either [TenantFailures] in case of an [Error]
  /// or [String] to signal a successfull operation
  Future<Either<TenantFailures, String>> registerNewUser(
      Map<String, dynamic> newTenant);

  /// performs authorization requests to the api server
  /// and returns either [TenantFailures] in case of an [Error]
  /// or [AuthDTO] to signal a successfull operation
  Future<Either<TenantFailures, AuthDTO>> signIn(TenantCredentials creds);

  /// retrives the user profile info from the api.
  /// and returns either [TenantFailures] in case of an [Error]
  /// or [TenantDTO] to signal a successfull operation
  Future<Either<TenantFailures, Payload<TenantDTO>>> fetchProfile();

  /// handles passed resets with the external service.
  /// and returns either [TenantFailures] in case of an [Error]
  /// or [String] to signal a successfull operation
  Future<Either<TenantFailures, String>> passwordReset(String email);

  /// performs otp token validation with the external service.
  /// and returns either [TenantFailures] in case of an [Error]
  /// or [OtpDTO] to signal a successfull operation
  Future<Either<TenantFailures, OtpDTO>> verifyOtpToken(String otp);

  /// updates tenant profile data.
  /// and returns either [TenantFailures] in case of an [Error]
  /// or [Payload] of type [TenantDTO] to signal a successfull operation
  Future<Either<TenantFailures, Payload<TenantDTO>>> profileUpdate(
      Map<String, dynamic> profile);
}
