import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:riverpod_crud/data/event_data.dart';
import 'package:riverpod_crud/data/workable.dart';

part 'event_model.freezed.dart';

@freezed
class EventModel with _$EventModel {
  const factory EventModel({
    required Workable workState,
    required EventData data,
  }) = _EventModel;

  const EventModel._();
}

extension EventModelExt on EventModel {
  EventModel ready(EventData data) => copyWith(
        data: data,
        workState: const Workable.ready(),
      );

  EventModel error([String? msg]) => copyWith(
        workState: Workable.error(msg),
      );
  EventModel working() => copyWith(
        workState: const Workable.working(),
      );
  EventModel invlalid() => copyWith(
        workState: const Workable.invalid(),
      );
}
