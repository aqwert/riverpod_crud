import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_crud/providers/selected_event_id_provider.dart';
import 'package:riverpod_crud/screens/views/selected_event_detail_view.dart';

/// Screen showing the details of the event
class EventDetailScreen extends ConsumerWidget {
  const EventDetailScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final eventId = ref.watch(selectedEventProvider);
    return Scaffold(
      appBar: AppBar(
        title: const Text('Event Details'),
        actions: eventId == null
            ? null
            : [
                IconButton(
                  onPressed: () =>
                      Navigator.of(context).pushNamed('/eventEdit'),
                  icon: const Icon(Icons.edit),
                )
              ],
      ),
      body: const SelectedEventDetailView(),
    );
  }
}
