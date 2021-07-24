// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'event_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$EventModelTearOff {
  const _$EventModelTearOff();

  _EventModel call({required Workable workState, required EventData data}) {
    return _EventModel(
      workState: workState,
      data: data,
    );
  }
}

/// @nodoc
const $EventModel = _$EventModelTearOff();

/// @nodoc
mixin _$EventModel {
  Workable get workState => throw _privateConstructorUsedError;
  EventData get data => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $EventModelCopyWith<EventModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EventModelCopyWith<$Res> {
  factory $EventModelCopyWith(
          EventModel value, $Res Function(EventModel) then) =
      _$EventModelCopyWithImpl<$Res>;
  $Res call({Workable workState, EventData data});

  $WorkableCopyWith<$Res> get workState;
  $EventDataCopyWith<$Res> get data;
}

/// @nodoc
class _$EventModelCopyWithImpl<$Res> implements $EventModelCopyWith<$Res> {
  _$EventModelCopyWithImpl(this._value, this._then);

  final EventModel _value;
  // ignore: unused_field
  final $Res Function(EventModel) _then;

  @override
  $Res call({
    Object? workState = freezed,
    Object? data = freezed,
  }) {
    return _then(_value.copyWith(
      workState: workState == freezed
          ? _value.workState
          : workState // ignore: cast_nullable_to_non_nullable
              as Workable,
      data: data == freezed
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as EventData,
    ));
  }

  @override
  $WorkableCopyWith<$Res> get workState {
    return $WorkableCopyWith<$Res>(_value.workState, (value) {
      return _then(_value.copyWith(workState: value));
    });
  }

  @override
  $EventDataCopyWith<$Res> get data {
    return $EventDataCopyWith<$Res>(_value.data, (value) {
      return _then(_value.copyWith(data: value));
    });
  }
}

/// @nodoc
abstract class _$EventModelCopyWith<$Res> implements $EventModelCopyWith<$Res> {
  factory _$EventModelCopyWith(
          _EventModel value, $Res Function(_EventModel) then) =
      __$EventModelCopyWithImpl<$Res>;
  @override
  $Res call({Workable workState, EventData data});

  @override
  $WorkableCopyWith<$Res> get workState;
  @override
  $EventDataCopyWith<$Res> get data;
}

/// @nodoc
class __$EventModelCopyWithImpl<$Res> extends _$EventModelCopyWithImpl<$Res>
    implements _$EventModelCopyWith<$Res> {
  __$EventModelCopyWithImpl(
      _EventModel _value, $Res Function(_EventModel) _then)
      : super(_value, (v) => _then(v as _EventModel));

  @override
  _EventModel get _value => super._value as _EventModel;

  @override
  $Res call({
    Object? workState = freezed,
    Object? data = freezed,
  }) {
    return _then(_EventModel(
      workState: workState == freezed
          ? _value.workState
          : workState // ignore: cast_nullable_to_non_nullable
              as Workable,
      data: data == freezed
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as EventData,
    ));
  }
}

/// @nodoc

class _$_EventModel extends _EventModel {
  const _$_EventModel({required this.workState, required this.data})
      : super._();

  @override
  final Workable workState;
  @override
  final EventData data;

  @override
  String toString() {
    return 'EventModel(workState: $workState, data: $data)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _EventModel &&
            (identical(other.workState, workState) ||
                const DeepCollectionEquality()
                    .equals(other.workState, workState)) &&
            (identical(other.data, data) ||
                const DeepCollectionEquality().equals(other.data, data)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(workState) ^
      const DeepCollectionEquality().hash(data);

  @JsonKey(ignore: true)
  @override
  _$EventModelCopyWith<_EventModel> get copyWith =>
      __$EventModelCopyWithImpl<_EventModel>(this, _$identity);
}

abstract class _EventModel extends EventModel {
  const factory _EventModel(
      {required Workable workState, required EventData data}) = _$_EventModel;
  const _EventModel._() : super._();

  @override
  Workable get workState => throw _privateConstructorUsedError;
  @override
  EventData get data => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$EventModelCopyWith<_EventModel> get copyWith =>
      throw _privateConstructorUsedError;
}
