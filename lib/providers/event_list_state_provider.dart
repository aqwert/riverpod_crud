import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_crud/models/event_list_model.dart';
import 'package:riverpod_crud/state/event_list_state_notifier.dart';

/// Provider for obtaining the [EventListStateNotifier] which
/// holds the [EventListModel] model
final eventListStateProvider =
    StateNotifierProvider<EventListStateNotifier, EventListModel>(
  (ref) => EventListStateNotifier(),
);
