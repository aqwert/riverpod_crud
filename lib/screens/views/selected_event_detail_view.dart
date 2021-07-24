import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_crud/common/date_formatter.dart';
import 'package:riverpod_crud/providers/event_state_provider.dart';
import 'package:riverpod_crud/providers/selected_event_id_provider.dart';

/// View used to display the event details. it is used within the [EventDetailsPage]
/// but also for the Main List / Detail view for tablet
class SelectedEventDetailView extends ConsumerWidget {
  const SelectedEventDetailView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final eventId = ref.watch(selectedEventProvider);

    return eventId == null
        ? const Center(
            child: Padding(
              padding: EdgeInsets.all(16.0),
              child: Text('No Event Selected'),
            ),
          )
        : _DetailContent(eventId);
  }
}

class _DetailContent extends ConsumerWidget {
  final String eventId;

  const _DetailContent(this.eventId, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final model = ref.watch(eventStateProvider(eventId));

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.fromLTRB(8, 8, 8, 0),
          child: Text(
            'Title',
            style: Theme.of(context).textTheme.caption,
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(
            model.data.title ?? '(No title)',
            style: Theme.of(context).textTheme.headline5,
          ),
        ),
        Padding(
          padding: const EdgeInsets.fromLTRB(8, 8, 8, 0),
          child: Text(
            'Date',
            style: Theme.of(context).textTheme.caption,
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(
            formatDate(model.data.date),
            style: Theme.of(context).textTheme.headline6,
          ),
        ),
      ],
    );
  }
}
