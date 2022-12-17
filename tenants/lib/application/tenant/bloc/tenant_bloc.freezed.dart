// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'tenant_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$TenantEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(TenantCredentials credentials) signIn,
    required TResult Function(String name, String email, String phoneNumber,
            String password, String role)
        signUp,
    required TResult Function() logout,
    required TResult Function() fetchProfile,
    required TResult Function(String email) resetPassword,
    required TResult Function(String otp) verifyOtpToken,
    required TResult Function(Map<String, dynamic> updates) updateProfile,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(TenantCredentials credentials)? signIn,
    TResult? Function(String name, String email, String phoneNumber,
            String password, String role)?
        signUp,
    TResult? Function()? logout,
    TResult? Function()? fetchProfile,
    TResult? Function(String email)? resetPassword,
    TResult? Function(String otp)? verifyOtpToken,
    TResult? Function(Map<String, dynamic> updates)? updateProfile,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(TenantCredentials credentials)? signIn,
    TResult Function(String name, String email, String phoneNumber,
            String password, String role)?
        signUp,
    TResult Function()? logout,
    TResult Function()? fetchProfile,
    TResult Function(String email)? resetPassword,
    TResult Function(String otp)? verifyOtpToken,
    TResult Function(Map<String, dynamic> updates)? updateProfile,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SignIn value) signIn,
    required TResult Function(SignUp value) signUp,
    required TResult Function(LogOut value) logout,
    required TResult Function(FetchProfile value) fetchProfile,
    required TResult Function(ResetPassword value) resetPassword,
    required TResult Function(VerifyOtpToken value) verifyOtpToken,
    required TResult Function(UpdateProfile value) updateProfile,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(SignIn value)? signIn,
    TResult? Function(SignUp value)? signUp,
    TResult? Function(LogOut value)? logout,
    TResult? Function(FetchProfile value)? fetchProfile,
    TResult? Function(ResetPassword value)? resetPassword,
    TResult? Function(VerifyOtpToken value)? verifyOtpToken,
    TResult? Function(UpdateProfile value)? updateProfile,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SignIn value)? signIn,
    TResult Function(SignUp value)? signUp,
    TResult Function(LogOut value)? logout,
    TResult Function(FetchProfile value)? fetchProfile,
    TResult Function(ResetPassword value)? resetPassword,
    TResult Function(VerifyOtpToken value)? verifyOtpToken,
    TResult Function(UpdateProfile value)? updateProfile,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TenantEventCopyWith<$Res> {
  factory $TenantEventCopyWith(
          TenantEvent value, $Res Function(TenantEvent) then) =
      _$TenantEventCopyWithImpl<$Res, TenantEvent>;
}

/// @nodoc
class _$TenantEventCopyWithImpl<$Res, $Val extends TenantEvent>
    implements $TenantEventCopyWith<$Res> {
  _$TenantEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$SignInCopyWith<$Res> {
  factory _$$SignInCopyWith(_$SignIn value, $Res Function(_$SignIn) then) =
      __$$SignInCopyWithImpl<$Res>;
  @useResult
  $Res call({TenantCredentials credentials});
}

/// @nodoc
class __$$SignInCopyWithImpl<$Res>
    extends _$TenantEventCopyWithImpl<$Res, _$SignIn>
    implements _$$SignInCopyWith<$Res> {
  __$$SignInCopyWithImpl(_$SignIn _value, $Res Function(_$SignIn) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? credentials = null,
  }) {
    return _then(_$SignIn(
      null == credentials
          ? _value.credentials
          : credentials // ignore: cast_nullable_to_non_nullable
              as TenantCredentials,
    ));
  }
}

/// @nodoc

class _$SignIn with DiagnosticableTreeMixin implements SignIn {
  const _$SignIn(this.credentials);

  @override
  final TenantCredentials credentials;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'TenantEvent.signIn(credentials: $credentials)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'TenantEvent.signIn'))
      ..add(DiagnosticsProperty('credentials', credentials));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SignIn &&
            (identical(other.credentials, credentials) ||
                other.credentials == credentials));
  }

  @override
  int get hashCode => Object.hash(runtimeType, credentials);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SignInCopyWith<_$SignIn> get copyWith =>
      __$$SignInCopyWithImpl<_$SignIn>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(TenantCredentials credentials) signIn,
    required TResult Function(String name, String email, String phoneNumber,
            String password, String role)
        signUp,
    required TResult Function() logout,
    required TResult Function() fetchProfile,
    required TResult Function(String email) resetPassword,
    required TResult Function(String otp) verifyOtpToken,
    required TResult Function(Map<String, dynamic> updates) updateProfile,
  }) {
    return signIn(credentials);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(TenantCredentials credentials)? signIn,
    TResult? Function(String name, String email, String phoneNumber,
            String password, String role)?
        signUp,
    TResult? Function()? logout,
    TResult? Function()? fetchProfile,
    TResult? Function(String email)? resetPassword,
    TResult? Function(String otp)? verifyOtpToken,
    TResult? Function(Map<String, dynamic> updates)? updateProfile,
  }) {
    return signIn?.call(credentials);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(TenantCredentials credentials)? signIn,
    TResult Function(String name, String email, String phoneNumber,
            String password, String role)?
        signUp,
    TResult Function()? logout,
    TResult Function()? fetchProfile,
    TResult Function(String email)? resetPassword,
    TResult Function(String otp)? verifyOtpToken,
    TResult Function(Map<String, dynamic> updates)? updateProfile,
    required TResult orElse(),
  }) {
    if (signIn != null) {
      return signIn(credentials);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SignIn value) signIn,
    required TResult Function(SignUp value) signUp,
    required TResult Function(LogOut value) logout,
    required TResult Function(FetchProfile value) fetchProfile,
    required TResult Function(ResetPassword value) resetPassword,
    required TResult Function(VerifyOtpToken value) verifyOtpToken,
    required TResult Function(UpdateProfile value) updateProfile,
  }) {
    return signIn(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(SignIn value)? signIn,
    TResult? Function(SignUp value)? signUp,
    TResult? Function(LogOut value)? logout,
    TResult? Function(FetchProfile value)? fetchProfile,
    TResult? Function(ResetPassword value)? resetPassword,
    TResult? Function(VerifyOtpToken value)? verifyOtpToken,
    TResult? Function(UpdateProfile value)? updateProfile,
  }) {
    return signIn?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SignIn value)? signIn,
    TResult Function(SignUp value)? signUp,
    TResult Function(LogOut value)? logout,
    TResult Function(FetchProfile value)? fetchProfile,
    TResult Function(ResetPassword value)? resetPassword,
    TResult Function(VerifyOtpToken value)? verifyOtpToken,
    TResult Function(UpdateProfile value)? updateProfile,
    required TResult orElse(),
  }) {
    if (signIn != null) {
      return signIn(this);
    }
    return orElse();
  }
}

abstract class SignIn implements TenantEvent {
  const factory SignIn(final TenantCredentials credentials) = _$SignIn;

  TenantCredentials get credentials;
  @JsonKey(ignore: true)
  _$$SignInCopyWith<_$SignIn> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SignUpCopyWith<$Res> {
  factory _$$SignUpCopyWith(_$SignUp value, $Res Function(_$SignUp) then) =
      __$$SignUpCopyWithImpl<$Res>;
  @useResult
  $Res call(
      {String name,
      String email,
      String phoneNumber,
      String password,
      String role});
}

/// @nodoc
class __$$SignUpCopyWithImpl<$Res>
    extends _$TenantEventCopyWithImpl<$Res, _$SignUp>
    implements _$$SignUpCopyWith<$Res> {
  __$$SignUpCopyWithImpl(_$SignUp _value, $Res Function(_$SignUp) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? email = null,
    Object? phoneNumber = null,
    Object? password = null,
    Object? role = null,
  }) {
    return _then(_$SignUp(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      phoneNumber: null == phoneNumber
          ? _value.phoneNumber
          : phoneNumber // ignore: cast_nullable_to_non_nullable
              as String,
      password: null == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
      role: null == role
          ? _value.role
          : role // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$SignUp with DiagnosticableTreeMixin implements SignUp {
  const _$SignUp(
      {required this.name,
      required this.email,
      required this.phoneNumber,
      required this.password,
      required this.role});

  @override
  final String name;
  @override
  final String email;
  @override
  final String phoneNumber;
  @override
  final String password;
  @override
  final String role;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'TenantEvent.signUp(name: $name, email: $email, phoneNumber: $phoneNumber, password: $password, role: $role)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'TenantEvent.signUp'))
      ..add(DiagnosticsProperty('name', name))
      ..add(DiagnosticsProperty('email', email))
      ..add(DiagnosticsProperty('phoneNumber', phoneNumber))
      ..add(DiagnosticsProperty('password', password))
      ..add(DiagnosticsProperty('role', role));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SignUp &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.phoneNumber, phoneNumber) ||
                other.phoneNumber == phoneNumber) &&
            (identical(other.password, password) ||
                other.password == password) &&
            (identical(other.role, role) || other.role == role));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, name, email, phoneNumber, password, role);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SignUpCopyWith<_$SignUp> get copyWith =>
      __$$SignUpCopyWithImpl<_$SignUp>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(TenantCredentials credentials) signIn,
    required TResult Function(String name, String email, String phoneNumber,
            String password, String role)
        signUp,
    required TResult Function() logout,
    required TResult Function() fetchProfile,
    required TResult Function(String email) resetPassword,
    required TResult Function(String otp) verifyOtpToken,
    required TResult Function(Map<String, dynamic> updates) updateProfile,
  }) {
    return signUp(name, email, phoneNumber, password, role);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(TenantCredentials credentials)? signIn,
    TResult? Function(String name, String email, String phoneNumber,
            String password, String role)?
        signUp,
    TResult? Function()? logout,
    TResult? Function()? fetchProfile,
    TResult? Function(String email)? resetPassword,
    TResult? Function(String otp)? verifyOtpToken,
    TResult? Function(Map<String, dynamic> updates)? updateProfile,
  }) {
    return signUp?.call(name, email, phoneNumber, password, role);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(TenantCredentials credentials)? signIn,
    TResult Function(String name, String email, String phoneNumber,
            String password, String role)?
        signUp,
    TResult Function()? logout,
    TResult Function()? fetchProfile,
    TResult Function(String email)? resetPassword,
    TResult Function(String otp)? verifyOtpToken,
    TResult Function(Map<String, dynamic> updates)? updateProfile,
    required TResult orElse(),
  }) {
    if (signUp != null) {
      return signUp(name, email, phoneNumber, password, role);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SignIn value) signIn,
    required TResult Function(SignUp value) signUp,
    required TResult Function(LogOut value) logout,
    required TResult Function(FetchProfile value) fetchProfile,
    required TResult Function(ResetPassword value) resetPassword,
    required TResult Function(VerifyOtpToken value) verifyOtpToken,
    required TResult Function(UpdateProfile value) updateProfile,
  }) {
    return signUp(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(SignIn value)? signIn,
    TResult? Function(SignUp value)? signUp,
    TResult? Function(LogOut value)? logout,
    TResult? Function(FetchProfile value)? fetchProfile,
    TResult? Function(ResetPassword value)? resetPassword,
    TResult? Function(VerifyOtpToken value)? verifyOtpToken,
    TResult? Function(UpdateProfile value)? updateProfile,
  }) {
    return signUp?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SignIn value)? signIn,
    TResult Function(SignUp value)? signUp,
    TResult Function(LogOut value)? logout,
    TResult Function(FetchProfile value)? fetchProfile,
    TResult Function(ResetPassword value)? resetPassword,
    TResult Function(VerifyOtpToken value)? verifyOtpToken,
    TResult Function(UpdateProfile value)? updateProfile,
    required TResult orElse(),
  }) {
    if (signUp != null) {
      return signUp(this);
    }
    return orElse();
  }
}

abstract class SignUp implements TenantEvent {
  const factory SignUp(
      {required final String name,
      required final String email,
      required final String phoneNumber,
      required final String password,
      required final String role}) = _$SignUp;

  String get name;
  String get email;
  String get phoneNumber;
  String get password;
  String get role;
  @JsonKey(ignore: true)
  _$$SignUpCopyWith<_$SignUp> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$LogOutCopyWith<$Res> {
  factory _$$LogOutCopyWith(_$LogOut value, $Res Function(_$LogOut) then) =
      __$$LogOutCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LogOutCopyWithImpl<$Res>
    extends _$TenantEventCopyWithImpl<$Res, _$LogOut>
    implements _$$LogOutCopyWith<$Res> {
  __$$LogOutCopyWithImpl(_$LogOut _value, $Res Function(_$LogOut) _then)
      : super(_value, _then);
}

/// @nodoc

class _$LogOut with DiagnosticableTreeMixin implements LogOut {
  const _$LogOut();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'TenantEvent.logout()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(DiagnosticsProperty('type', 'TenantEvent.logout'));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$LogOut);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(TenantCredentials credentials) signIn,
    required TResult Function(String name, String email, String phoneNumber,
            String password, String role)
        signUp,
    required TResult Function() logout,
    required TResult Function() fetchProfile,
    required TResult Function(String email) resetPassword,
    required TResult Function(String otp) verifyOtpToken,
    required TResult Function(Map<String, dynamic> updates) updateProfile,
  }) {
    return logout();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(TenantCredentials credentials)? signIn,
    TResult? Function(String name, String email, String phoneNumber,
            String password, String role)?
        signUp,
    TResult? Function()? logout,
    TResult? Function()? fetchProfile,
    TResult? Function(String email)? resetPassword,
    TResult? Function(String otp)? verifyOtpToken,
    TResult? Function(Map<String, dynamic> updates)? updateProfile,
  }) {
    return logout?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(TenantCredentials credentials)? signIn,
    TResult Function(String name, String email, String phoneNumber,
            String password, String role)?
        signUp,
    TResult Function()? logout,
    TResult Function()? fetchProfile,
    TResult Function(String email)? resetPassword,
    TResult Function(String otp)? verifyOtpToken,
    TResult Function(Map<String, dynamic> updates)? updateProfile,
    required TResult orElse(),
  }) {
    if (logout != null) {
      return logout();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SignIn value) signIn,
    required TResult Function(SignUp value) signUp,
    required TResult Function(LogOut value) logout,
    required TResult Function(FetchProfile value) fetchProfile,
    required TResult Function(ResetPassword value) resetPassword,
    required TResult Function(VerifyOtpToken value) verifyOtpToken,
    required TResult Function(UpdateProfile value) updateProfile,
  }) {
    return logout(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(SignIn value)? signIn,
    TResult? Function(SignUp value)? signUp,
    TResult? Function(LogOut value)? logout,
    TResult? Function(FetchProfile value)? fetchProfile,
    TResult? Function(ResetPassword value)? resetPassword,
    TResult? Function(VerifyOtpToken value)? verifyOtpToken,
    TResult? Function(UpdateProfile value)? updateProfile,
  }) {
    return logout?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SignIn value)? signIn,
    TResult Function(SignUp value)? signUp,
    TResult Function(LogOut value)? logout,
    TResult Function(FetchProfile value)? fetchProfile,
    TResult Function(ResetPassword value)? resetPassword,
    TResult Function(VerifyOtpToken value)? verifyOtpToken,
    TResult Function(UpdateProfile value)? updateProfile,
    required TResult orElse(),
  }) {
    if (logout != null) {
      return logout(this);
    }
    return orElse();
  }
}

abstract class LogOut implements TenantEvent {
  const factory LogOut() = _$LogOut;
}

/// @nodoc
abstract class _$$FetchProfileCopyWith<$Res> {
  factory _$$FetchProfileCopyWith(
          _$FetchProfile value, $Res Function(_$FetchProfile) then) =
      __$$FetchProfileCopyWithImpl<$Res>;
}

/// @nodoc
class __$$FetchProfileCopyWithImpl<$Res>
    extends _$TenantEventCopyWithImpl<$Res, _$FetchProfile>
    implements _$$FetchProfileCopyWith<$Res> {
  __$$FetchProfileCopyWithImpl(
      _$FetchProfile _value, $Res Function(_$FetchProfile) _then)
      : super(_value, _then);
}

/// @nodoc

class _$FetchProfile with DiagnosticableTreeMixin implements FetchProfile {
  const _$FetchProfile();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'TenantEvent.fetchProfile()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(DiagnosticsProperty('type', 'TenantEvent.fetchProfile'));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$FetchProfile);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(TenantCredentials credentials) signIn,
    required TResult Function(String name, String email, String phoneNumber,
            String password, String role)
        signUp,
    required TResult Function() logout,
    required TResult Function() fetchProfile,
    required TResult Function(String email) resetPassword,
    required TResult Function(String otp) verifyOtpToken,
    required TResult Function(Map<String, dynamic> updates) updateProfile,
  }) {
    return fetchProfile();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(TenantCredentials credentials)? signIn,
    TResult? Function(String name, String email, String phoneNumber,
            String password, String role)?
        signUp,
    TResult? Function()? logout,
    TResult? Function()? fetchProfile,
    TResult? Function(String email)? resetPassword,
    TResult? Function(String otp)? verifyOtpToken,
    TResult? Function(Map<String, dynamic> updates)? updateProfile,
  }) {
    return fetchProfile?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(TenantCredentials credentials)? signIn,
    TResult Function(String name, String email, String phoneNumber,
            String password, String role)?
        signUp,
    TResult Function()? logout,
    TResult Function()? fetchProfile,
    TResult Function(String email)? resetPassword,
    TResult Function(String otp)? verifyOtpToken,
    TResult Function(Map<String, dynamic> updates)? updateProfile,
    required TResult orElse(),
  }) {
    if (fetchProfile != null) {
      return fetchProfile();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SignIn value) signIn,
    required TResult Function(SignUp value) signUp,
    required TResult Function(LogOut value) logout,
    required TResult Function(FetchProfile value) fetchProfile,
    required TResult Function(ResetPassword value) resetPassword,
    required TResult Function(VerifyOtpToken value) verifyOtpToken,
    required TResult Function(UpdateProfile value) updateProfile,
  }) {
    return fetchProfile(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(SignIn value)? signIn,
    TResult? Function(SignUp value)? signUp,
    TResult? Function(LogOut value)? logout,
    TResult? Function(FetchProfile value)? fetchProfile,
    TResult? Function(ResetPassword value)? resetPassword,
    TResult? Function(VerifyOtpToken value)? verifyOtpToken,
    TResult? Function(UpdateProfile value)? updateProfile,
  }) {
    return fetchProfile?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SignIn value)? signIn,
    TResult Function(SignUp value)? signUp,
    TResult Function(LogOut value)? logout,
    TResult Function(FetchProfile value)? fetchProfile,
    TResult Function(ResetPassword value)? resetPassword,
    TResult Function(VerifyOtpToken value)? verifyOtpToken,
    TResult Function(UpdateProfile value)? updateProfile,
    required TResult orElse(),
  }) {
    if (fetchProfile != null) {
      return fetchProfile(this);
    }
    return orElse();
  }
}

abstract class FetchProfile implements TenantEvent {
  const factory FetchProfile() = _$FetchProfile;
}

/// @nodoc
abstract class _$$ResetPasswordCopyWith<$Res> {
  factory _$$ResetPasswordCopyWith(
          _$ResetPassword value, $Res Function(_$ResetPassword) then) =
      __$$ResetPasswordCopyWithImpl<$Res>;
  @useResult
  $Res call({String email});
}

/// @nodoc
class __$$ResetPasswordCopyWithImpl<$Res>
    extends _$TenantEventCopyWithImpl<$Res, _$ResetPassword>
    implements _$$ResetPasswordCopyWith<$Res> {
  __$$ResetPasswordCopyWithImpl(
      _$ResetPassword _value, $Res Function(_$ResetPassword) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? email = null,
  }) {
    return _then(_$ResetPassword(
      null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$ResetPassword with DiagnosticableTreeMixin implements ResetPassword {
  const _$ResetPassword(this.email);

  @override
  final String email;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'TenantEvent.resetPassword(email: $email)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'TenantEvent.resetPassword'))
      ..add(DiagnosticsProperty('email', email));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ResetPassword &&
            (identical(other.email, email) || other.email == email));
  }

  @override
  int get hashCode => Object.hash(runtimeType, email);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ResetPasswordCopyWith<_$ResetPassword> get copyWith =>
      __$$ResetPasswordCopyWithImpl<_$ResetPassword>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(TenantCredentials credentials) signIn,
    required TResult Function(String name, String email, String phoneNumber,
            String password, String role)
        signUp,
    required TResult Function() logout,
    required TResult Function() fetchProfile,
    required TResult Function(String email) resetPassword,
    required TResult Function(String otp) verifyOtpToken,
    required TResult Function(Map<String, dynamic> updates) updateProfile,
  }) {
    return resetPassword(email);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(TenantCredentials credentials)? signIn,
    TResult? Function(String name, String email, String phoneNumber,
            String password, String role)?
        signUp,
    TResult? Function()? logout,
    TResult? Function()? fetchProfile,
    TResult? Function(String email)? resetPassword,
    TResult? Function(String otp)? verifyOtpToken,
    TResult? Function(Map<String, dynamic> updates)? updateProfile,
  }) {
    return resetPassword?.call(email);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(TenantCredentials credentials)? signIn,
    TResult Function(String name, String email, String phoneNumber,
            String password, String role)?
        signUp,
    TResult Function()? logout,
    TResult Function()? fetchProfile,
    TResult Function(String email)? resetPassword,
    TResult Function(String otp)? verifyOtpToken,
    TResult Function(Map<String, dynamic> updates)? updateProfile,
    required TResult orElse(),
  }) {
    if (resetPassword != null) {
      return resetPassword(email);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SignIn value) signIn,
    required TResult Function(SignUp value) signUp,
    required TResult Function(LogOut value) logout,
    required TResult Function(FetchProfile value) fetchProfile,
    required TResult Function(ResetPassword value) resetPassword,
    required TResult Function(VerifyOtpToken value) verifyOtpToken,
    required TResult Function(UpdateProfile value) updateProfile,
  }) {
    return resetPassword(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(SignIn value)? signIn,
    TResult? Function(SignUp value)? signUp,
    TResult? Function(LogOut value)? logout,
    TResult? Function(FetchProfile value)? fetchProfile,
    TResult? Function(ResetPassword value)? resetPassword,
    TResult? Function(VerifyOtpToken value)? verifyOtpToken,
    TResult? Function(UpdateProfile value)? updateProfile,
  }) {
    return resetPassword?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SignIn value)? signIn,
    TResult Function(SignUp value)? signUp,
    TResult Function(LogOut value)? logout,
    TResult Function(FetchProfile value)? fetchProfile,
    TResult Function(ResetPassword value)? resetPassword,
    TResult Function(VerifyOtpToken value)? verifyOtpToken,
    TResult Function(UpdateProfile value)? updateProfile,
    required TResult orElse(),
  }) {
    if (resetPassword != null) {
      return resetPassword(this);
    }
    return orElse();
  }
}

abstract class ResetPassword implements TenantEvent {
  const factory ResetPassword(final String email) = _$ResetPassword;

  String get email;
  @JsonKey(ignore: true)
  _$$ResetPasswordCopyWith<_$ResetPassword> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$VerifyOtpTokenCopyWith<$Res> {
  factory _$$VerifyOtpTokenCopyWith(
          _$VerifyOtpToken value, $Res Function(_$VerifyOtpToken) then) =
      __$$VerifyOtpTokenCopyWithImpl<$Res>;
  @useResult
  $Res call({String otp});
}

/// @nodoc
class __$$VerifyOtpTokenCopyWithImpl<$Res>
    extends _$TenantEventCopyWithImpl<$Res, _$VerifyOtpToken>
    implements _$$VerifyOtpTokenCopyWith<$Res> {
  __$$VerifyOtpTokenCopyWithImpl(
      _$VerifyOtpToken _value, $Res Function(_$VerifyOtpToken) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? otp = null,
  }) {
    return _then(_$VerifyOtpToken(
      null == otp
          ? _value.otp
          : otp // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$VerifyOtpToken with DiagnosticableTreeMixin implements VerifyOtpToken {
  const _$VerifyOtpToken(this.otp);

  @override
  final String otp;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'TenantEvent.verifyOtpToken(otp: $otp)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'TenantEvent.verifyOtpToken'))
      ..add(DiagnosticsProperty('otp', otp));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$VerifyOtpToken &&
            (identical(other.otp, otp) || other.otp == otp));
  }

  @override
  int get hashCode => Object.hash(runtimeType, otp);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$VerifyOtpTokenCopyWith<_$VerifyOtpToken> get copyWith =>
      __$$VerifyOtpTokenCopyWithImpl<_$VerifyOtpToken>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(TenantCredentials credentials) signIn,
    required TResult Function(String name, String email, String phoneNumber,
            String password, String role)
        signUp,
    required TResult Function() logout,
    required TResult Function() fetchProfile,
    required TResult Function(String email) resetPassword,
    required TResult Function(String otp) verifyOtpToken,
    required TResult Function(Map<String, dynamic> updates) updateProfile,
  }) {
    return verifyOtpToken(otp);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(TenantCredentials credentials)? signIn,
    TResult? Function(String name, String email, String phoneNumber,
            String password, String role)?
        signUp,
    TResult? Function()? logout,
    TResult? Function()? fetchProfile,
    TResult? Function(String email)? resetPassword,
    TResult? Function(String otp)? verifyOtpToken,
    TResult? Function(Map<String, dynamic> updates)? updateProfile,
  }) {
    return verifyOtpToken?.call(otp);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(TenantCredentials credentials)? signIn,
    TResult Function(String name, String email, String phoneNumber,
            String password, String role)?
        signUp,
    TResult Function()? logout,
    TResult Function()? fetchProfile,
    TResult Function(String email)? resetPassword,
    TResult Function(String otp)? verifyOtpToken,
    TResult Function(Map<String, dynamic> updates)? updateProfile,
    required TResult orElse(),
  }) {
    if (verifyOtpToken != null) {
      return verifyOtpToken(otp);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SignIn value) signIn,
    required TResult Function(SignUp value) signUp,
    required TResult Function(LogOut value) logout,
    required TResult Function(FetchProfile value) fetchProfile,
    required TResult Function(ResetPassword value) resetPassword,
    required TResult Function(VerifyOtpToken value) verifyOtpToken,
    required TResult Function(UpdateProfile value) updateProfile,
  }) {
    return verifyOtpToken(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(SignIn value)? signIn,
    TResult? Function(SignUp value)? signUp,
    TResult? Function(LogOut value)? logout,
    TResult? Function(FetchProfile value)? fetchProfile,
    TResult? Function(ResetPassword value)? resetPassword,
    TResult? Function(VerifyOtpToken value)? verifyOtpToken,
    TResult? Function(UpdateProfile value)? updateProfile,
  }) {
    return verifyOtpToken?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SignIn value)? signIn,
    TResult Function(SignUp value)? signUp,
    TResult Function(LogOut value)? logout,
    TResult Function(FetchProfile value)? fetchProfile,
    TResult Function(ResetPassword value)? resetPassword,
    TResult Function(VerifyOtpToken value)? verifyOtpToken,
    TResult Function(UpdateProfile value)? updateProfile,
    required TResult orElse(),
  }) {
    if (verifyOtpToken != null) {
      return verifyOtpToken(this);
    }
    return orElse();
  }
}

abstract class VerifyOtpToken implements TenantEvent {
  const factory VerifyOtpToken(final String otp) = _$VerifyOtpToken;

  String get otp;
  @JsonKey(ignore: true)
  _$$VerifyOtpTokenCopyWith<_$VerifyOtpToken> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$UpdateProfileCopyWith<$Res> {
  factory _$$UpdateProfileCopyWith(
          _$UpdateProfile value, $Res Function(_$UpdateProfile) then) =
      __$$UpdateProfileCopyWithImpl<$Res>;
  @useResult
  $Res call({Map<String, dynamic> updates});
}

/// @nodoc
class __$$UpdateProfileCopyWithImpl<$Res>
    extends _$TenantEventCopyWithImpl<$Res, _$UpdateProfile>
    implements _$$UpdateProfileCopyWith<$Res> {
  __$$UpdateProfileCopyWithImpl(
      _$UpdateProfile _value, $Res Function(_$UpdateProfile) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? updates = null,
  }) {
    return _then(_$UpdateProfile(
      null == updates
          ? _value._updates
          : updates // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>,
    ));
  }
}

/// @nodoc

class _$UpdateProfile with DiagnosticableTreeMixin implements UpdateProfile {
  const _$UpdateProfile(final Map<String, dynamic> updates)
      : _updates = updates;

  final Map<String, dynamic> _updates;
  @override
  Map<String, dynamic> get updates {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_updates);
  }

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'TenantEvent.updateProfile(updates: $updates)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'TenantEvent.updateProfile'))
      ..add(DiagnosticsProperty('updates', updates));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UpdateProfile &&
            const DeepCollectionEquality().equals(other._updates, _updates));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_updates));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UpdateProfileCopyWith<_$UpdateProfile> get copyWith =>
      __$$UpdateProfileCopyWithImpl<_$UpdateProfile>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(TenantCredentials credentials) signIn,
    required TResult Function(String name, String email, String phoneNumber,
            String password, String role)
        signUp,
    required TResult Function() logout,
    required TResult Function() fetchProfile,
    required TResult Function(String email) resetPassword,
    required TResult Function(String otp) verifyOtpToken,
    required TResult Function(Map<String, dynamic> updates) updateProfile,
  }) {
    return updateProfile(updates);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(TenantCredentials credentials)? signIn,
    TResult? Function(String name, String email, String phoneNumber,
            String password, String role)?
        signUp,
    TResult? Function()? logout,
    TResult? Function()? fetchProfile,
    TResult? Function(String email)? resetPassword,
    TResult? Function(String otp)? verifyOtpToken,
    TResult? Function(Map<String, dynamic> updates)? updateProfile,
  }) {
    return updateProfile?.call(updates);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(TenantCredentials credentials)? signIn,
    TResult Function(String name, String email, String phoneNumber,
            String password, String role)?
        signUp,
    TResult Function()? logout,
    TResult Function()? fetchProfile,
    TResult Function(String email)? resetPassword,
    TResult Function(String otp)? verifyOtpToken,
    TResult Function(Map<String, dynamic> updates)? updateProfile,
    required TResult orElse(),
  }) {
    if (updateProfile != null) {
      return updateProfile(updates);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SignIn value) signIn,
    required TResult Function(SignUp value) signUp,
    required TResult Function(LogOut value) logout,
    required TResult Function(FetchProfile value) fetchProfile,
    required TResult Function(ResetPassword value) resetPassword,
    required TResult Function(VerifyOtpToken value) verifyOtpToken,
    required TResult Function(UpdateProfile value) updateProfile,
  }) {
    return updateProfile(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(SignIn value)? signIn,
    TResult? Function(SignUp value)? signUp,
    TResult? Function(LogOut value)? logout,
    TResult? Function(FetchProfile value)? fetchProfile,
    TResult? Function(ResetPassword value)? resetPassword,
    TResult? Function(VerifyOtpToken value)? verifyOtpToken,
    TResult? Function(UpdateProfile value)? updateProfile,
  }) {
    return updateProfile?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SignIn value)? signIn,
    TResult Function(SignUp value)? signUp,
    TResult Function(LogOut value)? logout,
    TResult Function(FetchProfile value)? fetchProfile,
    TResult Function(ResetPassword value)? resetPassword,
    TResult Function(VerifyOtpToken value)? verifyOtpToken,
    TResult Function(UpdateProfile value)? updateProfile,
    required TResult orElse(),
  }) {
    if (updateProfile != null) {
      return updateProfile(this);
    }
    return orElse();
  }
}

abstract class UpdateProfile implements TenantEvent {
  const factory UpdateProfile(final Map<String, dynamic> updates) =
      _$UpdateProfile;

  Map<String, dynamic> get updates;
  @JsonKey(ignore: true)
  _$$UpdateProfileCopyWith<_$UpdateProfile> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$TenantState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(TenantEntity tenant) initial,
    required TResult Function(bool state) loadingInProgress,
    required TResult Function(String msg) applicationErrors,
    required TResult Function(String msg) snackBarMsgs,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(TenantEntity tenant)? initial,
    TResult? Function(bool state)? loadingInProgress,
    TResult? Function(String msg)? applicationErrors,
    TResult? Function(String msg)? snackBarMsgs,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(TenantEntity tenant)? initial,
    TResult Function(bool state)? loadingInProgress,
    TResult Function(String msg)? applicationErrors,
    TResult Function(String msg)? snackBarMsgs,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_LoadingInProgress value) loadingInProgress,
    required TResult Function(_ApplicationErrors value) applicationErrors,
    required TResult Function(_SnackBarMsgs value) snackBarMsgs,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_LoadingInProgress value)? loadingInProgress,
    TResult? Function(_ApplicationErrors value)? applicationErrors,
    TResult? Function(_SnackBarMsgs value)? snackBarMsgs,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_LoadingInProgress value)? loadingInProgress,
    TResult Function(_ApplicationErrors value)? applicationErrors,
    TResult Function(_SnackBarMsgs value)? snackBarMsgs,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TenantStateCopyWith<$Res> {
  factory $TenantStateCopyWith(
          TenantState value, $Res Function(TenantState) then) =
      _$TenantStateCopyWithImpl<$Res, TenantState>;
}

/// @nodoc
class _$TenantStateCopyWithImpl<$Res, $Val extends TenantState>
    implements $TenantStateCopyWith<$Res> {
  _$TenantStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_InitialCopyWith<$Res> {
  factory _$$_InitialCopyWith(
          _$_Initial value, $Res Function(_$_Initial) then) =
      __$$_InitialCopyWithImpl<$Res>;
  @useResult
  $Res call({TenantEntity tenant});
}

/// @nodoc
class __$$_InitialCopyWithImpl<$Res>
    extends _$TenantStateCopyWithImpl<$Res, _$_Initial>
    implements _$$_InitialCopyWith<$Res> {
  __$$_InitialCopyWithImpl(_$_Initial _value, $Res Function(_$_Initial) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? tenant = null,
  }) {
    return _then(_$_Initial(
      tenant: null == tenant
          ? _value.tenant
          : tenant // ignore: cast_nullable_to_non_nullable
              as TenantEntity,
    ));
  }
}

/// @nodoc

class _$_Initial with DiagnosticableTreeMixin implements _Initial {
  const _$_Initial({this.tenant = const TenantEntity.initial()});

  @override
  @JsonKey()
  final TenantEntity tenant;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'TenantState.initial(tenant: $tenant)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'TenantState.initial'))
      ..add(DiagnosticsProperty('tenant', tenant));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Initial &&
            (identical(other.tenant, tenant) || other.tenant == tenant));
  }

  @override
  int get hashCode => Object.hash(runtimeType, tenant);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_InitialCopyWith<_$_Initial> get copyWith =>
      __$$_InitialCopyWithImpl<_$_Initial>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(TenantEntity tenant) initial,
    required TResult Function(bool state) loadingInProgress,
    required TResult Function(String msg) applicationErrors,
    required TResult Function(String msg) snackBarMsgs,
  }) {
    return initial(tenant);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(TenantEntity tenant)? initial,
    TResult? Function(bool state)? loadingInProgress,
    TResult? Function(String msg)? applicationErrors,
    TResult? Function(String msg)? snackBarMsgs,
  }) {
    return initial?.call(tenant);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(TenantEntity tenant)? initial,
    TResult Function(bool state)? loadingInProgress,
    TResult Function(String msg)? applicationErrors,
    TResult Function(String msg)? snackBarMsgs,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(tenant);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_LoadingInProgress value) loadingInProgress,
    required TResult Function(_ApplicationErrors value) applicationErrors,
    required TResult Function(_SnackBarMsgs value) snackBarMsgs,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_LoadingInProgress value)? loadingInProgress,
    TResult? Function(_ApplicationErrors value)? applicationErrors,
    TResult? Function(_SnackBarMsgs value)? snackBarMsgs,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_LoadingInProgress value)? loadingInProgress,
    TResult Function(_ApplicationErrors value)? applicationErrors,
    TResult Function(_SnackBarMsgs value)? snackBarMsgs,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements TenantState {
  const factory _Initial({final TenantEntity tenant}) = _$_Initial;

  TenantEntity get tenant;
  @JsonKey(ignore: true)
  _$$_InitialCopyWith<_$_Initial> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_LoadingInProgressCopyWith<$Res> {
  factory _$$_LoadingInProgressCopyWith(_$_LoadingInProgress value,
          $Res Function(_$_LoadingInProgress) then) =
      __$$_LoadingInProgressCopyWithImpl<$Res>;
  @useResult
  $Res call({bool state});
}

/// @nodoc
class __$$_LoadingInProgressCopyWithImpl<$Res>
    extends _$TenantStateCopyWithImpl<$Res, _$_LoadingInProgress>
    implements _$$_LoadingInProgressCopyWith<$Res> {
  __$$_LoadingInProgressCopyWithImpl(
      _$_LoadingInProgress _value, $Res Function(_$_LoadingInProgress) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? state = null,
  }) {
    return _then(_$_LoadingInProgress(
      state: null == state
          ? _value.state
          : state // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$_LoadingInProgress
    with DiagnosticableTreeMixin
    implements _LoadingInProgress {
  _$_LoadingInProgress({this.state = false});

  @override
  @JsonKey()
  final bool state;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'TenantState.loadingInProgress(state: $state)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'TenantState.loadingInProgress'))
      ..add(DiagnosticsProperty('state', state));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_LoadingInProgress &&
            (identical(other.state, state) || other.state == state));
  }

  @override
  int get hashCode => Object.hash(runtimeType, state);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_LoadingInProgressCopyWith<_$_LoadingInProgress> get copyWith =>
      __$$_LoadingInProgressCopyWithImpl<_$_LoadingInProgress>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(TenantEntity tenant) initial,
    required TResult Function(bool state) loadingInProgress,
    required TResult Function(String msg) applicationErrors,
    required TResult Function(String msg) snackBarMsgs,
  }) {
    return loadingInProgress(state);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(TenantEntity tenant)? initial,
    TResult? Function(bool state)? loadingInProgress,
    TResult? Function(String msg)? applicationErrors,
    TResult? Function(String msg)? snackBarMsgs,
  }) {
    return loadingInProgress?.call(state);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(TenantEntity tenant)? initial,
    TResult Function(bool state)? loadingInProgress,
    TResult Function(String msg)? applicationErrors,
    TResult Function(String msg)? snackBarMsgs,
    required TResult orElse(),
  }) {
    if (loadingInProgress != null) {
      return loadingInProgress(state);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_LoadingInProgress value) loadingInProgress,
    required TResult Function(_ApplicationErrors value) applicationErrors,
    required TResult Function(_SnackBarMsgs value) snackBarMsgs,
  }) {
    return loadingInProgress(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_LoadingInProgress value)? loadingInProgress,
    TResult? Function(_ApplicationErrors value)? applicationErrors,
    TResult? Function(_SnackBarMsgs value)? snackBarMsgs,
  }) {
    return loadingInProgress?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_LoadingInProgress value)? loadingInProgress,
    TResult Function(_ApplicationErrors value)? applicationErrors,
    TResult Function(_SnackBarMsgs value)? snackBarMsgs,
    required TResult orElse(),
  }) {
    if (loadingInProgress != null) {
      return loadingInProgress(this);
    }
    return orElse();
  }
}

abstract class _LoadingInProgress implements TenantState {
  factory _LoadingInProgress({final bool state}) = _$_LoadingInProgress;

  bool get state;
  @JsonKey(ignore: true)
  _$$_LoadingInProgressCopyWith<_$_LoadingInProgress> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_ApplicationErrorsCopyWith<$Res> {
  factory _$$_ApplicationErrorsCopyWith(_$_ApplicationErrors value,
          $Res Function(_$_ApplicationErrors) then) =
      __$$_ApplicationErrorsCopyWithImpl<$Res>;
  @useResult
  $Res call({String msg});
}

/// @nodoc
class __$$_ApplicationErrorsCopyWithImpl<$Res>
    extends _$TenantStateCopyWithImpl<$Res, _$_ApplicationErrors>
    implements _$$_ApplicationErrorsCopyWith<$Res> {
  __$$_ApplicationErrorsCopyWithImpl(
      _$_ApplicationErrors _value, $Res Function(_$_ApplicationErrors) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? msg = null,
  }) {
    return _then(_$_ApplicationErrors(
      msg: null == msg
          ? _value.msg
          : msg // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_ApplicationErrors
    with DiagnosticableTreeMixin
    implements _ApplicationErrors {
  const _$_ApplicationErrors({this.msg = ''});

  /// contains any exceptions in the bloc if any
  @override
  @JsonKey()
  final String msg;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'TenantState.applicationErrors(msg: $msg)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'TenantState.applicationErrors'))
      ..add(DiagnosticsProperty('msg', msg));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ApplicationErrors &&
            (identical(other.msg, msg) || other.msg == msg));
  }

  @override
  int get hashCode => Object.hash(runtimeType, msg);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ApplicationErrorsCopyWith<_$_ApplicationErrors> get copyWith =>
      __$$_ApplicationErrorsCopyWithImpl<_$_ApplicationErrors>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(TenantEntity tenant) initial,
    required TResult Function(bool state) loadingInProgress,
    required TResult Function(String msg) applicationErrors,
    required TResult Function(String msg) snackBarMsgs,
  }) {
    return applicationErrors(msg);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(TenantEntity tenant)? initial,
    TResult? Function(bool state)? loadingInProgress,
    TResult? Function(String msg)? applicationErrors,
    TResult? Function(String msg)? snackBarMsgs,
  }) {
    return applicationErrors?.call(msg);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(TenantEntity tenant)? initial,
    TResult Function(bool state)? loadingInProgress,
    TResult Function(String msg)? applicationErrors,
    TResult Function(String msg)? snackBarMsgs,
    required TResult orElse(),
  }) {
    if (applicationErrors != null) {
      return applicationErrors(msg);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_LoadingInProgress value) loadingInProgress,
    required TResult Function(_ApplicationErrors value) applicationErrors,
    required TResult Function(_SnackBarMsgs value) snackBarMsgs,
  }) {
    return applicationErrors(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_LoadingInProgress value)? loadingInProgress,
    TResult? Function(_ApplicationErrors value)? applicationErrors,
    TResult? Function(_SnackBarMsgs value)? snackBarMsgs,
  }) {
    return applicationErrors?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_LoadingInProgress value)? loadingInProgress,
    TResult Function(_ApplicationErrors value)? applicationErrors,
    TResult Function(_SnackBarMsgs value)? snackBarMsgs,
    required TResult orElse(),
  }) {
    if (applicationErrors != null) {
      return applicationErrors(this);
    }
    return orElse();
  }
}

abstract class _ApplicationErrors implements TenantState {
  const factory _ApplicationErrors({final String msg}) = _$_ApplicationErrors;

  /// contains any exceptions in the bloc if any
  String get msg;
  @JsonKey(ignore: true)
  _$$_ApplicationErrorsCopyWith<_$_ApplicationErrors> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_SnackBarMsgsCopyWith<$Res> {
  factory _$$_SnackBarMsgsCopyWith(
          _$_SnackBarMsgs value, $Res Function(_$_SnackBarMsgs) then) =
      __$$_SnackBarMsgsCopyWithImpl<$Res>;
  @useResult
  $Res call({String msg});
}

/// @nodoc
class __$$_SnackBarMsgsCopyWithImpl<$Res>
    extends _$TenantStateCopyWithImpl<$Res, _$_SnackBarMsgs>
    implements _$$_SnackBarMsgsCopyWith<$Res> {
  __$$_SnackBarMsgsCopyWithImpl(
      _$_SnackBarMsgs _value, $Res Function(_$_SnackBarMsgs) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? msg = null,
  }) {
    return _then(_$_SnackBarMsgs(
      msg: null == msg
          ? _value.msg
          : msg // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_SnackBarMsgs with DiagnosticableTreeMixin implements _SnackBarMsgs {
  const _$_SnackBarMsgs({this.msg = ''});

  /// contains any user messages  in the bloc to be displayed
  @override
  @JsonKey()
  final String msg;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'TenantState.snackBarMsgs(msg: $msg)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'TenantState.snackBarMsgs'))
      ..add(DiagnosticsProperty('msg', msg));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_SnackBarMsgs &&
            (identical(other.msg, msg) || other.msg == msg));
  }

  @override
  int get hashCode => Object.hash(runtimeType, msg);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_SnackBarMsgsCopyWith<_$_SnackBarMsgs> get copyWith =>
      __$$_SnackBarMsgsCopyWithImpl<_$_SnackBarMsgs>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(TenantEntity tenant) initial,
    required TResult Function(bool state) loadingInProgress,
    required TResult Function(String msg) applicationErrors,
    required TResult Function(String msg) snackBarMsgs,
  }) {
    return snackBarMsgs(msg);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(TenantEntity tenant)? initial,
    TResult? Function(bool state)? loadingInProgress,
    TResult? Function(String msg)? applicationErrors,
    TResult? Function(String msg)? snackBarMsgs,
  }) {
    return snackBarMsgs?.call(msg);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(TenantEntity tenant)? initial,
    TResult Function(bool state)? loadingInProgress,
    TResult Function(String msg)? applicationErrors,
    TResult Function(String msg)? snackBarMsgs,
    required TResult orElse(),
  }) {
    if (snackBarMsgs != null) {
      return snackBarMsgs(msg);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_LoadingInProgress value) loadingInProgress,
    required TResult Function(_ApplicationErrors value) applicationErrors,
    required TResult Function(_SnackBarMsgs value) snackBarMsgs,
  }) {
    return snackBarMsgs(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_LoadingInProgress value)? loadingInProgress,
    TResult? Function(_ApplicationErrors value)? applicationErrors,
    TResult? Function(_SnackBarMsgs value)? snackBarMsgs,
  }) {
    return snackBarMsgs?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_LoadingInProgress value)? loadingInProgress,
    TResult Function(_ApplicationErrors value)? applicationErrors,
    TResult Function(_SnackBarMsgs value)? snackBarMsgs,
    required TResult orElse(),
  }) {
    if (snackBarMsgs != null) {
      return snackBarMsgs(this);
    }
    return orElse();
  }
}

abstract class _SnackBarMsgs implements TenantState {
  const factory _SnackBarMsgs({final String msg}) = _$_SnackBarMsgs;

  /// contains any user messages  in the bloc to be displayed
  String get msg;
  @JsonKey(ignore: true)
  _$$_SnackBarMsgsCopyWith<_$_SnackBarMsgs> get copyWith =>
      throw _privateConstructorUsedError;
}
