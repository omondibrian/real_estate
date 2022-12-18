import 'package:flutter/foundation.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

import 'package:tenants/domain/property/datasources/external_property_datasource.dart';
import 'package:tenants/domain/property/entity/property_entity.dart';
import 'package:tenants/domain/property/entity/request_entity.dart';
import 'package:tenants/domain/property/repository/property_repository.dart';

import '../../../domain/property/datasources/local_property_data_source.dart';
import '../../../domain/property/entity/unit_entity.dart';

part 'property_bloc.freezed.dart';
part 'property_event.dart';
part 'property_state.dart';

@injectable
class PropertyBloc extends Bloc<PropertyEvent, PropertyState> {
  final PropertyRepository _repo;
  final LocalPropertyDataSource _dataSource;
  final ExternalPropertyDataSource _externalPropertyDataSource;
  PropertyBloc(
    this._repo,
    this._dataSource,
    this._externalPropertyDataSource,
  ) : super(const _Initial()) {
    on<FetchListings>(_handlefetchListing);
    on<SaveUnit>(_handleSaveUnit);
    on<NewRequest>(_handleRequest);
    on<SearchListings>(_handleQuerySearch);
  }
  Future<void> _handlefetchListing(
      FetchListings event, Emitter<PropertyState> emit) async {
    //set loading status
    emit(const PropertyState.loadingState(state: true));
    var res = await _repo.fetchListings();
    // emit(const PropertyState.loadingState(state: false));

    res.fold(
      (l) => emit(PropertyState.applicationErrors(msg: l.msg)),
      (r) {
        emit(PropertyState.initial(listings: r));
      },
    );
  }

  Future<void> _handleSaveUnit(
      SaveUnit event, Emitter<PropertyState> emit) async {
    var current = await _dataSource.fetchCachedUnits();

    current.fold((l) => emit(PropertyState.applicationErrors(msg: l.msg)),
        (ent) async {
      ent.add(event.unit);
      var res = await _dataSource.cacheLikedUnits(ent);
      res.fold(
        (l) => emit(PropertyState.applicationErrors(msg: l.msg)),
        (r) {
          if (kDebugMode) {
            print('cached response = $r');
          }
        },
      );
    });
  }

  Future<void> _handleQuerySearch(
      SearchListings event, Emitter<PropertyState> emit) async {
    var listings = state.mapOrNull(initial: (v) => v.listings) ?? [];
    List<UnitEntity> currentUnits = [];
    for (var property in listings) {
      for (var i = 0; i < property.propertyUnits.length; i++) {
        currentUnits.add(property.propertyUnits[i]);
      }
    }
    if (currentUnits.isNotEmpty) {
      var result = currentUnits
          .where((entity) => entity.room.contains(event.query))
          .toList();

      //emit search results
      emit(PropertyState.initial(searchResults: result));
    }
  }

  Future<void> _handleRequest(
      NewRequest event, Emitter<PropertyState> emit) async {
    var req = RequestEntity(
      body: event.body,
      type: event.type,
      senderid: event.senderId,
      id: "",
    );
    var res = await _externalPropertyDataSource.sendRequest(req);
    res.fold(
      (l) => emit(PropertyState.applicationErrors(msg: l.msg)),
      (r) {
        if (kDebugMode) {
          print('request response = $r');
        }
      },
    );
  }
}
