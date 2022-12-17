import 'package:freezed_annotation/freezed_annotation.dart';
part 'property_failure.freezed.dart';

@freezed
class PropertyFailure with _$PropertyFailure {
   const factory PropertyFailure.invalidCredentials({
    required String msg,
  }) = InvalidCredentials;
    const factory PropertyFailure.internalServerError({
    required String msg,
  }) = InternalServerError;

   const factory PropertyFailure.duplicateEmailAddress({
    required String msg,
  }) = DuplicateEmailAddress;

   const factory PropertyFailure.storage({
    required String msg,
  }) = Storage;
}