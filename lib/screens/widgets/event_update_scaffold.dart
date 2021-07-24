import 'package:flutter/material.dart';
import 'package:riverpod_crud/data/workable.dart';
import 'package:riverpod_crud/models/event_model.dart';

class EventUpdateScaffold extends StatelessWidget {
  final EventModel model;
  final VoidCallback onUpdate;
  final Widget? body;
  final Widget? title;

  const EventUpdateScaffold({
    required this.model,
    required this.onUpdate,
    this.title,
    this.body,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final body = this.body;
    return Scaffold(
      body: body == null ? null : SafeArea(child: body),
      appBar: AppBar(
        title: title,
        leading: IconButton(
          onPressed: model.workState.isReady && Navigator.canPop(context)
              ? () => Navigator.pop(context)
              : null,
          icon: const Icon(Icons.close),
        ),
        actions: [
          IconButton(
            onPressed: model.workState.isReady ? onUpdate : null,
            icon: const Icon(Icons.done),
          )
        ],
      ),
    );
  }
}
