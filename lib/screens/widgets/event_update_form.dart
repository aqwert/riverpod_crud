import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:riverpod_crud/models/event_model.dart';
import 'package:riverpod_crud/screens/widgets/date_selector_field.dart';

class EventUpdateForm extends HookWidget {
  final EventModel model;
  final void Function(String) onTitleChanged;
  final void Function(DateTime?) onDateChanged;

  const EventUpdateForm({
    required this.model,
    required this.onTitleChanged,
    required this.onDateChanged,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final titleController = useTextEditingController.fromValue(
      TextEditingValue(
        text: model.data.title ?? '',
      ),
    );

    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        children: [
          TextField(
            controller: titleController,
            keyboardType: TextInputType.number,
            maxLength: 50,
            decoration: const InputDecoration(
              labelText: 'Event Title',
              hintText: 'Event Title',
              icon: Icon(Icons.info),
            ),
            onChanged: onTitleChanged,
          ),
          const SizedBox(height: 8),
          DateSelectorField(
            model: model,
            onDateChanged: onDateChanged,
          ),
        ],
      ),
    );
  }
}
