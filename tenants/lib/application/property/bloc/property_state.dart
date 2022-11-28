part of 'property_bloc.dart';

@freezed
class PropertyState with _$PropertyState {
  const factory PropertyState.initial({
    @Default([]) List<PropertyEntity> listings,
  }) = _Initial;
}
