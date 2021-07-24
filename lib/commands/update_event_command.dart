import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_crud/data/event_data.dart';

/// Provider for obtaining a new [UpdateEventCommand] each time
final updateEventCommandProvider =
    Provider.autoDispose<UpdateEventCommand>((ref) {
  return UpdateEventCommand();
});

/// Update the event.
class UpdateEventCommand {
  Future<void> execute(EventData data) async {
    // Change to make an API call or call local DB
    await Future.delayed(const Duration(seconds: 1));
  }
}
