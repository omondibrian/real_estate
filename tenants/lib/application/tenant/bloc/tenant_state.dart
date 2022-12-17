part of 'tenant_bloc.dart';

@freezed
class TenantState with _$TenantState {
   const factory TenantState.initial({
    @Default(TenantEntity.initial())TenantEntity tenant,
  }) = _Initial;

  /// shows current tenant loading state in the bloc
  /// i.e indicates any active api requests
  factory TenantState.loadingInProgress({
    @Default(false) bool state,
  }) = _LoadingInProgress;

   const factory TenantState.applicationErrors({
    /// contains any exceptions in the bloc if any
    @Default('') String msg,
  }) = _ApplicationErrors;

   const factory TenantState.snackBarMsgs({
    /// contains any user messages  in the bloc to be displayed
    @Default('') String msg,
  }) = _SnackBarMsgs;
}
