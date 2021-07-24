import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_crud/state/id_state_notifier.dart';

/// Provider for obtaining the [IdStateNotifier] which represents the currently
/// selected event id.
final selectedEventProvider = StateNotifierProvider<IdStateNotifier, String?>(
  (ref) => IdStateNotifier(),
);
