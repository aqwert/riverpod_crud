import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_crud/data/event_data.dart';

/// Provider for obtaining a new [QueryEventListCommand] each time.
final queryEventListCommandProvider =
    Provider.autoDispose<QueryEventListCommand>((ref) {
  return QueryEventListCommand();
});

/// Queries for the list of events.
class QueryEventListCommand {
  Future<List<EventData>> execute() async {
    // Change to make an API call or call local DB
    await Future.delayed(const Duration(seconds: 1));

    // test data
    return _seedData;
  }
}

List<EventData> _seedData = [
  EventData(
    date: DateTime.now(),
    id: 'abc123',
    title: 'Hi there',
  ),
  EventData(
    date: DateTime.now().subtract(const Duration(days: 5)),
    id: 'abc789',
    title: 'Hello world',
  ),
];
