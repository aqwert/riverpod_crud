// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'selected_identifier_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$SelectedIdentifierModelTearOff {
  const _$SelectedIdentifierModelTearOff();

  _SelectedIdentifierModel call({String? selectedId}) {
    return _SelectedIdentifierModel(
      selectedId: selectedId,
    );
  }
}

/// @nodoc
const $SelectedIdentifierModel = _$SelectedIdentifierModelTearOff();

/// @nodoc
mixin _$SelectedIdentifierModel {
  String? get selectedId => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $SelectedIdentifierModelCopyWith<SelectedIdentifierModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SelectedIdentifierModelCopyWith<$Res> {
  factory $SelectedIdentifierModelCopyWith(SelectedIdentifierModel value,
          $Res Function(SelectedIdentifierModel) then) =
      _$SelectedIdentifierModelCopyWithImpl<$Res>;
  $Res call({String? selectedId});
}

/// @nodoc
class _$SelectedIdentifierModelCopyWithImpl<$Res>
    implements $SelectedIdentifierModelCopyWith<$Res> {
  _$SelectedIdentifierModelCopyWithImpl(this._value, this._then);

  final SelectedIdentifierModel _value;
  // ignore: unused_field
  final $Res Function(SelectedIdentifierModel) _then;

  @override
  $Res call({
    Object? selectedId = freezed,
  }) {
    return _then(_value.copyWith(
      selectedId: selectedId == freezed
          ? _value.selectedId
          : selectedId // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
abstract class _$SelectedIdentifierModelCopyWith<$Res>
    implements $SelectedIdentifierModelCopyWith<$Res> {
  factory _$SelectedIdentifierModelCopyWith(_SelectedIdentifierModel value,
          $Res Function(_SelectedIdentifierModel) then) =
      __$SelectedIdentifierModelCopyWithImpl<$Res>;
  @override
  $Res call({String? selectedId});
}

/// @nodoc
class __$SelectedIdentifierModelCopyWithImpl<$Res>
    extends _$SelectedIdentifierModelCopyWithImpl<$Res>
    implements _$SelectedIdentifierModelCopyWith<$Res> {
  __$SelectedIdentifierModelCopyWithImpl(_SelectedIdentifierModel _value,
      $Res Function(_SelectedIdentifierModel) _then)
      : super(_value, (v) => _then(v as _SelectedIdentifierModel));

  @override
  _SelectedIdentifierModel get _value =>
      super._value as _SelectedIdentifierModel;

  @override
  $Res call({
    Object? selectedId = freezed,
  }) {
    return _then(_SelectedIdentifierModel(
      selectedId: selectedId == freezed
          ? _value.selectedId
          : selectedId // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$_SelectedIdentifierModel extends _SelectedIdentifierModel {
  const _$_SelectedIdentifierModel({this.selectedId}) : super._();

  @override
  final String? selectedId;

  @override
  String toString() {
    return 'SelectedIdentifierModel(selectedId: $selectedId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _SelectedIdentifierModel &&
            (identical(other.selectedId, selectedId) ||
                const DeepCollectionEquality()
                    .equals(other.selectedId, selectedId)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(selectedId);

  @JsonKey(ignore: true)
  @override
  _$SelectedIdentifierModelCopyWith<_SelectedIdentifierModel> get copyWith =>
      __$SelectedIdentifierModelCopyWithImpl<_SelectedIdentifierModel>(
          this, _$identity);
}

abstract class _SelectedIdentifierModel extends SelectedIdentifierModel {
  const factory _SelectedIdentifierModel({String? selectedId}) =
      _$_SelectedIdentifierModel;
  const _SelectedIdentifierModel._() : super._();

  @override
  String? get selectedId => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$SelectedIdentifierModelCopyWith<_SelectedIdentifierModel> get copyWith =>
      throw _privateConstructorUsedError;
}
