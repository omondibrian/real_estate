import 'package:flutter/foundation.dart';
import 'package:graphql/client.dart';
import 'package:tenants/domain/core/property_failure.dart';
import 'package:dartz/dartz.dart';
import 'package:tenants/domain/property/datasources/external_property_datasource.dart';
import 'package:tenants/domain/property/entity/property_entity.dart';
import 'package:tenants/infrastructure/core/base_datasource.dart';
import 'package:tenants/infrastructure/property/datasources/graphql_queries.dart';
import 'package:tenants/infrastructure/property/dtos/property_dto.dart';

class ExternalPropertyDatasourceImpl extends BaseDataSource
    implements ExternalPropertyDataSource {
  ExternalPropertyDatasourceImpl(super.token);

  @override
  Future<Either<PropertyFailure, List<PropertyDTO>>>
      fetchCurrentListings() async {
    try {
      final client = getClient();
      final QueryOptions options = QueryOptions(
        document: gql(fetchListings),
      );

      final QueryResult result = await client.query(options);
      if (result.hasException) {
        if (kDebugMode) {
          print(result.exception.toString());
        }
        throw Exception(result.exception.toString());
      }
      var data = result.data!['fetchPublicListings'] as Map<String, dynamic>;
      List<PropertyDTO> resultPayload = [];
      switch (data["__typename"]) {
        case "ListingsPayload":
          var properties = data['properties'] as List<String>;
          var listings =
              properties.map((p) => PropertyDTO.fromJson(p)).toList();
          resultPayload = listings;
          break;
        case "ApplicationErrors":
          var payload = PropertyDTO.fromEntity(PropertyEntity.initial());

          payload.copyWith(
            message: data['errorMesssage'],
            typename: data["__typename"],
          );
          
          resultPayload.add(payload);
          break;

        default:
          throw Exception("invalid response type");
      }

      return right(resultPayload);
    } catch (e) {
      if (kDebugMode) {
        print(e);
      }
      return left(
        const PropertyFailure.internalServerError(
          msg: 'error while fetching current listings',
        ),
      );
    }
  }
}
