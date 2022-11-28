import 'package:injectable/injectable.dart';
import 'package:tenants/domain/property/datasources/external_property_datasource.dart';
import 'package:tenants/domain/property/datasources/local_property_data_source.dart';
import 'package:tenants/domain/property/entity/property_entity.dart';
import 'package:dartz/dartz.dart';
import 'package:tenants/domain/core/property_failure.dart';
import 'package:tenants/domain/property/repository/property_repository.dart';
import 'package:internet_connection_checker/internet_connection_checker.dart';

@prod
@LazySingleton(as: PropertyRepository)
class PropertyRepositoryImpl implements PropertyRepository {
  final LocalPropertyDataSource _localPropertyDataSource;
  final ExternalPropertyDataSource _externalPropertyDataSource;

  PropertyRepositoryImpl(
    this._localPropertyDataSource,
    this._externalPropertyDataSource,
  );

  @override
  Future<Either<PropertyFailure, List<PropertyEntity>>> fetchListings() async {
    List<PropertyEntity> listings = [];
    bool result = await InternetConnectionChecker().hasConnection;
    if (result == true) {
      //device has internet connection
      var res = await _externalPropertyDataSource.fetchCurrentListings();
      res.fold((l) {
        return left(l);
      }, (r) {
        //check for errors
        if (r.first.typename == 'ApplicationErrors') {
          return left(
            PropertyFailure.internalServerError(
              msg: r.first.message!,
            ),
          );
        }

        listings = r.map((d) => d.toEntity()).toList();
      });
    } else {
      var res = await _localPropertyDataSource.fetchCurrentListings();
      res.fold(
        (l) {
          return left(l);
        },
        (r) => listings = r,
      );
    }
    return right(listings);
  }
}
