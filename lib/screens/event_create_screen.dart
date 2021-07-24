import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:riverpod_crud/data/workable.dart';
import 'package:riverpod_crud/providers/event_create_provider.dart';
import 'package:riverpod_crud/screens/widgets/event_update_form.dart';
import 'package:riverpod_crud/screens/widgets/event_update_scaffold.dart';

/// Screen for creating a new event
class EventCreateScreen extends ConsumerWidget {
  const EventCreateScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final model = ref.watch(eventCreateProvider);
    return WillPopScope(
      onWillPop: () async => model.workState.isReady,
      child: EventUpdateScaffold(
        title: const Text('Create Event'),
        model: model,
        onUpdate: () => _createEvent(context, ref),
        body: const _CreateContent(),
      ),
    );
  }

  Future<void> _createEvent(BuildContext context, WidgetRef ref) async {
    final notifier = ref.read(eventCreateProvider.notifier);
    final id = await notifier.save();

    if (id == null) {
      // Can display error message inline
      return;
    }

    Navigator.of(context).pop();
  }
}

class _CreateContent extends HookConsumerWidget {
  const _CreateContent({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final model = ref.watch(eventCreateProvider);

    return EventUpdateForm(
      model: model,
      onTitleChanged: (value) => ref
          .read(eventCreateProvider.notifier)
          .updateFrom(model.data.copyWith(title: value)),
      onDateChanged: (newDate) => ref
          .read(eventCreateProvider.notifier)
          .updateFrom(model.data.copyWith(date: newDate)),
    );
  }
}
