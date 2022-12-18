part of 'property_bloc.dart';

@freezed
class PropertyEvent with _$PropertyEvent {
  const factory PropertyEvent.fetchListings() = FetchListings;
  const factory PropertyEvent.saveUnit({required UnitEntity unit}) = SaveUnit;
  const factory PropertyEvent.addRequest({
    required String body,
    required String senderId,
    required String type,
  }) = NewRequest;
  const factory PropertyEvent.search({required String query}) = SearchListings;
  const factory PropertyEvent.fetchSavedUnits() = FetchSavedUnits;
}
