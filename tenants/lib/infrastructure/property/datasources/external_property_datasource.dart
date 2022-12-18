import 'package:flutter/foundation.dart';
import 'package:graphql/client.dart';
import 'package:injectable/injectable.dart';
import 'package:tenants/domain/core/property_failure.dart';
import 'package:dartz/dartz.dart';
import 'package:tenants/domain/property/datasources/external_property_datasource.dart';
import 'package:tenants/domain/property/entity/property_entity.dart';
import 'package:tenants/infrastructure/core/base_datasource.dart';
import 'package:tenants/infrastructure/property/datasources/graphql_queries.dart';
import 'package:tenants/infrastructure/property/dtos/property_dto.dart';

import '../../../domain/property/entity/request_entity.dart';

@prod
@LazySingleton(as: ExternalPropertyDataSource)
class ExternalPropertyDatasourceImpl extends BaseDataSource
    implements ExternalPropertyDataSource {
  ExternalPropertyDatasourceImpl();

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
          print(result.exception);
        }
        throw Exception(result.exception);
      }
      var data = result.data!['fetchPublicListings'] as Map<String, dynamic>;
      List<PropertyDTO> resultPayload = [];
      switch (data["__typename"]) {
        case "ListingsPayload":
          var properties = data['properties'] as List<Object?>;
          //  print("------properties include ------$properties");

          var listings =
              properties.map((p) => PropertyDTO.fromMap(p as dynamic)).toList();
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
    } catch (e, stack) {
      if (kDebugMode) {
        print(e);
        print(stack);
      }
      return left(
        const PropertyFailure.internalServerError(
          msg: 'error while fetching current listings',
        ),
      );
    }
  }

  @override
  Future<Either<PropertyFailure, bool>> sendRequest(RequestEntity req) async {
    try {
      final client = getClient();
      final MutationOptions options = MutationOptions(
          document: gql(createRequestMutation),
          variables: {
            "type": req.type,
            "senderId": req.senderid,
            "body": req.body
          });

      final QueryResult result = await client.mutate(options);
      if (result.hasException) {
        if (kDebugMode) {
          print(result.exception);
        }
        throw Exception(result.exception);
      }

      var data = result.data!['sendMessage'] as Map<String, dynamic>;

      switch (data["__typename"]) {
        case "SentMessagePayLoad":
          return right(data["isSent"]);
        case "ApplicationErrors":
          return left(
            PropertyFailure.internalServerError(
              msg: data["errorMessage"],
            ),
          );
        default:
          throw Exception("invalid response type");
      }
    } catch (e, stack) {
      if (kDebugMode) {
        print(e);
        print(stack);
      }
      return left(
        const PropertyFailure.internalServerError(
          msg: 'error while sending request',
        ),
      );
    }
    throw UnimplementedError();
  }
}
