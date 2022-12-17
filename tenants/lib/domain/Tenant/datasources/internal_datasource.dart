import 'package:dartz/dartz.dart';
import 'package:tenants/domain/Tenant/entity/tenant_entity.dart';
import 'package:tenants/domain/core/tenant_failures.dart';

abstract class InternalDataSource {
  /// retrives the current user info from cache.
  /// and returns either [TenantFailures] in case of an [Error]
  /// or [TenantEntity] to signal a successfull operation
  Future<Either<TenantFailures, TenantEntity>> fetchCurrentUser();

  /// save user data to cache.
  /// and returns either [TenantFailures] in case of an [Error]
  /// or [bool] to signal a successfull operation
  Future<Either<TenantFailures, bool>> saveUserToCache(TenantEntity user);

  /// clear user data  from cache.
  /// and returns either [TenantFailures] in case of an [Error]
  /// or [bool] to signal a successfull operation
  Future<Either<TenantFailures, bool>> clearUserData();

  /// save Auth token and refresh token to cache.
  /// and returns either [TenantFailures] in case of an [Error]
  /// or [bool] to signal a successfull operation
  Future<Either<TenantFailures, bool>> saveAuthAndRefreshToken(
      String token, String refreshToken);

  /// checks if current tenant is authenticated.
  /// and returns either [TenantFailures] in case of an [Error]
  /// or [bool] to signal a successfull operation
  Future<Either<TenantFailures, bool>> isAuthenticated();
}
