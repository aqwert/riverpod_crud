// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'dated_identity_data.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$DatedIdentityDataTearOff {
  const _$DatedIdentityDataTearOff();

  _DatedIdentityData call({required DateTime date, required String id}) {
    return _DatedIdentityData(
      date: date,
      id: id,
    );
  }
}

/// @nodoc
const $DatedIdentityData = _$DatedIdentityDataTearOff();

/// @nodoc
mixin _$DatedIdentityData {
  DateTime get date => throw _privateConstructorUsedError;
  String get id => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $DatedIdentityDataCopyWith<DatedIdentityData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DatedIdentityDataCopyWith<$Res> {
  factory $DatedIdentityDataCopyWith(
          DatedIdentityData value, $Res Function(DatedIdentityData) then) =
      _$DatedIdentityDataCopyWithImpl<$Res>;
  $Res call({DateTime date, String id});
}

/// @nodoc
class _$DatedIdentityDataCopyWithImpl<$Res>
    implements $DatedIdentityDataCopyWith<$Res> {
  _$DatedIdentityDataCopyWithImpl(this._value, this._then);

  final DatedIdentityData _value;
  // ignore: unused_field
  final $Res Function(DatedIdentityData) _then;

  @override
  $Res call({
    Object? date = freezed,
    Object? id = freezed,
  }) {
    return _then(_value.copyWith(
      date: date == freezed
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as DateTime,
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$DatedIdentityDataCopyWith<$Res>
    implements $DatedIdentityDataCopyWith<$Res> {
  factory _$DatedIdentityDataCopyWith(
          _DatedIdentityData value, $Res Function(_DatedIdentityData) then) =
      __$DatedIdentityDataCopyWithImpl<$Res>;
  @override
  $Res call({DateTime date, String id});
}

/// @nodoc
class __$DatedIdentityDataCopyWithImpl<$Res>
    extends _$DatedIdentityDataCopyWithImpl<$Res>
    implements _$DatedIdentityDataCopyWith<$Res> {
  __$DatedIdentityDataCopyWithImpl(
      _DatedIdentityData _value, $Res Function(_DatedIdentityData) _then)
      : super(_value, (v) => _then(v as _DatedIdentityData));

  @override
  _DatedIdentityData get _value => super._value as _DatedIdentityData;

  @override
  $Res call({
    Object? date = freezed,
    Object? id = freezed,
  }) {
    return _then(_DatedIdentityData(
      date: date == freezed
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as DateTime,
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_DatedIdentityData extends _DatedIdentityData {
  const _$_DatedIdentityData({required this.date, required this.id})
      : super._();

  @override
  final DateTime date;
  @override
  final String id;

  @override
  String toString() {
    return 'DatedIdentityData(date: $date, id: $id)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _DatedIdentityData &&
            (identical(other.date, date) ||
                const DeepCollectionEquality().equals(other.date, date)) &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(date) ^
      const DeepCollectionEquality().hash(id);

  @JsonKey(ignore: true)
  @override
  _$DatedIdentityDataCopyWith<_DatedIdentityData> get copyWith =>
      __$DatedIdentityDataCopyWithImpl<_DatedIdentityData>(this, _$identity);
}

abstract class _DatedIdentityData extends DatedIdentityData {
  const factory _DatedIdentityData(
      {required DateTime date, required String id}) = _$_DatedIdentityData;
  const _DatedIdentityData._() : super._();

  @override
  DateTime get date => throw _privateConstructorUsedError;
  @override
  String get id => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$DatedIdentityDataCopyWith<_DatedIdentityData> get copyWith =>
      throw _privateConstructorUsedError;
}
