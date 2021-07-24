import 'package:freezed_annotation/freezed_annotation.dart';

part 'event_data.freezed.dart';
part 'event_data.g.dart';

@freezed
class EventData with _$EventData, Comparable<EventData> {
  const factory EventData({
    String? id,
    DateTime? date,
    String? title,
  }) = _EventData;

  const EventData._();

  factory EventData.fromJson(Map<String, dynamic> json) =>
      _$EventDataFromJson(json);

  @override
  int compareTo(EventData other) {
    final otherDate = other.date;
    final localDate = date;
    if (otherDate == null && localDate == null) {
      return 0;
    }
    if (otherDate == null) {
      return -1;
    }
    if (localDate == null) {
      return 1;
    }
    return localDate.compareTo(otherDate);
  }
}
