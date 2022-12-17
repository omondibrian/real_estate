import 'package:flutter/foundation.dart';
import 'package:injectable/injectable.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:tenants/domain/core/property_failure.dart';
import 'package:dartz/dartz.dart';
import 'package:tenants/domain/property/datasources/local_property_data_source.dart';
import 'package:tenants/domain/property/entity/property_entity.dart';
import 'package:tenants/infrastructure/property/dtos/property_dto.dart';

@prod
@LazySingleton(as: LocalPropertyDataSource)
class LocalPropertyDataSourceImpl implements LocalPropertyDataSource {
  final SharedPreferences _preferences;

  LocalPropertyDataSourceImpl(this._preferences);
  @override
  Future<Either<PropertyFailure, bool>> cacheLikedListings(
      List<PropertyEntity> listings) async {
    try {
      var payload =
          listings.map((e) => PropertyDTO.fromEntity(e).toJson()).toList();
      var res = await _preferences.setStringList("likedListings", payload);
      return right(res);
    } catch (e) {
      if (kDebugMode) {
        print(e);
      }
      return left(
        const PropertyFailure.storage(
            msg: 'error while caching property listings'),
      );
    }
  }

  @override
  Future<Either<PropertyFailure, List<PropertyEntity>>>
      fetchCurrentListings() async {
    try {
      if (_preferences.containsKey("publicListings")) {
        final listings = _preferences
            .getStringList("publicListings")!
            .map((l) => PropertyDTO.fromJson(l).toEntity())
            .toList();

        return right(listings);
      } else {
        throw Exception('uninitialised storage  parameter');
      }
    } catch (e) {
      if (kDebugMode) {
        print(e);
      }
      return left(
        const PropertyFailure.storage(
            msg: 'error retriving cached property data'),
      );
    }
  }

  @override
  Future<Either<PropertyFailure, bool>> saveListingsToCache(
      List<PropertyEntity> listings) async {
    try {
      var payload =
          listings.map((e) => PropertyDTO.fromEntity(e).toJson()).toList();
      var res = await _preferences.setStringList("publicListings", payload);
      return right(res);
    } catch (e) {
      if (kDebugMode) {
        print(e);
      }
      return left(
        const PropertyFailure.storage(
            msg: 'error while caching property listings'),
      );
    }
  }
  
  @override
  Future<Either<PropertyFailure, bool>> clearPropertyCache() async {
    try {
      await _preferences.remove("publicListings");
      await _preferences.remove("likedListings");
     
      return right(true);
    } on Exception {
      return left(
        const PropertyFailure.storage(msg: "Error while clearing property data"),
      );
    }
  }
}
