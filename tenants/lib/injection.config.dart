// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;
import 'package:shared_preferences/shared_preferences.dart' as _i7;

import 'application/property/bloc/property_bloc.dart' as _i16;
import 'application/tenant/bloc/tenant_bloc.dart' as _i17;
import 'domain/property/datasources/external_property_datasource.dart' as _i5;
import 'domain/property/datasources/local_property_data_source.dart' as _i10;
import 'domain/property/repository/property_repository.dart' as _i12;
import 'domain/Tenant/datasources/external_datasources.dart' as _i3;
import 'domain/Tenant/datasources/internal_datasource.dart' as _i8;
import 'domain/Tenant/repository/tenant_repository.dart' as _i14;
import 'infrastructure/core/module_registration.dart' as _i18;
import 'infrastructure/property/datasources/external_property_datasource.dart'
    as _i6;
import 'infrastructure/property/datasources/local_property_datasource_impl.dart'
    as _i11;
import 'infrastructure/property/repository/property_repository_impl.dart'
    as _i13;
import 'infrastructure/tenant/datasources/external_datasource_impl.dart' as _i4;
import 'infrastructure/tenant/datasources/internal_datasource_impl.dart' as _i9;
import 'infrastructure/tenant/repository/tenant_repository_impl.dart' as _i15;

const String _prod = 'prod';
// ignore_for_file: unnecessary_lambdas
// ignore_for_file: lines_longer_than_80_chars
/// initializes the registration of provided dependencies inside of [GetIt]
Future<_i1.GetIt> $initServiceLocator(
  _i1.GetIt get, {
  String? environment,
  _i2.EnvironmentFilter? environmentFilter,
}) async {
  final gh = _i2.GetItHelper(
    get,
    environment,
    environmentFilter,
  );
  final storageModule = _$StorageModule();
  gh.lazySingleton<_i3.ExternalDataSource>(
    () => _i4.ExternalDatasourceImpl(get<String>()),
    registerFor: {_prod},
  );
  gh.lazySingleton<_i5.ExternalPropertyDataSource>(
    () => _i6.ExternalPropertyDatasourceImpl(get<String>()),
    registerFor: {_prod},
  );
  await gh.factoryAsync<_i7.SharedPreferences>(
    () => storageModule.pref,
    preResolve: true,
  );
  gh.lazySingleton<_i8.InternalDataSource>(
    () => _i9.InternalDatasourceImpl(get<_i7.SharedPreferences>()),
    registerFor: {_prod},
  );
  gh.lazySingleton<_i10.LocalPropertyDataSource>(
    () => _i11.LocalPropertyDataSourceImpl(get<_i7.SharedPreferences>()),
    registerFor: {_prod},
  );
  gh.lazySingleton<_i12.PropertyRepository>(
    () => _i13.PropertyRepositoryImpl(
      get<_i10.LocalPropertyDataSource>(),
      get<_i5.ExternalPropertyDataSource>(),
    ),
    registerFor: {_prod},
  );
  gh.lazySingleton<_i14.TenantRepository>(
    () => _i15.TenantRepositoryImpl(
      internalTenantDatasource: get<_i8.InternalDataSource>(),
      externalDataSource: get<_i3.ExternalDataSource>(),
    ),
    registerFor: {_prod},
  );
  gh.factory<_i16.PropertyBloc>(
      () => _i16.PropertyBloc(get<_i12.PropertyRepository>()));
  gh.factory<_i17.TenantBloc>(() => _i17.TenantBloc(
        get<_i14.TenantRepository>(),
        get<_i8.InternalDataSource>(),
      ));
  return get;
}

class _$StorageModule extends _i18.StorageModule {}
