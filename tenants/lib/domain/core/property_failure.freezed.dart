// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'property_failure.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$PropertyFailure {
  String get msg => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String msg) invalidCredentials,
    required TResult Function(String msg) internalServerError,
    required TResult Function(String msg) duplicateEmailAddress,
    required TResult Function(String msg) storage,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String msg)? invalidCredentials,
    TResult? Function(String msg)? internalServerError,
    TResult? Function(String msg)? duplicateEmailAddress,
    TResult? Function(String msg)? storage,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String msg)? invalidCredentials,
    TResult Function(String msg)? internalServerError,
    TResult Function(String msg)? duplicateEmailAddress,
    TResult Function(String msg)? storage,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InvalidCredentials value) invalidCredentials,
    required TResult Function(InternalServerError value) internalServerError,
    required TResult Function(DuplicateEmailAddress value)
        duplicateEmailAddress,
    required TResult Function(Storage value) storage,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(InvalidCredentials value)? invalidCredentials,
    TResult? Function(InternalServerError value)? internalServerError,
    TResult? Function(DuplicateEmailAddress value)? duplicateEmailAddress,
    TResult? Function(Storage value)? storage,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InvalidCredentials value)? invalidCredentials,
    TResult Function(InternalServerError value)? internalServerError,
    TResult Function(DuplicateEmailAddress value)? duplicateEmailAddress,
    TResult Function(Storage value)? storage,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $PropertyFailureCopyWith<PropertyFailure> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PropertyFailureCopyWith<$Res> {
  factory $PropertyFailureCopyWith(
          PropertyFailure value, $Res Function(PropertyFailure) then) =
      _$PropertyFailureCopyWithImpl<$Res, PropertyFailure>;
  @useResult
  $Res call({String msg});
}

/// @nodoc
class _$PropertyFailureCopyWithImpl<$Res, $Val extends PropertyFailure>
    implements $PropertyFailureCopyWith<$Res> {
  _$PropertyFailureCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? msg = null,
  }) {
    return _then(_value.copyWith(
      msg: null == msg
          ? _value.msg
          : msg // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$InvalidCredentialsCopyWith<$Res>
    implements $PropertyFailureCopyWith<$Res> {
  factory _$$InvalidCredentialsCopyWith(_$InvalidCredentials value,
          $Res Function(_$InvalidCredentials) then) =
      __$$InvalidCredentialsCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String msg});
}

/// @nodoc
class __$$InvalidCredentialsCopyWithImpl<$Res>
    extends _$PropertyFailureCopyWithImpl<$Res, _$InvalidCredentials>
    implements _$$InvalidCredentialsCopyWith<$Res> {
  __$$InvalidCredentialsCopyWithImpl(
      _$InvalidCredentials _value, $Res Function(_$InvalidCredentials) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? msg = null,
  }) {
    return _then(_$InvalidCredentials(
      msg: null == msg
          ? _value.msg
          : msg // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$InvalidCredentials implements InvalidCredentials {
  const _$InvalidCredentials({required this.msg});

  @override
  final String msg;

  @override
  String toString() {
    return 'PropertyFailure.invalidCredentials(msg: $msg)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$InvalidCredentials &&
            (identical(other.msg, msg) || other.msg == msg));
  }

  @override
  int get hashCode => Object.hash(runtimeType, msg);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$InvalidCredentialsCopyWith<_$InvalidCredentials> get copyWith =>
      __$$InvalidCredentialsCopyWithImpl<_$InvalidCredentials>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String msg) invalidCredentials,
    required TResult Function(String msg) internalServerError,
    required TResult Function(String msg) duplicateEmailAddress,
    required TResult Function(String msg) storage,
  }) {
    return invalidCredentials(msg);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String msg)? invalidCredentials,
    TResult? Function(String msg)? internalServerError,
    TResult? Function(String msg)? duplicateEmailAddress,
    TResult? Function(String msg)? storage,
  }) {
    return invalidCredentials?.call(msg);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String msg)? invalidCredentials,
    TResult Function(String msg)? internalServerError,
    TResult Function(String msg)? duplicateEmailAddress,
    TResult Function(String msg)? storage,
    required TResult orElse(),
  }) {
    if (invalidCredentials != null) {
      return invalidCredentials(msg);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InvalidCredentials value) invalidCredentials,
    required TResult Function(InternalServerError value) internalServerError,
    required TResult Function(DuplicateEmailAddress value)
        duplicateEmailAddress,
    required TResult Function(Storage value) storage,
  }) {
    return invalidCredentials(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(InvalidCredentials value)? invalidCredentials,
    TResult? Function(InternalServerError value)? internalServerError,
    TResult? Function(DuplicateEmailAddress value)? duplicateEmailAddress,
    TResult? Function(Storage value)? storage,
  }) {
    return invalidCredentials?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InvalidCredentials value)? invalidCredentials,
    TResult Function(InternalServerError value)? internalServerError,
    TResult Function(DuplicateEmailAddress value)? duplicateEmailAddress,
    TResult Function(Storage value)? storage,
    required TResult orElse(),
  }) {
    if (invalidCredentials != null) {
      return invalidCredentials(this);
    }
    return orElse();
  }
}

abstract class InvalidCredentials implements PropertyFailure {
  const factory InvalidCredentials({required final String msg}) =
      _$InvalidCredentials;

  @override
  String get msg;
  @override
  @JsonKey(ignore: true)
  _$$InvalidCredentialsCopyWith<_$InvalidCredentials> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$InternalServerErrorCopyWith<$Res>
    implements $PropertyFailureCopyWith<$Res> {
  factory _$$InternalServerErrorCopyWith(_$InternalServerError value,
          $Res Function(_$InternalServerError) then) =
      __$$InternalServerErrorCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String msg});
}

/// @nodoc
class __$$InternalServerErrorCopyWithImpl<$Res>
    extends _$PropertyFailureCopyWithImpl<$Res, _$InternalServerError>
    implements _$$InternalServerErrorCopyWith<$Res> {
  __$$InternalServerErrorCopyWithImpl(
      _$InternalServerError _value, $Res Function(_$InternalServerError) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? msg = null,
  }) {
    return _then(_$InternalServerError(
      msg: null == msg
          ? _value.msg
          : msg // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$InternalServerError implements InternalServerError {
  const _$InternalServerError({required this.msg});

  @override
  final String msg;

  @override
  String toString() {
    return 'PropertyFailure.internalServerError(msg: $msg)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$InternalServerError &&
            (identical(other.msg, msg) || other.msg == msg));
  }

  @override
  int get hashCode => Object.hash(runtimeType, msg);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$InternalServerErrorCopyWith<_$InternalServerError> get copyWith =>
      __$$InternalServerErrorCopyWithImpl<_$InternalServerError>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String msg) invalidCredentials,
    required TResult Function(String msg) internalServerError,
    required TResult Function(String msg) duplicateEmailAddress,
    required TResult Function(String msg) storage,
  }) {
    return internalServerError(msg);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String msg)? invalidCredentials,
    TResult? Function(String msg)? internalServerError,
    TResult? Function(String msg)? duplicateEmailAddress,
    TResult? Function(String msg)? storage,
  }) {
    return internalServerError?.call(msg);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String msg)? invalidCredentials,
    TResult Function(String msg)? internalServerError,
    TResult Function(String msg)? duplicateEmailAddress,
    TResult Function(String msg)? storage,
    required TResult orElse(),
  }) {
    if (internalServerError != null) {
      return internalServerError(msg);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InvalidCredentials value) invalidCredentials,
    required TResult Function(InternalServerError value) internalServerError,
    required TResult Function(DuplicateEmailAddress value)
        duplicateEmailAddress,
    required TResult Function(Storage value) storage,
  }) {
    return internalServerError(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(InvalidCredentials value)? invalidCredentials,
    TResult? Function(InternalServerError value)? internalServerError,
    TResult? Function(DuplicateEmailAddress value)? duplicateEmailAddress,
    TResult? Function(Storage value)? storage,
  }) {
    return internalServerError?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InvalidCredentials value)? invalidCredentials,
    TResult Function(InternalServerError value)? internalServerError,
    TResult Function(DuplicateEmailAddress value)? duplicateEmailAddress,
    TResult Function(Storage value)? storage,
    required TResult orElse(),
  }) {
    if (internalServerError != null) {
      return internalServerError(this);
    }
    return orElse();
  }
}

abstract class InternalServerError implements PropertyFailure {
  const factory InternalServerError({required final String msg}) =
      _$InternalServerError;

  @override
  String get msg;
  @override
  @JsonKey(ignore: true)
  _$$InternalServerErrorCopyWith<_$InternalServerError> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$DuplicateEmailAddressCopyWith<$Res>
    implements $PropertyFailureCopyWith<$Res> {
  factory _$$DuplicateEmailAddressCopyWith(_$DuplicateEmailAddress value,
          $Res Function(_$DuplicateEmailAddress) then) =
      __$$DuplicateEmailAddressCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String msg});
}

/// @nodoc
class __$$DuplicateEmailAddressCopyWithImpl<$Res>
    extends _$PropertyFailureCopyWithImpl<$Res, _$DuplicateEmailAddress>
    implements _$$DuplicateEmailAddressCopyWith<$Res> {
  __$$DuplicateEmailAddressCopyWithImpl(_$DuplicateEmailAddress _value,
      $Res Function(_$DuplicateEmailAddress) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? msg = null,
  }) {
    return _then(_$DuplicateEmailAddress(
      msg: null == msg
          ? _value.msg
          : msg // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$DuplicateEmailAddress implements DuplicateEmailAddress {
  const _$DuplicateEmailAddress({required this.msg});

  @override
  final String msg;

  @override
  String toString() {
    return 'PropertyFailure.duplicateEmailAddress(msg: $msg)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DuplicateEmailAddress &&
            (identical(other.msg, msg) || other.msg == msg));
  }

  @override
  int get hashCode => Object.hash(runtimeType, msg);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DuplicateEmailAddressCopyWith<_$DuplicateEmailAddress> get copyWith =>
      __$$DuplicateEmailAddressCopyWithImpl<_$DuplicateEmailAddress>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String msg) invalidCredentials,
    required TResult Function(String msg) internalServerError,
    required TResult Function(String msg) duplicateEmailAddress,
    required TResult Function(String msg) storage,
  }) {
    return duplicateEmailAddress(msg);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String msg)? invalidCredentials,
    TResult? Function(String msg)? internalServerError,
    TResult? Function(String msg)? duplicateEmailAddress,
    TResult? Function(String msg)? storage,
  }) {
    return duplicateEmailAddress?.call(msg);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String msg)? invalidCredentials,
    TResult Function(String msg)? internalServerError,
    TResult Function(String msg)? duplicateEmailAddress,
    TResult Function(String msg)? storage,
    required TResult orElse(),
  }) {
    if (duplicateEmailAddress != null) {
      return duplicateEmailAddress(msg);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InvalidCredentials value) invalidCredentials,
    required TResult Function(InternalServerError value) internalServerError,
    required TResult Function(DuplicateEmailAddress value)
        duplicateEmailAddress,
    required TResult Function(Storage value) storage,
  }) {
    return duplicateEmailAddress(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(InvalidCredentials value)? invalidCredentials,
    TResult? Function(InternalServerError value)? internalServerError,
    TResult? Function(DuplicateEmailAddress value)? duplicateEmailAddress,
    TResult? Function(Storage value)? storage,
  }) {
    return duplicateEmailAddress?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InvalidCredentials value)? invalidCredentials,
    TResult Function(InternalServerError value)? internalServerError,
    TResult Function(DuplicateEmailAddress value)? duplicateEmailAddress,
    TResult Function(Storage value)? storage,
    required TResult orElse(),
  }) {
    if (duplicateEmailAddress != null) {
      return duplicateEmailAddress(this);
    }
    return orElse();
  }
}

abstract class DuplicateEmailAddress implements PropertyFailure {
  const factory DuplicateEmailAddress({required final String msg}) =
      _$DuplicateEmailAddress;

  @override
  String get msg;
  @override
  @JsonKey(ignore: true)
  _$$DuplicateEmailAddressCopyWith<_$DuplicateEmailAddress> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$StorageCopyWith<$Res>
    implements $PropertyFailureCopyWith<$Res> {
  factory _$$StorageCopyWith(_$Storage value, $Res Function(_$Storage) then) =
      __$$StorageCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String msg});
}

/// @nodoc
class __$$StorageCopyWithImpl<$Res>
    extends _$PropertyFailureCopyWithImpl<$Res, _$Storage>
    implements _$$StorageCopyWith<$Res> {
  __$$StorageCopyWithImpl(_$Storage _value, $Res Function(_$Storage) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? msg = null,
  }) {
    return _then(_$Storage(
      msg: null == msg
          ? _value.msg
          : msg // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$Storage implements Storage {
  const _$Storage({required this.msg});

  @override
  final String msg;

  @override
  String toString() {
    return 'PropertyFailure.storage(msg: $msg)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$Storage &&
            (identical(other.msg, msg) || other.msg == msg));
  }

  @override
  int get hashCode => Object.hash(runtimeType, msg);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$StorageCopyWith<_$Storage> get copyWith =>
      __$$StorageCopyWithImpl<_$Storage>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String msg) invalidCredentials,
    required TResult Function(String msg) internalServerError,
    required TResult Function(String msg) duplicateEmailAddress,
    required TResult Function(String msg) storage,
  }) {
    return storage(msg);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String msg)? invalidCredentials,
    TResult? Function(String msg)? internalServerError,
    TResult? Function(String msg)? duplicateEmailAddress,
    TResult? Function(String msg)? storage,
  }) {
    return storage?.call(msg);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String msg)? invalidCredentials,
    TResult Function(String msg)? internalServerError,
    TResult Function(String msg)? duplicateEmailAddress,
    TResult Function(String msg)? storage,
    required TResult orElse(),
  }) {
    if (storage != null) {
      return storage(msg);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InvalidCredentials value) invalidCredentials,
    required TResult Function(InternalServerError value) internalServerError,
    required TResult Function(DuplicateEmailAddress value)
        duplicateEmailAddress,
    required TResult Function(Storage value) storage,
  }) {
    return storage(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(InvalidCredentials value)? invalidCredentials,
    TResult? Function(InternalServerError value)? internalServerError,
    TResult? Function(DuplicateEmailAddress value)? duplicateEmailAddress,
    TResult? Function(Storage value)? storage,
  }) {
    return storage?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InvalidCredentials value)? invalidCredentials,
    TResult Function(InternalServerError value)? internalServerError,
    TResult Function(DuplicateEmailAddress value)? duplicateEmailAddress,
    TResult Function(Storage value)? storage,
    required TResult orElse(),
  }) {
    if (storage != null) {
      return storage(this);
    }
    return orElse();
  }
}

abstract class Storage implements PropertyFailure {
  const factory Storage({required final String msg}) = _$Storage;

  @override
  String get msg;
  @override
  @JsonKey(ignore: true)
  _$$StorageCopyWith<_$Storage> get copyWith =>
      throw _privateConstructorUsedError;
}
