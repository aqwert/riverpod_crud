// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'workable.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ReadyState _$_$ReadyStateFromJson(Map<String, dynamic> json) {
  return _$ReadyState();
}

Map<String, dynamic> _$_$ReadyStateToJson(_$ReadyState instance) =>
    <String, dynamic>{};

_$WorkingState _$_$WorkingStateFromJson(Map<String, dynamic> json) {
  return _$WorkingState();
}

Map<String, dynamic> _$_$WorkingStateToJson(_$WorkingState instance) =>
    <String, dynamic>{};

_$InvalidState _$_$InvalidStateFromJson(Map<String, dynamic> json) {
  return _$InvalidState();
}

Map<String, dynamic> _$_$InvalidStateToJson(_$InvalidState instance) =>
    <String, dynamic>{};

_$ErrorDetailState _$_$ErrorDetailStateFromJson(Map<String, dynamic> json) {
  return _$ErrorDetailState(
    json['message'] as String?,
  );
}

Map<String, dynamic> _$_$ErrorDetailStateToJson(_$ErrorDetailState instance) =>
    <String, dynamic>{
      'message': instance.message,
    };
