import 'package:dartz/dartz.dart';
import 'package:tenants/domain/core/property_failure.dart';
import 'package:tenants/domain/property/entity/property_entity.dart';

/// contain all intergration functionality for propertyListings
abstract class PropertyRepository {
  /// retrives property listings from the backend api service
  /// and returns either [PropertyFailure] in case of an error
  /// or [PropertyEntity] to signal a successfull operation
  Future<Either<PropertyFailure, List<PropertyEntity>>> fetchListings();

}
