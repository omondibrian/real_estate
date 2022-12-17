// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'property_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$PropertyEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() fetchListings,
    required TResult Function(UnitEntity unit) saveUnit,
    required TResult Function(String body, String senderId, String type)
        addRequest,
    required TResult Function(String query) search,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? fetchListings,
    TResult? Function(UnitEntity unit)? saveUnit,
    TResult? Function(String body, String senderId, String type)? addRequest,
    TResult? Function(String query)? search,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? fetchListings,
    TResult Function(UnitEntity unit)? saveUnit,
    TResult Function(String body, String senderId, String type)? addRequest,
    TResult Function(String query)? search,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(FetchListings value) fetchListings,
    required TResult Function(SaveUnit value) saveUnit,
    required TResult Function(NewRequest value) addRequest,
    required TResult Function(SearchListings value) search,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(FetchListings value)? fetchListings,
    TResult? Function(SaveUnit value)? saveUnit,
    TResult? Function(NewRequest value)? addRequest,
    TResult? Function(SearchListings value)? search,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(FetchListings value)? fetchListings,
    TResult Function(SaveUnit value)? saveUnit,
    TResult Function(NewRequest value)? addRequest,
    TResult Function(SearchListings value)? search,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PropertyEventCopyWith<$Res> {
  factory $PropertyEventCopyWith(
          PropertyEvent value, $Res Function(PropertyEvent) then) =
      _$PropertyEventCopyWithImpl<$Res, PropertyEvent>;
}

/// @nodoc
class _$PropertyEventCopyWithImpl<$Res, $Val extends PropertyEvent>
    implements $PropertyEventCopyWith<$Res> {
  _$PropertyEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$FetchListingsCopyWith<$Res> {
  factory _$$FetchListingsCopyWith(
          _$FetchListings value, $Res Function(_$FetchListings) then) =
      __$$FetchListingsCopyWithImpl<$Res>;
}

/// @nodoc
class __$$FetchListingsCopyWithImpl<$Res>
    extends _$PropertyEventCopyWithImpl<$Res, _$FetchListings>
    implements _$$FetchListingsCopyWith<$Res> {
  __$$FetchListingsCopyWithImpl(
      _$FetchListings _value, $Res Function(_$FetchListings) _then)
      : super(_value, _then);
}

/// @nodoc

class _$FetchListings implements FetchListings {
  const _$FetchListings();

  @override
  String toString() {
    return 'PropertyEvent.fetchListings()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$FetchListings);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() fetchListings,
    required TResult Function(UnitEntity unit) saveUnit,
    required TResult Function(String body, String senderId, String type)
        addRequest,
    required TResult Function(String query) search,
  }) {
    return fetchListings();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? fetchListings,
    TResult? Function(UnitEntity unit)? saveUnit,
    TResult? Function(String body, String senderId, String type)? addRequest,
    TResult? Function(String query)? search,
  }) {
    return fetchListings?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? fetchListings,
    TResult Function(UnitEntity unit)? saveUnit,
    TResult Function(String body, String senderId, String type)? addRequest,
    TResult Function(String query)? search,
    required TResult orElse(),
  }) {
    if (fetchListings != null) {
      return fetchListings();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(FetchListings value) fetchListings,
    required TResult Function(SaveUnit value) saveUnit,
    required TResult Function(NewRequest value) addRequest,
    required TResult Function(SearchListings value) search,
  }) {
    return fetchListings(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(FetchListings value)? fetchListings,
    TResult? Function(SaveUnit value)? saveUnit,
    TResult? Function(NewRequest value)? addRequest,
    TResult? Function(SearchListings value)? search,
  }) {
    return fetchListings?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(FetchListings value)? fetchListings,
    TResult Function(SaveUnit value)? saveUnit,
    TResult Function(NewRequest value)? addRequest,
    TResult Function(SearchListings value)? search,
    required TResult orElse(),
  }) {
    if (fetchListings != null) {
      return fetchListings(this);
    }
    return orElse();
  }
}

abstract class FetchListings implements PropertyEvent {
  const factory FetchListings() = _$FetchListings;
}

/// @nodoc
abstract class _$$SaveUnitCopyWith<$Res> {
  factory _$$SaveUnitCopyWith(
          _$SaveUnit value, $Res Function(_$SaveUnit) then) =
      __$$SaveUnitCopyWithImpl<$Res>;
  @useResult
  $Res call({UnitEntity unit});
}

/// @nodoc
class __$$SaveUnitCopyWithImpl<$Res>
    extends _$PropertyEventCopyWithImpl<$Res, _$SaveUnit>
    implements _$$SaveUnitCopyWith<$Res> {
  __$$SaveUnitCopyWithImpl(_$SaveUnit _value, $Res Function(_$SaveUnit) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? unit = null,
  }) {
    return _then(_$SaveUnit(
      unit: null == unit
          ? _value.unit
          : unit // ignore: cast_nullable_to_non_nullable
              as UnitEntity,
    ));
  }
}

/// @nodoc

class _$SaveUnit implements SaveUnit {
  const _$SaveUnit({required this.unit});

  @override
  final UnitEntity unit;

  @override
  String toString() {
    return 'PropertyEvent.saveUnit(unit: $unit)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SaveUnit &&
            (identical(other.unit, unit) || other.unit == unit));
  }

  @override
  int get hashCode => Object.hash(runtimeType, unit);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SaveUnitCopyWith<_$SaveUnit> get copyWith =>
      __$$SaveUnitCopyWithImpl<_$SaveUnit>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() fetchListings,
    required TResult Function(UnitEntity unit) saveUnit,
    required TResult Function(String body, String senderId, String type)
        addRequest,
    required TResult Function(String query) search,
  }) {
    return saveUnit(unit);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? fetchListings,
    TResult? Function(UnitEntity unit)? saveUnit,
    TResult? Function(String body, String senderId, String type)? addRequest,
    TResult? Function(String query)? search,
  }) {
    return saveUnit?.call(unit);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? fetchListings,
    TResult Function(UnitEntity unit)? saveUnit,
    TResult Function(String body, String senderId, String type)? addRequest,
    TResult Function(String query)? search,
    required TResult orElse(),
  }) {
    if (saveUnit != null) {
      return saveUnit(unit);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(FetchListings value) fetchListings,
    required TResult Function(SaveUnit value) saveUnit,
    required TResult Function(NewRequest value) addRequest,
    required TResult Function(SearchListings value) search,
  }) {
    return saveUnit(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(FetchListings value)? fetchListings,
    TResult? Function(SaveUnit value)? saveUnit,
    TResult? Function(NewRequest value)? addRequest,
    TResult? Function(SearchListings value)? search,
  }) {
    return saveUnit?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(FetchListings value)? fetchListings,
    TResult Function(SaveUnit value)? saveUnit,
    TResult Function(NewRequest value)? addRequest,
    TResult Function(SearchListings value)? search,
    required TResult orElse(),
  }) {
    if (saveUnit != null) {
      return saveUnit(this);
    }
    return orElse();
  }
}

abstract class SaveUnit implements PropertyEvent {
  const factory SaveUnit({required final UnitEntity unit}) = _$SaveUnit;

  UnitEntity get unit;
  @JsonKey(ignore: true)
  _$$SaveUnitCopyWith<_$SaveUnit> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$NewRequestCopyWith<$Res> {
  factory _$$NewRequestCopyWith(
          _$NewRequest value, $Res Function(_$NewRequest) then) =
      __$$NewRequestCopyWithImpl<$Res>;
  @useResult
  $Res call({String body, String senderId, String type});
}

/// @nodoc
class __$$NewRequestCopyWithImpl<$Res>
    extends _$PropertyEventCopyWithImpl<$Res, _$NewRequest>
    implements _$$NewRequestCopyWith<$Res> {
  __$$NewRequestCopyWithImpl(
      _$NewRequest _value, $Res Function(_$NewRequest) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? body = null,
    Object? senderId = null,
    Object? type = null,
  }) {
    return _then(_$NewRequest(
      body: null == body
          ? _value.body
          : body // ignore: cast_nullable_to_non_nullable
              as String,
      senderId: null == senderId
          ? _value.senderId
          : senderId // ignore: cast_nullable_to_non_nullable
              as String,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$NewRequest implements NewRequest {
  const _$NewRequest(
      {required this.body, required this.senderId, required this.type});

  @override
  final String body;
  @override
  final String senderId;
  @override
  final String type;

  @override
  String toString() {
    return 'PropertyEvent.addRequest(body: $body, senderId: $senderId, type: $type)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$NewRequest &&
            (identical(other.body, body) || other.body == body) &&
            (identical(other.senderId, senderId) ||
                other.senderId == senderId) &&
            (identical(other.type, type) || other.type == type));
  }

  @override
  int get hashCode => Object.hash(runtimeType, body, senderId, type);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$NewRequestCopyWith<_$NewRequest> get copyWith =>
      __$$NewRequestCopyWithImpl<_$NewRequest>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() fetchListings,
    required TResult Function(UnitEntity unit) saveUnit,
    required TResult Function(String body, String senderId, String type)
        addRequest,
    required TResult Function(String query) search,
  }) {
    return addRequest(body, senderId, type);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? fetchListings,
    TResult? Function(UnitEntity unit)? saveUnit,
    TResult? Function(String body, String senderId, String type)? addRequest,
    TResult? Function(String query)? search,
  }) {
    return addRequest?.call(body, senderId, type);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? fetchListings,
    TResult Function(UnitEntity unit)? saveUnit,
    TResult Function(String body, String senderId, String type)? addRequest,
    TResult Function(String query)? search,
    required TResult orElse(),
  }) {
    if (addRequest != null) {
      return addRequest(body, senderId, type);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(FetchListings value) fetchListings,
    required TResult Function(SaveUnit value) saveUnit,
    required TResult Function(NewRequest value) addRequest,
    required TResult Function(SearchListings value) search,
  }) {
    return addRequest(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(FetchListings value)? fetchListings,
    TResult? Function(SaveUnit value)? saveUnit,
    TResult? Function(NewRequest value)? addRequest,
    TResult? Function(SearchListings value)? search,
  }) {
    return addRequest?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(FetchListings value)? fetchListings,
    TResult Function(SaveUnit value)? saveUnit,
    TResult Function(NewRequest value)? addRequest,
    TResult Function(SearchListings value)? search,
    required TResult orElse(),
  }) {
    if (addRequest != null) {
      return addRequest(this);
    }
    return orElse();
  }
}

abstract class NewRequest implements PropertyEvent {
  const factory NewRequest(
      {required final String body,
      required final String senderId,
      required final String type}) = _$NewRequest;

  String get body;
  String get senderId;
  String get type;
  @JsonKey(ignore: true)
  _$$NewRequestCopyWith<_$NewRequest> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SearchListingsCopyWith<$Res> {
  factory _$$SearchListingsCopyWith(
          _$SearchListings value, $Res Function(_$SearchListings) then) =
      __$$SearchListingsCopyWithImpl<$Res>;
  @useResult
  $Res call({String query});
}

/// @nodoc
class __$$SearchListingsCopyWithImpl<$Res>
    extends _$PropertyEventCopyWithImpl<$Res, _$SearchListings>
    implements _$$SearchListingsCopyWith<$Res> {
  __$$SearchListingsCopyWithImpl(
      _$SearchListings _value, $Res Function(_$SearchListings) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? query = null,
  }) {
    return _then(_$SearchListings(
      query: null == query
          ? _value.query
          : query // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$SearchListings implements SearchListings {
  const _$SearchListings({required this.query});

  @override
  final String query;

  @override
  String toString() {
    return 'PropertyEvent.search(query: $query)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SearchListings &&
            (identical(other.query, query) || other.query == query));
  }

  @override
  int get hashCode => Object.hash(runtimeType, query);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SearchListingsCopyWith<_$SearchListings> get copyWith =>
      __$$SearchListingsCopyWithImpl<_$SearchListings>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() fetchListings,
    required TResult Function(UnitEntity unit) saveUnit,
    required TResult Function(String body, String senderId, String type)
        addRequest,
    required TResult Function(String query) search,
  }) {
    return search(query);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? fetchListings,
    TResult? Function(UnitEntity unit)? saveUnit,
    TResult? Function(String body, String senderId, String type)? addRequest,
    TResult? Function(String query)? search,
  }) {
    return search?.call(query);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? fetchListings,
    TResult Function(UnitEntity unit)? saveUnit,
    TResult Function(String body, String senderId, String type)? addRequest,
    TResult Function(String query)? search,
    required TResult orElse(),
  }) {
    if (search != null) {
      return search(query);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(FetchListings value) fetchListings,
    required TResult Function(SaveUnit value) saveUnit,
    required TResult Function(NewRequest value) addRequest,
    required TResult Function(SearchListings value) search,
  }) {
    return search(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(FetchListings value)? fetchListings,
    TResult? Function(SaveUnit value)? saveUnit,
    TResult? Function(NewRequest value)? addRequest,
    TResult? Function(SearchListings value)? search,
  }) {
    return search?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(FetchListings value)? fetchListings,
    TResult Function(SaveUnit value)? saveUnit,
    TResult Function(NewRequest value)? addRequest,
    TResult Function(SearchListings value)? search,
    required TResult orElse(),
  }) {
    if (search != null) {
      return search(this);
    }
    return orElse();
  }
}

abstract class SearchListings implements PropertyEvent {
  const factory SearchListings({required final String query}) =
      _$SearchListings;

  String get query;
  @JsonKey(ignore: true)
  _$$SearchListingsCopyWith<_$SearchListings> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$PropertyState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<PropertyEntity> listings) initial,
    required TResult Function(bool state) loadingState,
    required TResult Function(String msg) applicationErrors,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<PropertyEntity> listings)? initial,
    TResult? Function(bool state)? loadingState,
    TResult? Function(String msg)? applicationErrors,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<PropertyEntity> listings)? initial,
    TResult Function(bool state)? loadingState,
    TResult Function(String msg)? applicationErrors,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(LoadingState value) loadingState,
    required TResult Function(ApplicationErrors value) applicationErrors,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(LoadingState value)? loadingState,
    TResult? Function(ApplicationErrors value)? applicationErrors,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(LoadingState value)? loadingState,
    TResult Function(ApplicationErrors value)? applicationErrors,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PropertyStateCopyWith<$Res> {
  factory $PropertyStateCopyWith(
          PropertyState value, $Res Function(PropertyState) then) =
      _$PropertyStateCopyWithImpl<$Res, PropertyState>;
}

/// @nodoc
class _$PropertyStateCopyWithImpl<$Res, $Val extends PropertyState>
    implements $PropertyStateCopyWith<$Res> {
  _$PropertyStateCopyWithImpl(this._value, this._then);

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
  $Res call({List<PropertyEntity> listings});
}

/// @nodoc
class __$$_InitialCopyWithImpl<$Res>
    extends _$PropertyStateCopyWithImpl<$Res, _$_Initial>
    implements _$$_InitialCopyWith<$Res> {
  __$$_InitialCopyWithImpl(_$_Initial _value, $Res Function(_$_Initial) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? listings = null,
  }) {
    return _then(_$_Initial(
      listings: null == listings
          ? _value._listings
          : listings // ignore: cast_nullable_to_non_nullable
              as List<PropertyEntity>,
    ));
  }
}

/// @nodoc

class _$_Initial implements _Initial {
  const _$_Initial({final List<PropertyEntity> listings = const []})
      : _listings = listings;

  final List<PropertyEntity> _listings;
  @override
  @JsonKey()
  List<PropertyEntity> get listings {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_listings);
  }

  @override
  String toString() {
    return 'PropertyState.initial(listings: $listings)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Initial &&
            const DeepCollectionEquality().equals(other._listings, _listings));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_listings));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_InitialCopyWith<_$_Initial> get copyWith =>
      __$$_InitialCopyWithImpl<_$_Initial>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<PropertyEntity> listings) initial,
    required TResult Function(bool state) loadingState,
    required TResult Function(String msg) applicationErrors,
  }) {
    return initial(listings);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<PropertyEntity> listings)? initial,
    TResult? Function(bool state)? loadingState,
    TResult? Function(String msg)? applicationErrors,
  }) {
    return initial?.call(listings);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<PropertyEntity> listings)? initial,
    TResult Function(bool state)? loadingState,
    TResult Function(String msg)? applicationErrors,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(listings);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(LoadingState value) loadingState,
    required TResult Function(ApplicationErrors value) applicationErrors,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(LoadingState value)? loadingState,
    TResult? Function(ApplicationErrors value)? applicationErrors,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(LoadingState value)? loadingState,
    TResult Function(ApplicationErrors value)? applicationErrors,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements PropertyState {
  const factory _Initial({final List<PropertyEntity> listings}) = _$_Initial;

  List<PropertyEntity> get listings;
  @JsonKey(ignore: true)
  _$$_InitialCopyWith<_$_Initial> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$LoadingStateCopyWith<$Res> {
  factory _$$LoadingStateCopyWith(
          _$LoadingState value, $Res Function(_$LoadingState) then) =
      __$$LoadingStateCopyWithImpl<$Res>;
  @useResult
  $Res call({bool state});
}

/// @nodoc
class __$$LoadingStateCopyWithImpl<$Res>
    extends _$PropertyStateCopyWithImpl<$Res, _$LoadingState>
    implements _$$LoadingStateCopyWith<$Res> {
  __$$LoadingStateCopyWithImpl(
      _$LoadingState _value, $Res Function(_$LoadingState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? state = null,
  }) {
    return _then(_$LoadingState(
      state: null == state
          ? _value.state
          : state // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$LoadingState implements LoadingState {
  const _$LoadingState({this.state = false});

  @override
  @JsonKey()
  final bool state;

  @override
  String toString() {
    return 'PropertyState.loadingState(state: $state)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoadingState &&
            (identical(other.state, state) || other.state == state));
  }

  @override
  int get hashCode => Object.hash(runtimeType, state);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$LoadingStateCopyWith<_$LoadingState> get copyWith =>
      __$$LoadingStateCopyWithImpl<_$LoadingState>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<PropertyEntity> listings) initial,
    required TResult Function(bool state) loadingState,
    required TResult Function(String msg) applicationErrors,
  }) {
    return loadingState(state);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<PropertyEntity> listings)? initial,
    TResult? Function(bool state)? loadingState,
    TResult? Function(String msg)? applicationErrors,
  }) {
    return loadingState?.call(state);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<PropertyEntity> listings)? initial,
    TResult Function(bool state)? loadingState,
    TResult Function(String msg)? applicationErrors,
    required TResult orElse(),
  }) {
    if (loadingState != null) {
      return loadingState(state);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(LoadingState value) loadingState,
    required TResult Function(ApplicationErrors value) applicationErrors,
  }) {
    return loadingState(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(LoadingState value)? loadingState,
    TResult? Function(ApplicationErrors value)? applicationErrors,
  }) {
    return loadingState?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(LoadingState value)? loadingState,
    TResult Function(ApplicationErrors value)? applicationErrors,
    required TResult orElse(),
  }) {
    if (loadingState != null) {
      return loadingState(this);
    }
    return orElse();
  }
}

abstract class LoadingState implements PropertyState {
  const factory LoadingState({final bool state}) = _$LoadingState;

  bool get state;
  @JsonKey(ignore: true)
  _$$LoadingStateCopyWith<_$LoadingState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ApplicationErrorsCopyWith<$Res> {
  factory _$$ApplicationErrorsCopyWith(
          _$ApplicationErrors value, $Res Function(_$ApplicationErrors) then) =
      __$$ApplicationErrorsCopyWithImpl<$Res>;
  @useResult
  $Res call({String msg});
}

/// @nodoc
class __$$ApplicationErrorsCopyWithImpl<$Res>
    extends _$PropertyStateCopyWithImpl<$Res, _$ApplicationErrors>
    implements _$$ApplicationErrorsCopyWith<$Res> {
  __$$ApplicationErrorsCopyWithImpl(
      _$ApplicationErrors _value, $Res Function(_$ApplicationErrors) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? msg = null,
  }) {
    return _then(_$ApplicationErrors(
      msg: null == msg
          ? _value.msg
          : msg // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$ApplicationErrors implements ApplicationErrors {
  const _$ApplicationErrors({this.msg = ''});

  @override
  @JsonKey()
  final String msg;

  @override
  String toString() {
    return 'PropertyState.applicationErrors(msg: $msg)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ApplicationErrors &&
            (identical(other.msg, msg) || other.msg == msg));
  }

  @override
  int get hashCode => Object.hash(runtimeType, msg);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ApplicationErrorsCopyWith<_$ApplicationErrors> get copyWith =>
      __$$ApplicationErrorsCopyWithImpl<_$ApplicationErrors>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<PropertyEntity> listings) initial,
    required TResult Function(bool state) loadingState,
    required TResult Function(String msg) applicationErrors,
  }) {
    return applicationErrors(msg);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<PropertyEntity> listings)? initial,
    TResult? Function(bool state)? loadingState,
    TResult? Function(String msg)? applicationErrors,
  }) {
    return applicationErrors?.call(msg);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<PropertyEntity> listings)? initial,
    TResult Function(bool state)? loadingState,
    TResult Function(String msg)? applicationErrors,
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
    required TResult Function(LoadingState value) loadingState,
    required TResult Function(ApplicationErrors value) applicationErrors,
  }) {
    return applicationErrors(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(LoadingState value)? loadingState,
    TResult? Function(ApplicationErrors value)? applicationErrors,
  }) {
    return applicationErrors?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(LoadingState value)? loadingState,
    TResult Function(ApplicationErrors value)? applicationErrors,
    required TResult orElse(),
  }) {
    if (applicationErrors != null) {
      return applicationErrors(this);
    }
    return orElse();
  }
}

abstract class ApplicationErrors implements PropertyState {
  const factory ApplicationErrors({final String msg}) = _$ApplicationErrors;

  String get msg;
  @JsonKey(ignore: true)
  _$$ApplicationErrorsCopyWith<_$ApplicationErrors> get copyWith =>
      throw _privateConstructorUsedError;
}
