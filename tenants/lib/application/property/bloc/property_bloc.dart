import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:tenants/domain/property/entity/property_entity.dart';
import 'package:tenants/domain/property/repository/property_repository.dart';

part 'property_event.dart';
part 'property_state.dart';
part 'property_bloc.freezed.dart';

@injectable
class PropertyBloc extends Bloc<PropertyEvent, PropertyState> {
  final PropertyRepository _repo;
  PropertyBloc(this._repo) : super(const _Initial()) {
    on<FetchListings>(_handlefetchListing);
  }
  Future<void> _handlefetchListing(
      FetchListings event, Emitter<PropertyState> emit) async {
    //set loading status
    emit(const PropertyState.loadingState(state: true));
    var res = await _repo.fetchListings();
    res.fold(
      (l) => emit(PropertyState.applicationErrors(msg: l.msg)),
      (r) => emit(
        PropertyState.initial(listings: r),
      ),
    );

    emit(const PropertyState.loadingState(state: false));
  }
}
