// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'event_data.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

EventData _$EventDataFromJson(Map<String, dynamic> json) {
  return _EventData.fromJson(json);
}

/// @nodoc
class _$EventDataTearOff {
  const _$EventDataTearOff();

  _EventData call({String? id, DateTime? date, String? title}) {
    return _EventData(
      id: id,
      date: date,
      title: title,
    );
  }

  EventData fromJson(Map<String, Object> json) {
    return EventData.fromJson(json);
  }
}

/// @nodoc
const $EventData = _$EventDataTearOff();

/// @nodoc
mixin _$EventData {
  String? get id => throw _privateConstructorUsedError;
  DateTime? get date => throw _privateConstructorUsedError;
  String? get title => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $EventDataCopyWith<EventData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EventDataCopyWith<$Res> {
  factory $EventDataCopyWith(EventData value, $Res Function(EventData) then) =
      _$EventDataCopyWithImpl<$Res>;
  $Res call({String? id, DateTime? date, String? title});
}

/// @nodoc
class _$EventDataCopyWithImpl<$Res> implements $EventDataCopyWith<$Res> {
  _$EventDataCopyWithImpl(this._value, this._then);

  final EventData _value;
  // ignore: unused_field
  final $Res Function(EventData) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? date = freezed,
    Object? title = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      date: date == freezed
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      title: title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
abstract class _$EventDataCopyWith<$Res> implements $EventDataCopyWith<$Res> {
  factory _$EventDataCopyWith(
          _EventData value, $Res Function(_EventData) then) =
      __$EventDataCopyWithImpl<$Res>;
  @override
  $Res call({String? id, DateTime? date, String? title});
}

/// @nodoc
class __$EventDataCopyWithImpl<$Res> extends _$EventDataCopyWithImpl<$Res>
    implements _$EventDataCopyWith<$Res> {
  __$EventDataCopyWithImpl(_EventData _value, $Res Function(_EventData) _then)
      : super(_value, (v) => _then(v as _EventData));

  @override
  _EventData get _value => super._value as _EventData;

  @override
  $Res call({
    Object? id = freezed,
    Object? date = freezed,
    Object? title = freezed,
  }) {
    return _then(_EventData(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      date: date == freezed
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      title: title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_EventData extends _EventData {
  const _$_EventData({this.id, this.date, this.title}) : super._();

  factory _$_EventData.fromJson(Map<String, dynamic> json) =>
      _$_$_EventDataFromJson(json);

  @override
  final String? id;
  @override
  final DateTime? date;
  @override
  final String? title;

  @override
  String toString() {
    return 'EventData(id: $id, date: $date, title: $title)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _EventData &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.date, date) ||
                const DeepCollectionEquality().equals(other.date, date)) &&
            (identical(other.title, title) ||
                const DeepCollectionEquality().equals(other.title, title)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(date) ^
      const DeepCollectionEquality().hash(title);

  @JsonKey(ignore: true)
  @override
  _$EventDataCopyWith<_EventData> get copyWith =>
      __$EventDataCopyWithImpl<_EventData>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_EventDataToJson(this);
  }
}

abstract class _EventData extends EventData {
  const factory _EventData({String? id, DateTime? date, String? title}) =
      _$_EventData;
  const _EventData._() : super._();

  factory _EventData.fromJson(Map<String, dynamic> json) =
      _$_EventData.fromJson;

  @override
  String? get id => throw _privateConstructorUsedError;
  @override
  DateTime? get date => throw _privateConstructorUsedError;
  @override
  String? get title => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$EventDataCopyWith<_EventData> get copyWith =>
      throw _privateConstructorUsedError;
}
