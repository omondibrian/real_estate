import 'package:dartz/dartz.dart';
import 'package:tenants/domain/core/property_failure.dart';
import 'package:tenants/domain/property/entity/property_entity.dart';

abstract class ExternalPropertyDataSource {
  /// retrives property listings from api service.
  /// and returns either [PropertyFailure] in case of an [Error]
  /// or a list of [PropertyEntity] to signal a successfull operation
  Future<Either<PropertyFailure, List<PropertyEntity>>> fetchCurrentListings();

}
