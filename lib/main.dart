import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_crud/screens/app_loader_screen.dart';
import 'package:riverpod_crud/screens/event_create_screen.dart';
import 'package:riverpod_crud/screens/event_detail_screen.dart';
import 'package:riverpod_crud/screens/event_edit_screen.dart';
import 'package:riverpod_crud/screens/event_list_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const ProviderScope(
      child: AppWidget(),
    );
  }
}

class AppWidget extends StatelessWidget {
  const AppWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Riverpod CRUD',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        accentColor: Colors.deepOrangeAccent,
      ),
      initialRoute: '/',
      onGenerateRoute: (RouteSettings settings) {
        switch (settings.name) {
          case '/':
            return MaterialPageRoute(
                builder: (context) => const AppLoaderScreen());
          case '/eventList':
            return MaterialPageRoute(
                builder: (context) => const EventListScreen());
          case '/eventDetail':
            return MaterialPageRoute(
                builder: (context) => const EventDetailScreen());
          case '/eventCreate':
            return MaterialPageRoute(
                fullscreenDialog: true,
                builder: (context) => const EventCreateScreen());
          case '/eventEdit':
            return MaterialPageRoute(
                fullscreenDialog: true,
                builder: (context) => const EventEditScreen());
        }
      },
    );
  }
}
