import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:tenants/domain/property/entity/property_entity.dart';

part 'property_event.dart';
part 'property_state.dart';
part 'property_bloc.freezed.dart';

class PropertyBloc extends Bloc<PropertyEvent, PropertyState> {
  PropertyBloc() : super(_Initial()) {
    on<PropertyEvent>((event, emit) {
      // TODO: implement event handler
    });
  }
}
