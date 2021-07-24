import 'package:flutter_riverpod/flutter_riverpod.dart';

/// Provider for obtaining a new [DeleteEventCommand] each time
final deleteEventCommandProvider =
    Provider.autoDispose<DeleteEventCommand>((ref) {
  return DeleteEventCommand();
});

/// Deletes the event.
class DeleteEventCommand {
  Future<void> execute(String id) async {
    // Change to make an API call or call local DB
    await Future.delayed(const Duration(seconds: 1));
  }
}
