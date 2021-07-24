import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:riverpod_crud/data/dated_identity_data.dart';
import 'package:riverpod_crud/data/workable.dart';

part 'event_list_model.freezed.dart';

@freezed
class EventListModel with _$EventListModel {
  const factory EventListModel({
    @Default([]) List<DatedIdentityData> events,
    required Workable workState,
  }) = _EventListModel;

  const EventListModel._();
}
