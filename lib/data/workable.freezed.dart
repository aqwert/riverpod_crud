// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'workable.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Workable _$WorkableFromJson(Map<String, dynamic> json) {
  switch (json['runtimeType'] as String) {
    case 'ready':
      return ReadyState.fromJson(json);
    case 'working':
      return WorkingState.fromJson(json);
    case 'invalid':
      return InvalidState.fromJson(json);
    case 'error':
      return ErrorDetailState.fromJson(json);

    default:
      throw FallThroughError();
  }
}

/// @nodoc
class _$WorkableTearOff {
  const _$WorkableTearOff();

  ReadyState ready() {
    return const ReadyState();
  }

  WorkingState working() {
    return const WorkingState();
  }

  InvalidState invalid() {
    return const InvalidState();
  }

  ErrorDetailState error([String? message]) {
    return ErrorDetailState(
      message,
    );
  }

  Workable fromJson(Map<String, Object> json) {
    return Workable.fromJson(json);
  }
}

/// @nodoc
const $Workable = _$WorkableTearOff();

/// @nodoc
mixin _$Workable {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() ready,
    required TResult Function() working,
    required TResult Function() invalid,
    required TResult Function(String? message) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? ready,
    TResult Function()? working,
    TResult Function()? invalid,
    TResult Function(String? message)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ReadyState value) ready,
    required TResult Function(WorkingState value) working,
    required TResult Function(InvalidState value) invalid,
    required TResult Function(ErrorDetailState value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ReadyState value)? ready,
    TResult Function(WorkingState value)? working,
    TResult Function(InvalidState value)? invalid,
    TResult Function(ErrorDetailState value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WorkableCopyWith<$Res> {
  factory $WorkableCopyWith(Workable value, $Res Function(Workable) then) =
      _$WorkableCopyWithImpl<$Res>;
}

/// @nodoc
class _$WorkableCopyWithImpl<$Res> implements $WorkableCopyWith<$Res> {
  _$WorkableCopyWithImpl(this._value, this._then);

  final Workable _value;
  // ignore: unused_field
  final $Res Function(Workable) _then;
}

/// @nodoc
abstract class $ReadyStateCopyWith<$Res> {
  factory $ReadyStateCopyWith(
          ReadyState value, $Res Function(ReadyState) then) =
      _$ReadyStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$ReadyStateCopyWithImpl<$Res> extends _$WorkableCopyWithImpl<$Res>
    implements $ReadyStateCopyWith<$Res> {
  _$ReadyStateCopyWithImpl(ReadyState _value, $Res Function(ReadyState) _then)
      : super(_value, (v) => _then(v as ReadyState));

  @override
  ReadyState get _value => super._value as ReadyState;
}

/// @nodoc
@JsonSerializable()
class _$ReadyState extends ReadyState {
  const _$ReadyState() : super._();

  factory _$ReadyState.fromJson(Map<String, dynamic> json) =>
      _$_$ReadyStateFromJson(json);

  @override
  String toString() {
    return 'Workable.ready()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is ReadyState);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() ready,
    required TResult Function() working,
    required TResult Function() invalid,
    required TResult Function(String? message) error,
  }) {
    return ready();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? ready,
    TResult Function()? working,
    TResult Function()? invalid,
    TResult Function(String? message)? error,
    required TResult orElse(),
  }) {
    if (ready != null) {
      return ready();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ReadyState value) ready,
    required TResult Function(WorkingState value) working,
    required TResult Function(InvalidState value) invalid,
    required TResult Function(ErrorDetailState value) error,
  }) {
    return ready(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ReadyState value)? ready,
    TResult Function(WorkingState value)? working,
    TResult Function(InvalidState value)? invalid,
    TResult Function(ErrorDetailState value)? error,
    required TResult orElse(),
  }) {
    if (ready != null) {
      return ready(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$_$ReadyStateToJson(this)..['runtimeType'] = 'ready';
  }
}

abstract class ReadyState extends Workable {
  const factory ReadyState() = _$ReadyState;
  const ReadyState._() : super._();

  factory ReadyState.fromJson(Map<String, dynamic> json) =
      _$ReadyState.fromJson;
}

/// @nodoc
abstract class $WorkingStateCopyWith<$Res> {
  factory $WorkingStateCopyWith(
          WorkingState value, $Res Function(WorkingState) then) =
      _$WorkingStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$WorkingStateCopyWithImpl<$Res> extends _$WorkableCopyWithImpl<$Res>
    implements $WorkingStateCopyWith<$Res> {
  _$WorkingStateCopyWithImpl(
      WorkingState _value, $Res Function(WorkingState) _then)
      : super(_value, (v) => _then(v as WorkingState));

  @override
  WorkingState get _value => super._value as WorkingState;
}

/// @nodoc
@JsonSerializable()
class _$WorkingState extends WorkingState {
  const _$WorkingState() : super._();

  factory _$WorkingState.fromJson(Map<String, dynamic> json) =>
      _$_$WorkingStateFromJson(json);

  @override
  String toString() {
    return 'Workable.working()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is WorkingState);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() ready,
    required TResult Function() working,
    required TResult Function() invalid,
    required TResult Function(String? message) error,
  }) {
    return working();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? ready,
    TResult Function()? working,
    TResult Function()? invalid,
    TResult Function(String? message)? error,
    required TResult orElse(),
  }) {
    if (working != null) {
      return working();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ReadyState value) ready,
    required TResult Function(WorkingState value) working,
    required TResult Function(InvalidState value) invalid,
    required TResult Function(ErrorDetailState value) error,
  }) {
    return working(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ReadyState value)? ready,
    TResult Function(WorkingState value)? working,
    TResult Function(InvalidState value)? invalid,
    TResult Function(ErrorDetailState value)? error,
    required TResult orElse(),
  }) {
    if (working != null) {
      return working(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$_$WorkingStateToJson(this)..['runtimeType'] = 'working';
  }
}

abstract class WorkingState extends Workable {
  const factory WorkingState() = _$WorkingState;
  const WorkingState._() : super._();

  factory WorkingState.fromJson(Map<String, dynamic> json) =
      _$WorkingState.fromJson;
}

/// @nodoc
abstract class $InvalidStateCopyWith<$Res> {
  factory $InvalidStateCopyWith(
          InvalidState value, $Res Function(InvalidState) then) =
      _$InvalidStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$InvalidStateCopyWithImpl<$Res> extends _$WorkableCopyWithImpl<$Res>
    implements $InvalidStateCopyWith<$Res> {
  _$InvalidStateCopyWithImpl(
      InvalidState _value, $Res Function(InvalidState) _then)
      : super(_value, (v) => _then(v as InvalidState));

  @override
  InvalidState get _value => super._value as InvalidState;
}

/// @nodoc
@JsonSerializable()
class _$InvalidState extends InvalidState {
  const _$InvalidState() : super._();

  factory _$InvalidState.fromJson(Map<String, dynamic> json) =>
      _$_$InvalidStateFromJson(json);

  @override
  String toString() {
    return 'Workable.invalid()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is InvalidState);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() ready,
    required TResult Function() working,
    required TResult Function() invalid,
    required TResult Function(String? message) error,
  }) {
    return invalid();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? ready,
    TResult Function()? working,
    TResult Function()? invalid,
    TResult Function(String? message)? error,
    required TResult orElse(),
  }) {
    if (invalid != null) {
      return invalid();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ReadyState value) ready,
    required TResult Function(WorkingState value) working,
    required TResult Function(InvalidState value) invalid,
    required TResult Function(ErrorDetailState value) error,
  }) {
    return invalid(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ReadyState value)? ready,
    TResult Function(WorkingState value)? working,
    TResult Function(InvalidState value)? invalid,
    TResult Function(ErrorDetailState value)? error,
    required TResult orElse(),
  }) {
    if (invalid != null) {
      return invalid(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$_$InvalidStateToJson(this)..['runtimeType'] = 'invalid';
  }
}

abstract class InvalidState extends Workable {
  const factory InvalidState() = _$InvalidState;
  const InvalidState._() : super._();

  factory InvalidState.fromJson(Map<String, dynamic> json) =
      _$InvalidState.fromJson;
}

/// @nodoc
abstract class $ErrorDetailStateCopyWith<$Res> {
  factory $ErrorDetailStateCopyWith(
          ErrorDetailState value, $Res Function(ErrorDetailState) then) =
      _$ErrorDetailStateCopyWithImpl<$Res>;
  $Res call({String? message});
}

/// @nodoc
class _$ErrorDetailStateCopyWithImpl<$Res> extends _$WorkableCopyWithImpl<$Res>
    implements $ErrorDetailStateCopyWith<$Res> {
  _$ErrorDetailStateCopyWithImpl(
      ErrorDetailState _value, $Res Function(ErrorDetailState) _then)
      : super(_value, (v) => _then(v as ErrorDetailState));

  @override
  ErrorDetailState get _value => super._value as ErrorDetailState;

  @override
  $Res call({
    Object? message = freezed,
  }) {
    return _then(ErrorDetailState(
      message == freezed
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ErrorDetailState extends ErrorDetailState {
  const _$ErrorDetailState([this.message]) : super._();

  factory _$ErrorDetailState.fromJson(Map<String, dynamic> json) =>
      _$_$ErrorDetailStateFromJson(json);

  @override
  final String? message;

  @override
  String toString() {
    return 'Workable.error(message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is ErrorDetailState &&
            (identical(other.message, message) ||
                const DeepCollectionEquality().equals(other.message, message)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(message);

  @JsonKey(ignore: true)
  @override
  $ErrorDetailStateCopyWith<ErrorDetailState> get copyWith =>
      _$ErrorDetailStateCopyWithImpl<ErrorDetailState>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() ready,
    required TResult Function() working,
    required TResult Function() invalid,
    required TResult Function(String? message) error,
  }) {
    return error(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? ready,
    TResult Function()? working,
    TResult Function()? invalid,
    TResult Function(String? message)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ReadyState value) ready,
    required TResult Function(WorkingState value) working,
    required TResult Function(InvalidState value) invalid,
    required TResult Function(ErrorDetailState value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ReadyState value)? ready,
    TResult Function(WorkingState value)? working,
    TResult Function(InvalidState value)? invalid,
    TResult Function(ErrorDetailState value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$_$ErrorDetailStateToJson(this)..['runtimeType'] = 'error';
  }
}

abstract class ErrorDetailState extends Workable {
  const factory ErrorDetailState([String? message]) = _$ErrorDetailState;
  const ErrorDetailState._() : super._();

  factory ErrorDetailState.fromJson(Map<String, dynamic> json) =
      _$ErrorDetailState.fromJson;

  String? get message => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ErrorDetailStateCopyWith<ErrorDetailState> get copyWith =>
      throw _privateConstructorUsedError;
}
