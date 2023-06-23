import 'package:flutter/material.dart';

import 'home_view.dart';
import 'profile_view.dart';
import 'settings_view.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Navigator in Flutter',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
          seedColor: Colors.blue,
        ),
      ),
      initialRoute: '/',
      onGenerateRoute: (settings) {
        return MaterialPageRoute(
          builder: (context) {
            switch (settings.name) {
              case '/':
                return const HomeView();
              case '/settings':
                return const SettingsView();
              case '/profile':
                final arguments = settings.arguments as Map<String, dynamic>;
                return ProfileView(name: arguments['name']);
              default:
                return const HomeView();
            }
          },
        );
      },
    );
  }
}
