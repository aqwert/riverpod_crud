import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_crud/commands/delete_event_command.dart';
import 'package:riverpod_crud/commands/update_event_command.dart';
import 'package:riverpod_crud/data/dated_identity_data.dart';
import 'package:riverpod_crud/data/event_data.dart';
import 'package:riverpod_crud/models/event_model.dart';
import 'package:riverpod_crud/providers/event_list_state_provider.dart';
import 'package:riverpod_crud/providers/event_state_provider.dart';
import 'package:uuid/uuid.dart';

var _uuid = const Uuid();

/// State notifier that manages the data of the event.
class EventStateNotifier extends StateNotifier<EventModel> {
  final Reader _read;

  EventStateNotifier(this._read, EventModel state) : super(state);

  void setWorking() {
    state = state.working();
  }

  void setReady() {
    state = state.ready(state.data);
  }

  void setInvalid() {
    state = state.invlalid();
  }

  void updateFrom(EventData data) {
    if (!mounted) {
      return;
    }
    assert(data.id == state.data.id);

    state = state.copyWith(data: data);

    if (data.id != null) {
      final listModel = _read(eventListStateProvider.notifier);
      listModel.updateFrom(
        DatedIdentityData(
          date: data.date!,
          id: data.id!,
        ),
      );
    }
  }

  Future<bool> delete() async {
    if (!mounted) {
      return false;
    }

    state = state.working();

    try {
      final stateData = state.data;

      final id = stateData.id;

      if (id != null) {
        final stateModel = _read(eventStateProvider(id).notifier);
        stateModel.setWorking();

        final command = _read(deleteEventCommandProvider);
        await command.execute(id);

        // The model is no longer valid as it is deleted. Any reference to the model in this state should not be used
        stateModel.setInvalid();

        // remove from the list
        final listModel = _read(eventListStateProvider.notifier);
        listModel.removeEvent(stateData.id);

        return true;
      }
      return false;
    } catch (err) {
      state = state.error('Delete team event');
      return false;
    }
  }

  Future<String?> save() async {
    if (!mounted) {
      return null;
    }
    state = state.working();

    try {
      final stateData = state.data;

      final id = stateData.id ?? _uuid.v1();
      final data = stateData.copyWith(id: id);

      // This will allow the list item to react to when the item is updating
      final stateModel = _read(eventStateProvider(id).notifier);
      stateModel.setWorking();

      final command = _read(updateEventCommandProvider);
      await command.execute(data);

      stateModel.updateFrom(data);
      stateModel.setReady();

      state = state.ready(data);

      return id;
    } catch (err) {
      state = state.error('Save team event');

      return null;
    }
  }
}
