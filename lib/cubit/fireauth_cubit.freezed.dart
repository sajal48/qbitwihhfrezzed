// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'fireauth_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$FireauthStateTearOff {
  const _$FireauthStateTearOff();

  _Initial initial() {
    return const _Initial();
  }

  _SignedIn signedIn() {
    return const _SignedIn();
  }

  _SignedOut signedOut() {
    return const _SignedOut();
  }

  _Loading loading() {
    return const _Loading();
  }

  _AnyErrorState anyerrorState(String message) {
    return _AnyErrorState(
      message,
    );
  }
}

/// @nodoc
const $FireauthState = _$FireauthStateTearOff();

/// @nodoc
mixin _$FireauthState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() signedIn,
    required TResult Function() signedOut,
    required TResult Function() loading,
    required TResult Function(String message) anyerrorState,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? signedIn,
    TResult Function()? signedOut,
    TResult Function()? loading,
    TResult Function(String message)? anyerrorState,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? signedIn,
    TResult Function()? signedOut,
    TResult Function()? loading,
    TResult Function(String message)? anyerrorState,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_SignedIn value) signedIn,
    required TResult Function(_SignedOut value) signedOut,
    required TResult Function(_Loading value) loading,
    required TResult Function(_AnyErrorState value) anyerrorState,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_SignedIn value)? signedIn,
    TResult Function(_SignedOut value)? signedOut,
    TResult Function(_Loading value)? loading,
    TResult Function(_AnyErrorState value)? anyerrorState,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_SignedIn value)? signedIn,
    TResult Function(_SignedOut value)? signedOut,
    TResult Function(_Loading value)? loading,
    TResult Function(_AnyErrorState value)? anyerrorState,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FireauthStateCopyWith<$Res> {
  factory $FireauthStateCopyWith(
          FireauthState value, $Res Function(FireauthState) then) =
      _$FireauthStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$FireauthStateCopyWithImpl<$Res>
    implements $FireauthStateCopyWith<$Res> {
  _$FireauthStateCopyWithImpl(this._value, this._then);

  final FireauthState _value;
  // ignore: unused_field
  final $Res Function(FireauthState) _then;
}

/// @nodoc
abstract class _$InitialCopyWith<$Res> {
  factory _$InitialCopyWith(_Initial value, $Res Function(_Initial) then) =
      __$InitialCopyWithImpl<$Res>;
}

/// @nodoc
class __$InitialCopyWithImpl<$Res> extends _$FireauthStateCopyWithImpl<$Res>
    implements _$InitialCopyWith<$Res> {
  __$InitialCopyWithImpl(_Initial _value, $Res Function(_Initial) _then)
      : super(_value, (v) => _then(v as _Initial));

  @override
  _Initial get _value => super._value as _Initial;
}

/// @nodoc

class _$_Initial implements _Initial {
  const _$_Initial();

  @override
  String toString() {
    return 'FireauthState.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _Initial);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() signedIn,
    required TResult Function() signedOut,
    required TResult Function() loading,
    required TResult Function(String message) anyerrorState,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? signedIn,
    TResult Function()? signedOut,
    TResult Function()? loading,
    TResult Function(String message)? anyerrorState,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? signedIn,
    TResult Function()? signedOut,
    TResult Function()? loading,
    TResult Function(String message)? anyerrorState,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_SignedIn value) signedIn,
    required TResult Function(_SignedOut value) signedOut,
    required TResult Function(_Loading value) loading,
    required TResult Function(_AnyErrorState value) anyerrorState,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_SignedIn value)? signedIn,
    TResult Function(_SignedOut value)? signedOut,
    TResult Function(_Loading value)? loading,
    TResult Function(_AnyErrorState value)? anyerrorState,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_SignedIn value)? signedIn,
    TResult Function(_SignedOut value)? signedOut,
    TResult Function(_Loading value)? loading,
    TResult Function(_AnyErrorState value)? anyerrorState,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements FireauthState {
  const factory _Initial() = _$_Initial;
}

/// @nodoc
abstract class _$SignedInCopyWith<$Res> {
  factory _$SignedInCopyWith(_SignedIn value, $Res Function(_SignedIn) then) =
      __$SignedInCopyWithImpl<$Res>;
}

/// @nodoc
class __$SignedInCopyWithImpl<$Res> extends _$FireauthStateCopyWithImpl<$Res>
    implements _$SignedInCopyWith<$Res> {
  __$SignedInCopyWithImpl(_SignedIn _value, $Res Function(_SignedIn) _then)
      : super(_value, (v) => _then(v as _SignedIn));

  @override
  _SignedIn get _value => super._value as _SignedIn;
}

/// @nodoc

class _$_SignedIn implements _SignedIn {
  const _$_SignedIn();

  @override
  String toString() {
    return 'FireauthState.signedIn()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _SignedIn);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() signedIn,
    required TResult Function() signedOut,
    required TResult Function() loading,
    required TResult Function(String message) anyerrorState,
  }) {
    return signedIn();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? signedIn,
    TResult Function()? signedOut,
    TResult Function()? loading,
    TResult Function(String message)? anyerrorState,
  }) {
    return signedIn?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? signedIn,
    TResult Function()? signedOut,
    TResult Function()? loading,
    TResult Function(String message)? anyerrorState,
    required TResult orElse(),
  }) {
    if (signedIn != null) {
      return signedIn();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_SignedIn value) signedIn,
    required TResult Function(_SignedOut value) signedOut,
    required TResult Function(_Loading value) loading,
    required TResult Function(_AnyErrorState value) anyerrorState,
  }) {
    return signedIn(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_SignedIn value)? signedIn,
    TResult Function(_SignedOut value)? signedOut,
    TResult Function(_Loading value)? loading,
    TResult Function(_AnyErrorState value)? anyerrorState,
  }) {
    return signedIn?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_SignedIn value)? signedIn,
    TResult Function(_SignedOut value)? signedOut,
    TResult Function(_Loading value)? loading,
    TResult Function(_AnyErrorState value)? anyerrorState,
    required TResult orElse(),
  }) {
    if (signedIn != null) {
      return signedIn(this);
    }
    return orElse();
  }
}

abstract class _SignedIn implements FireauthState {
  const factory _SignedIn() = _$_SignedIn;
}

/// @nodoc
abstract class _$SignedOutCopyWith<$Res> {
  factory _$SignedOutCopyWith(
          _SignedOut value, $Res Function(_SignedOut) then) =
      __$SignedOutCopyWithImpl<$Res>;
}

/// @nodoc
class __$SignedOutCopyWithImpl<$Res> extends _$FireauthStateCopyWithImpl<$Res>
    implements _$SignedOutCopyWith<$Res> {
  __$SignedOutCopyWithImpl(_SignedOut _value, $Res Function(_SignedOut) _then)
      : super(_value, (v) => _then(v as _SignedOut));

  @override
  _SignedOut get _value => super._value as _SignedOut;
}

/// @nodoc

class _$_SignedOut implements _SignedOut {
  const _$_SignedOut();

  @override
  String toString() {
    return 'FireauthState.signedOut()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _SignedOut);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() signedIn,
    required TResult Function() signedOut,
    required TResult Function() loading,
    required TResult Function(String message) anyerrorState,
  }) {
    return signedOut();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? signedIn,
    TResult Function()? signedOut,
    TResult Function()? loading,
    TResult Function(String message)? anyerrorState,
  }) {
    return signedOut?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? signedIn,
    TResult Function()? signedOut,
    TResult Function()? loading,
    TResult Function(String message)? anyerrorState,
    required TResult orElse(),
  }) {
    if (signedOut != null) {
      return signedOut();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_SignedIn value) signedIn,
    required TResult Function(_SignedOut value) signedOut,
    required TResult Function(_Loading value) loading,
    required TResult Function(_AnyErrorState value) anyerrorState,
  }) {
    return signedOut(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_SignedIn value)? signedIn,
    TResult Function(_SignedOut value)? signedOut,
    TResult Function(_Loading value)? loading,
    TResult Function(_AnyErrorState value)? anyerrorState,
  }) {
    return signedOut?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_SignedIn value)? signedIn,
    TResult Function(_SignedOut value)? signedOut,
    TResult Function(_Loading value)? loading,
    TResult Function(_AnyErrorState value)? anyerrorState,
    required TResult orElse(),
  }) {
    if (signedOut != null) {
      return signedOut(this);
    }
    return orElse();
  }
}

abstract class _SignedOut implements FireauthState {
  const factory _SignedOut() = _$_SignedOut;
}

/// @nodoc
abstract class _$LoadingCopyWith<$Res> {
  factory _$LoadingCopyWith(_Loading value, $Res Function(_Loading) then) =
      __$LoadingCopyWithImpl<$Res>;
}

/// @nodoc
class __$LoadingCopyWithImpl<$Res> extends _$FireauthStateCopyWithImpl<$Res>
    implements _$LoadingCopyWith<$Res> {
  __$LoadingCopyWithImpl(_Loading _value, $Res Function(_Loading) _then)
      : super(_value, (v) => _then(v as _Loading));

  @override
  _Loading get _value => super._value as _Loading;
}

/// @nodoc

class _$_Loading implements _Loading {
  const _$_Loading();

  @override
  String toString() {
    return 'FireauthState.loading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _Loading);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() signedIn,
    required TResult Function() signedOut,
    required TResult Function() loading,
    required TResult Function(String message) anyerrorState,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? signedIn,
    TResult Function()? signedOut,
    TResult Function()? loading,
    TResult Function(String message)? anyerrorState,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? signedIn,
    TResult Function()? signedOut,
    TResult Function()? loading,
    TResult Function(String message)? anyerrorState,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_SignedIn value) signedIn,
    required TResult Function(_SignedOut value) signedOut,
    required TResult Function(_Loading value) loading,
    required TResult Function(_AnyErrorState value) anyerrorState,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_SignedIn value)? signedIn,
    TResult Function(_SignedOut value)? signedOut,
    TResult Function(_Loading value)? loading,
    TResult Function(_AnyErrorState value)? anyerrorState,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_SignedIn value)? signedIn,
    TResult Function(_SignedOut value)? signedOut,
    TResult Function(_Loading value)? loading,
    TResult Function(_AnyErrorState value)? anyerrorState,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _Loading implements FireauthState {
  const factory _Loading() = _$_Loading;
}

/// @nodoc
abstract class _$AnyErrorStateCopyWith<$Res> {
  factory _$AnyErrorStateCopyWith(
          _AnyErrorState value, $Res Function(_AnyErrorState) then) =
      __$AnyErrorStateCopyWithImpl<$Res>;
  $Res call({String message});
}

/// @nodoc
class __$AnyErrorStateCopyWithImpl<$Res>
    extends _$FireauthStateCopyWithImpl<$Res>
    implements _$AnyErrorStateCopyWith<$Res> {
  __$AnyErrorStateCopyWithImpl(
      _AnyErrorState _value, $Res Function(_AnyErrorState) _then)
      : super(_value, (v) => _then(v as _AnyErrorState));

  @override
  _AnyErrorState get _value => super._value as _AnyErrorState;

  @override
  $Res call({
    Object? message = freezed,
  }) {
    return _then(_AnyErrorState(
      message == freezed
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_AnyErrorState implements _AnyErrorState {
  const _$_AnyErrorState(this.message);

  @override
  final String message;

  @override
  String toString() {
    return 'FireauthState.anyerrorState(message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _AnyErrorState &&
            (identical(other.message, message) ||
                const DeepCollectionEquality().equals(other.message, message)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(message);

  @JsonKey(ignore: true)
  @override
  _$AnyErrorStateCopyWith<_AnyErrorState> get copyWith =>
      __$AnyErrorStateCopyWithImpl<_AnyErrorState>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() signedIn,
    required TResult Function() signedOut,
    required TResult Function() loading,
    required TResult Function(String message) anyerrorState,
  }) {
    return anyerrorState(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? signedIn,
    TResult Function()? signedOut,
    TResult Function()? loading,
    TResult Function(String message)? anyerrorState,
  }) {
    return anyerrorState?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? signedIn,
    TResult Function()? signedOut,
    TResult Function()? loading,
    TResult Function(String message)? anyerrorState,
    required TResult orElse(),
  }) {
    if (anyerrorState != null) {
      return anyerrorState(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_SignedIn value) signedIn,
    required TResult Function(_SignedOut value) signedOut,
    required TResult Function(_Loading value) loading,
    required TResult Function(_AnyErrorState value) anyerrorState,
  }) {
    return anyerrorState(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_SignedIn value)? signedIn,
    TResult Function(_SignedOut value)? signedOut,
    TResult Function(_Loading value)? loading,
    TResult Function(_AnyErrorState value)? anyerrorState,
  }) {
    return anyerrorState?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_SignedIn value)? signedIn,
    TResult Function(_SignedOut value)? signedOut,
    TResult Function(_Loading value)? loading,
    TResult Function(_AnyErrorState value)? anyerrorState,
    required TResult orElse(),
  }) {
    if (anyerrorState != null) {
      return anyerrorState(this);
    }
    return orElse();
  }
}

abstract class _AnyErrorState implements FireauthState {
  const factory _AnyErrorState(String message) = _$_AnyErrorState;

  String get message => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$AnyErrorStateCopyWith<_AnyErrorState> get copyWith =>
      throw _privateConstructorUsedError;
}
