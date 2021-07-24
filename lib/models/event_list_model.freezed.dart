// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'event_list_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$EventListModelTearOff {
  const _$EventListModelTearOff();

  _EventListModel call(
      {List<DatedIdentityData> events = const [],
      required Workable workState}) {
    return _EventListModel(
      events: events,
      workState: workState,
    );
  }
}

/// @nodoc
const $EventListModel = _$EventListModelTearOff();

/// @nodoc
mixin _$EventListModel {
  List<DatedIdentityData> get events => throw _privateConstructorUsedError;
  Workable get workState => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $EventListModelCopyWith<EventListModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EventListModelCopyWith<$Res> {
  factory $EventListModelCopyWith(
          EventListModel value, $Res Function(EventListModel) then) =
      _$EventListModelCopyWithImpl<$Res>;
  $Res call({List<DatedIdentityData> events, Workable workState});

  $WorkableCopyWith<$Res> get workState;
}

/// @nodoc
class _$EventListModelCopyWithImpl<$Res>
    implements $EventListModelCopyWith<$Res> {
  _$EventListModelCopyWithImpl(this._value, this._then);

  final EventListModel _value;
  // ignore: unused_field
  final $Res Function(EventListModel) _then;

  @override
  $Res call({
    Object? events = freezed,
    Object? workState = freezed,
  }) {
    return _then(_value.copyWith(
      events: events == freezed
          ? _value.events
          : events // ignore: cast_nullable_to_non_nullable
              as List<DatedIdentityData>,
      workState: workState == freezed
          ? _value.workState
          : workState // ignore: cast_nullable_to_non_nullable
              as Workable,
    ));
  }

  @override
  $WorkableCopyWith<$Res> get workState {
    return $WorkableCopyWith<$Res>(_value.workState, (value) {
      return _then(_value.copyWith(workState: value));
    });
  }
}

/// @nodoc
abstract class _$EventListModelCopyWith<$Res>
    implements $EventListModelCopyWith<$Res> {
  factory _$EventListModelCopyWith(
          _EventListModel value, $Res Function(_EventListModel) then) =
      __$EventListModelCopyWithImpl<$Res>;
  @override
  $Res call({List<DatedIdentityData> events, Workable workState});

  @override
  $WorkableCopyWith<$Res> get workState;
}

/// @nodoc
class __$EventListModelCopyWithImpl<$Res>
    extends _$EventListModelCopyWithImpl<$Res>
    implements _$EventListModelCopyWith<$Res> {
  __$EventListModelCopyWithImpl(
      _EventListModel _value, $Res Function(_EventListModel) _then)
      : super(_value, (v) => _then(v as _EventListModel));

  @override
  _EventListModel get _value => super._value as _EventListModel;

  @override
  $Res call({
    Object? events = freezed,
    Object? workState = freezed,
  }) {
    return _then(_EventListModel(
      events: events == freezed
          ? _value.events
          : events // ignore: cast_nullable_to_non_nullable
              as List<DatedIdentityData>,
      workState: workState == freezed
          ? _value.workState
          : workState // ignore: cast_nullable_to_non_nullable
              as Workable,
    ));
  }
}

/// @nodoc

class _$_EventListModel extends _EventListModel {
  const _$_EventListModel({this.events = const [], required this.workState})
      : super._();

  @JsonKey(defaultValue: const [])
  @override
  final List<DatedIdentityData> events;
  @override
  final Workable workState;

  @override
  String toString() {
    return 'EventListModel(events: $events, workState: $workState)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _EventListModel &&
            (identical(other.events, events) ||
                const DeepCollectionEquality().equals(other.events, events)) &&
            (identical(other.workState, workState) ||
                const DeepCollectionEquality()
                    .equals(other.workState, workState)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(events) ^
      const DeepCollectionEquality().hash(workState);

  @JsonKey(ignore: true)
  @override
  _$EventListModelCopyWith<_EventListModel> get copyWith =>
      __$EventListModelCopyWithImpl<_EventListModel>(this, _$identity);
}

abstract class _EventListModel extends EventListModel {
  const factory _EventListModel(
      {List<DatedIdentityData> events,
      required Workable workState}) = _$_EventListModel;
  const _EventListModel._() : super._();

  @override
  List<DatedIdentityData> get events => throw _privateConstructorUsedError;
  @override
  Workable get workState => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$EventListModelCopyWith<_EventListModel> get copyWith =>
      throw _privateConstructorUsedError;
}
