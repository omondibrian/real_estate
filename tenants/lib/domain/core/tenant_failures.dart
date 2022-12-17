
import 'package:freezed_annotation/freezed_annotation.dart';
part 'tenant_failures.freezed.dart';

@freezed
class TenantFailures with _$TenantFailures {
   const factory TenantFailures.invalidCredentials({
    required String msg,
  }) = InvalidCredentials;
    const factory TenantFailures.internalServerError({
    required String msg,
  }) = InternalServerError;

   const factory TenantFailures.duplicateEmailAddress({
    required String msg,
  }) = DuplicateEmailAddress;

   const factory TenantFailures.storage({
    required String msg,
  }) = Storage;
}