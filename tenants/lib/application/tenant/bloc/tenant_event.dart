part of 'tenant_bloc.dart';

@freezed
class TenantEvent with _$TenantEvent {
  const factory TenantEvent.signIn(TenantCredentials credentials) = SignIn;
  const factory TenantEvent.signUp({
    required String name,
    required String email,
    required String phoneNumber,
    required String password,
    required String role,
  }) = SignUp;
  const factory TenantEvent.logout() = LogOut;
  const factory TenantEvent.fetchProfile() = FetchProfile;
  const factory TenantEvent.resetPassword(String email) = ResetPassword;
  const factory TenantEvent.verifyOtpToken(String otp) = VerifyOtpToken;
  const factory TenantEvent.updateProfile(Map<String,dynamic> updates) = UpdateProfile;
}
