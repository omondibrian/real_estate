import 'package:dartz/dartz.dart';
import 'package:flutter/foundation.dart';
import 'package:injectable/injectable.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:tenants/domain/Tenant/datasources/internal_datasource.dart';
import 'package:tenants/domain/core/tenant_failures.dart';
import 'package:tenants/domain/Tenant/entity/tenant_entity.dart';
import 'package:tenants/infrastructure/tenant/dto/tenant_dto.dart';

@prod
@LazySingleton(as: InternalDataSource)
class InternalDatasourceImpl implements InternalDataSource {
  final SharedPreferences _preferences;

  InternalDatasourceImpl(this._preferences);
  @override
  Future<Either<TenantFailures, bool>> clearUserData() async {
    try {
      await _preferences.remove('current_user');
      await _preferences.remove('token');
      await _preferences.remove('refresh_token');
      await _preferences.remove('isAuthenticated');
      return right(true);
    } on Exception {
      return left(
        const TenantFailures.storage(msg: "Error while clearing user data"),
      );
    }
  }

  @override
  Future<Either<TenantFailures, TenantEntity>> fetchCurrentUser() async {
    try {
      if (_preferences.containsKey('current_user')) {
        final user =
            TenantDTO.fromJson(_preferences.getString('current_user')!);
        return right(user.toEntity());
      } else {
        throw Exception('uninitialised storage  parameter');
      }
    } catch (e) {
      if (kDebugMode) {
        print(e);
      }
      return left(
        const TenantFailures.storage(msg: 'error retriving  stored user data'),
      );
    }
  }

  @override
  Future<Either<TenantFailures, bool>> saveAuthAndRefreshToken(
      String token, String refreshToken) async {
    try {
      var res = await _preferences.setString("token", token);
      var refreshTokenres =
          await _preferences.setString("refresh_token", refreshToken);
      await _preferences.setBool('isAuthenticated', res && refreshTokenres);
      return right(res && refreshTokenres);
    } catch (e) {
      if (kDebugMode) {
        print(e);
      }
      return left(
        const TenantFailures.storage(msg: 'error while storing user tokens'),
      );
    }
  }

  @override
  Future<Either<TenantFailures, bool>> saveUserToCache(
      TenantEntity user) async {
    try {
      final res = await _preferences.setString(
        'current_user',
        TenantDTO.fromEntity(user).toJson(),
      );
      return right(res);
    } catch (e) {
      if (kDebugMode) {
        print(e);
      }
      return left(
        const TenantFailures.storage(
          msg: 'error storing user data',
        ),
      );
    }
  }

  @override
  Future<Either<TenantFailures, bool>> isAuthenticated() async {
    if (_preferences.containsKey('isAuthenticated')) {
      final isAuth = _preferences.getBool('isAuthenticated')!;
      return right(isAuth);
    } else {
      return left(
        const TenantFailures.storage(
          msg: 'error while retriving user data',
        ),
      );
    }
  }
}
