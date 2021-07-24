import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:riverpod_crud/data/workable.dart';
import 'package:riverpod_crud/providers/event_edit_provider.dart';
import 'package:riverpod_crud/providers/selected_event_id_provider.dart';
import 'package:riverpod_crud/screens/widgets/event_update_form.dart';
import 'package:riverpod_crud/screens/widgets/event_update_scaffold.dart';

/// Screen for editing the event
class EventEditScreen extends ConsumerWidget {
  const EventEditScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final eventId = ref.watch(selectedEventProvider);

    if (eventId == null) {
      return Scaffold(
        appBar: AppBar(
          title: const Text('Edit Event'),
        ),
        body: const Center(
          child: Text('Unable to edit event (unknown'),
        ),
      );
    }

    final model = ref.watch(eventEditProvider(eventId));

    return WillPopScope(
      onWillPop: () async => model.workState.isReady,
      child: EventUpdateScaffold(
        title: const Text('Edit Event'),
        model: model,
        onUpdate: () => _updateEvent(context, ref, eventId),
        body: _CreateContent(
          eventId: eventId,
          onDelete: () => _deleteEvent(context, ref, eventId),
        ),
      ),
    );
  }

  Future<void> _updateEvent(
      BuildContext context, WidgetRef ref, String eventId) async {
    final notifier = ref.read(eventEditProvider(eventId).notifier);
    await notifier.save();

    Navigator.of(context).pop();
  }

  Future<void> _deleteEvent(
      BuildContext context, WidgetRef ref, String eventId) async {
    final notifier = ref.read(eventEditProvider(eventId).notifier);
    if (await notifier.delete()) {
      ref.read(selectedEventProvider.notifier).selectedId = null;
    }
    Navigator.of(context).pop();
    // This additional pop won't work on tablet
    // Navigator.of(context).pop();
  }
}

class _CreateContent extends HookConsumerWidget {
  final String eventId;
  final VoidCallback onDelete;

  const _CreateContent({
    required this.eventId,
    required this.onDelete,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final model = ref.watch(eventEditProvider(eventId));

    return Column(
      children: [
        Expanded(
          child: EventUpdateForm(
            model: model,
            onTitleChanged: (value) => ref
                .read(eventEditProvider(eventId).notifier)
                .updateFrom(model.data.copyWith(title: value)),
            onDateChanged: (newDate) => ref
                .read(eventEditProvider(eventId).notifier)
                .updateFrom(model.data.copyWith(date: newDate)),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: ElevatedButton.icon(
              onPressed: model.workState.isWorking ? null : onDelete,
              icon: const Icon(Icons.delete_forever),
              label: const Text('DELETE EVENT'),
              style: ElevatedButton.styleFrom(primary: Colors.red)),
        ),
      ],
    );
  }
}
