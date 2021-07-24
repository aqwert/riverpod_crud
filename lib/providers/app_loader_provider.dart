import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_crud/commands/query_event_list_command.dart';
import 'package:riverpod_crud/providers/event_state_provider.dart';

/// Provider to initially load data for the app. This can be
/// calls to an API, setup initial state or initialize components.
final appLoaderProvider = FutureProvider<bool>((ref) async {
  final command = ref.read(queryEventListCommandProvider);
  final items = await command.execute();

  for (final item in items) {
    final id = item.id;
    if (id != null) {
      ref.read(eventStateProvider(id).notifier).updateFrom(
            item,
          );
    }
  }

  return true;
});
