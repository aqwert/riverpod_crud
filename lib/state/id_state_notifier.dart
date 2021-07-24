import 'package:flutter_riverpod/flutter_riverpod.dart';

/// Simole state notifier representing an id
class IdStateNotifier extends StateNotifier<String?> {
  IdStateNotifier({String? id}) : super(id);

  set selectedId(String? id) {
    if (mounted) {
      state = id;
    }
  }
}
