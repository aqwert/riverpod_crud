import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_crud/data/event_data.dart';
import 'package:riverpod_crud/data/workable.dart';
import 'package:riverpod_crud/models/event_model.dart';
import 'package:riverpod_crud/state/event_state_notifier.dart';

/// Provider to create a new instance of [EventStateNotifier] when creating
/// a new event
final eventCreateProvider =
    StateNotifierProvider.autoDispose<EventStateNotifier, EventModel>(
  (ref) {
    return EventStateNotifier(
      ref.read,
      EventModel(
        data: EventData(
          date: DateTime.now(),
        ),
        workState: const Workable.ready(),
      ),
    );
  },
);
