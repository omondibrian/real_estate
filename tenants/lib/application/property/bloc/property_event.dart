part of 'property_bloc.dart';

@freezed
class PropertyEvent with _$PropertyEvent {
  const factory PropertyEvent.fetchListings() = FetchListings;
}