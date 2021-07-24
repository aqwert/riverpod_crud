import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_crud/common/date_formatter.dart';
import 'package:riverpod_crud/data/workable.dart';
import 'package:riverpod_crud/providers/event_list_state_provider.dart';
import 'package:riverpod_crud/providers/event_state_provider.dart';
import 'package:riverpod_crud/providers/selected_event_id_provider.dart';
import 'package:riverpod_crud/screens/views/selected_event_detail_view.dart';

bool _isTablet(BuildContext context) {
  // Can swap this out to use a more global approach / package
  return MediaQuery.of(context).size.width > 500;
}

/// Initial list of events. When the form is a tablet it will display the List with
/// a panel on trhe right showing its details.
class EventListScreen extends StatelessWidget {
  const EventListScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Events'),
        actions: _isTablet(context)
            ? [
                const _TabletEditAction(),
              ]
            : null,
      ),
      floatingActionButton: Padding(
        padding: const EdgeInsets.all(8.0),
        child: FloatingActionButton(
          onPressed: () => Navigator.of(context).pushNamed(
            '/eventCreate',
          ),
          child: const Icon(Icons.add),
        ),
      ),
      floatingActionButtonLocation: _isTablet(context)
          ? _OffsetFloatingActionButtonLocation(
              location: FloatingActionButtonLocation.miniStartDocked,
              offsetX: 175,
            )
          : null,
      body: _isTablet(context)
          ? const _EventListDetail()
          : _EventList(
              onEventSelected: () =>
                  Navigator.of(context).pushNamed('/eventDetail'),
            ),
    );
  }
}

class _EventListDetail extends StatelessWidget {
  const _EventListDetail({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: const [
        SizedBox(
          width: 300,
          child: _EventList(),
        ),
        VerticalDivider(width: 0, thickness: 4),
        Expanded(
          child: Padding(
            padding: EdgeInsets.all(8.0),
            child: SelectedEventDetailView(),
          ),
        ),
      ],
    );
  }
}

class _EventList extends ConsumerWidget {
  final void Function()? onEventSelected;

  const _EventList({this.onEventSelected, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final listModel = ref.watch(eventListStateProvider);

    return Column(
      children: [
        ListTile(title: Text('Events: ${listModel.events.length}')),
        const Divider(height: 0, thickness: 2),
        Expanded(
          child: ListView.builder(
            itemCount: listModel.events.length,
            itemBuilder: (context, index) => _ListItemTile(
              eventId: listModel.events[index].id,
              index: index,
              onSelectEvent: (eventId) {
                ref.read(selectedEventProvider.notifier).selectedId = eventId;

                onEventSelected?.call();
              },
            ),
          ),
        ),
      ],
    );
  }
}

class _ListItemTile extends ConsumerWidget {
  final String eventId;
  final int index;
  final void Function(String? eventId) onSelectEvent;

  const _ListItemTile({
    required this.eventId,
    required this.index,
    required this.onSelectEvent,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final model = ref.watch(eventStateProvider(eventId));
    final selected = ref.watch(selectedEventProvider);

    final dateFormatted = formatDate(model.data.date);

    return ListTile(
      enabled: model.workState.isReady,
      selected: selected == model.data.id && _isTablet(context),
      title: Text(model.data.title ?? 'Event ${index + 1}'),
      subtitle: Text(dateFormatted),
      onTap: () => onSelectEvent(eventId),
    );
  }
}

class _OffsetFloatingActionButtonLocation extends FloatingActionButtonLocation {
  final FloatingActionButtonLocation location;
  final double offsetX; // Offset in X direction
  final double offsetY; // Offset in Y direction
  _OffsetFloatingActionButtonLocation({
    required this.location,
    this.offsetX = 0,
    this.offsetY = 0,
  });

  @override
  Offset getOffset(ScaffoldPrelayoutGeometry scaffoldGeometry) {
    Offset offset = location.getOffset(scaffoldGeometry);
    return Offset(offset.dx + offsetX, offset.dy + offsetY);
  }
}

class _TabletEditAction extends ConsumerWidget {
  const _TabletEditAction({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final selected = ref.watch(selectedEventProvider);

    if (selected == null) {
      return const SizedBox.shrink();
    }

    return IconButton(
      onPressed: () => Navigator.of(context).pushNamed('/eventEdit'),
      icon: const Icon(Icons.edit),
    );
  }
}
