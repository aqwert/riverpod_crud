// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'event_data.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_EventData _$_$_EventDataFromJson(Map<String, dynamic> json) {
  return _$_EventData(
    id: json['id'] as String?,
    date: json['date'] == null ? null : DateTime.parse(json['date'] as String),
    title: json['title'] as String?,
  );
}

Map<String, dynamic> _$_$_EventDataToJson(_$_EventData instance) =>
    <String, dynamic>{
      'id': instance.id,
      'date': instance.date?.toIso8601String(),
      'title': instance.title,
    };
