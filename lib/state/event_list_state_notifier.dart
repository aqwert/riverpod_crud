import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_crud/data/dated_identity_data.dart';
import 'package:riverpod_crud/data/workable.dart';
import 'package:riverpod_crud/models/event_list_model.dart';

/// State notifier that handles the list of events
class EventListStateNotifier extends StateNotifier<EventListModel> {
  EventListStateNotifier()
      : super(const EventListModel(workState: Workable.ready()));

  void removeEvent(String? eventId) {
    if (eventId != null) {
      state = state.copyWith(
        events: _sort([
          ...state.events.where((e) => e.id != eventId),
        ]),
        workState: const Workable.ready(),
      );
    }
  }

  void addEvent(DatedIdentityData data) {
    state = state.copyWith(
      events: _sort([
        ...state.events,
        data,
      ]),
      workState: const Workable.ready(),
    );
  }

  void updateFrom(DatedIdentityData data) {
    if (!mounted) {
      return;
    }

    final allEvents = [...state.events];
    final index = allEvents.indexWhere((e) => e.id == data.id);
    if (index != -1) {
      final dateChanged = data.date != allEvents.elementAt(index).date;

      if (dateChanged) {
        allEvents.removeAt(index);
        allEvents.add(data);
        state = state.copyWith(
          events: _sort(allEvents),
          workState: const Workable.ready(),
        );
      }
    } else {
      addEvent(data);
    }
  }

  List<DatedIdentityData> _sort(List<DatedIdentityData> items) {
    return List.unmodifiable(items
      ..sort(
        (a, b) => a.compareTo(b),
      ));
  }
}
