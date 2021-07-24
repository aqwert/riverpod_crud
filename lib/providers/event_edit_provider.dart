import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_crud/data/workable.dart';
import 'package:riverpod_crud/models/event_model.dart';
import 'package:riverpod_crud/providers/event_state_provider.dart';
import 'package:riverpod_crud/state/event_state_notifier.dart';

/// Provider for obtaining the [EventStateNotifier] for editing the event
final eventEditProvider = StateNotifierProvider.autoDispose
    .family<EventStateNotifier, EventModel, String>(
  (ref, id) {
    final model = ref.read(eventStateProvider(id));

    return EventStateNotifier(
      ref.read,
      EventModel(
        data: model.data,
        workState: const Workable.ready(),
      ),
    );
  },
);
