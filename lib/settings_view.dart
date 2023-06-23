import 'package:flutter/material.dart';

class SettingsView extends StatelessWidget {
  const SettingsView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   title: const Text('Settings'),
      // ),
      body: Center(
        child: IconButton(
          onPressed: () {
            Navigator.pop<Map>(
              context,
              {
                'name': 'Flutter',
                'age': 22,
              },
            );
          },
          icon: const Icon(Icons.settings),
        ),
      ),
    );
  }
}
