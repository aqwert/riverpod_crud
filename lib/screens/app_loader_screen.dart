import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_crud/providers/app_loader_provider.dart';

/// First screen showns as a loading screen. Will call the [appLoaderProvider] providef
/// to initally load data on startup
class AppLoaderScreen extends ConsumerWidget {
  const AppLoaderScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final config = ref.watch(appLoaderProvider);

    ref.listen<AsyncValue<bool>>(appLoaderProvider, (value) {
      value.whenData((value) {
        if (value) {
          Navigator.of(context).pushNamedAndRemoveUntil(
            '/eventList',
            (route) => false,
          );
        }
      });
    });

    return Scaffold(
      body: Center(
        child: config.when(
          loading: () => const CircularProgressIndicator(),
          error: (err, stack) => Text('Error: $err'),
          data: (config) {
            if (!config) {
              return const Text('Unable to load.');
            }
            return const SizedBox.shrink();
          },
        ),
      ),
    );
  }
}
