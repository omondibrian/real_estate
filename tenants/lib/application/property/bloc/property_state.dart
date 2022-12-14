part of 'property_bloc.dart';

@freezed
class PropertyState with _$PropertyState {
  const factory PropertyState.initial({
    @Default([]) List<PropertyEntity> listings,
    @Default([]) List<UnitEntity> searchResults,
    @Default([]) List<UnitEntity> savedUnits,
    @Default("") String query,
  }) = _Initial;
  const factory PropertyState.loadingState({
    @Default(false) bool state,
  }) = LoadingState;
  const factory PropertyState.applicationErrors({
    @Default('') String msg,
  }) = ApplicationErrors;
}
