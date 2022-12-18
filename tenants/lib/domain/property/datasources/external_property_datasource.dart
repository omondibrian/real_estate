import 'package:dartz/dartz.dart';
import 'package:tenants/domain/core/property_failure.dart';
import 'package:tenants/domain/property/entity/request_entity.dart';
import 'package:tenants/infrastructure/property/dtos/property_dto.dart';

abstract class ExternalPropertyDataSource {
  /// retrives property listings from api service.
  /// and returns either [PropertyFailure] in case of an [Error]
  /// or a list of [PropertyDTO] to signal a successfull operation
  Future<Either<PropertyFailure, List<PropertyDTO>>> fetchCurrentListings();

  /// makes a [RequestEntity] to the  api service.
  /// and returns either [PropertyFailure] in case of an [Error]
  /// or a list of [bool] to signal a successfull operation
  Future<Either<PropertyFailure, bool>> sendRequest(RequestEntity req);

}
