import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_crud/data/event_data.dart';
import 'package:riverpod_crud/data/workable.dart';
import 'package:riverpod_crud/models/event_model.dart';
import 'package:riverpod_crud/state/event_state_notifier.dart';

/// Provider for obtaining the [EventStateNotifier] for each [EventModel] based
/// off the id of the event
final eventStateProvider =
    StateNotifierProvider.family<EventStateNotifier, EventModel, String>(
  (ref, id) => EventStateNotifier(
    ref.read,
    EventModel(
      data: EventData(
        id: id,
      ),
      workState: const Workable.ready(),
    ),
  ),
);
