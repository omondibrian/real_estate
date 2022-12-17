import 'package:dartz/dartz.dart';
import 'package:tenants/domain/core/property_failure.dart';
import 'package:tenants/infrastructure/property/dtos/property_dto.dart';

abstract class ExternalPropertyDataSource {
  /// retrives property listings from api service.
  /// and returns either [PropertyFailure] in case of an [Error]
  /// or a list of [PropertyDTO] to signal a successfull operation
  Future<Either<PropertyFailure, List<PropertyDTO>>> fetchCurrentListings();

}
