import 'package:dartz/dartz.dart';
import 'package:tenants/domain/core/property_failure.dart';
import 'package:tenants/domain/property/entity/property_entity.dart';

abstract class LocalPropertyDataSource {
  /// retrives property listings from cache.
  /// and returns either [PropertyFailure] in case of an [Error]
  /// or a list of [PropertyEntity] to signal a successfull operation
  Future<Either<PropertyFailure, List<PropertyEntity>>> fetchCurrentListings();

  /// save listings data to cache for offline support.
  /// and returns either [PropertyFailure] in case of an [Error]
  /// or [bool] to signal a successfull operation
  Future<Either<PropertyFailure, bool>> saveListingsToCache(
    List<PropertyEntity> listings,
  );

  /// saves liked listings data to cache for offline support.
  /// and returns either [PropertyFailure] in case of an [Error]
  /// or [bool] to signal a successfull operation
  Future<Either<PropertyFailure, bool>> cacheLikedListings(
    List<PropertyEntity> listings,
  );
}
