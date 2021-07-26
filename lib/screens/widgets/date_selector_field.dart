import 'package:flutter/material.dart';
import 'package:riverpod_crud/common/date_formatter.dart';
import 'package:riverpod_crud/models/event_model.dart';

class DateSelectorField extends StatelessWidget {
  final EventModel model;
  final void Function(DateTime?) onDateChanged;

  const DateSelectorField({
    required this.model,
    required this.onDateChanged,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final date = model.data.date;
    final dateFormatted = formatDate(date);

    return Row(
      children: [
        const Icon(Icons.calendar_today),
        const SizedBox(width: 16),
        Expanded(child: Text(dateFormatted)),
        OutlinedButton(
          onPressed: () async {
            final newDate = await showDatePicker(
              context: context,
              initialDate: date ?? DateTime.now(),
              firstDate: DateTime.now().subtract(const Duration(days: 1000)),
              lastDate: DateTime.now().add(const Duration(days: 1000)),
            );

            if (newDate != null) {
              onDateChanged(newDate);
            }
          },
          child: const Text('Set'),
        ),
      ],
    );
  }
}
