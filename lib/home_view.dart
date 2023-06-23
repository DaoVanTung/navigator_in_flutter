import 'package:flutter/material.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home'),
      ),
      drawer: Drawer(
        child: Column(
          children: [
            Container(
              height: 200,
              color: Colors.blue,
            ),
            ListTile(
              leading: const Icon(Icons.settings),
              title: const Text('Settings'),
              trailing: const Icon(Icons.navigate_next),
              onTap: () async {
                final result = await Navigator.pushNamed(context, '/settings');
                debugPrint(result.toString());
              },
            ),
            ListTile(
              leading: const Icon(Icons.person),
              title: const Text('Profile'),
              trailing: const Icon(Icons.navigate_next),
              onTap: () async {
                final result = await Navigator.pushNamed(
                  context,
                  '/profile',
                  arguments: {
                    'name': 'Flutter',
                    'age': 23,
                  },
                );
                print(result);
              },
            ),
          ],
        ),
      ),
      body: Center(
        child: IconButton(
          onPressed: () {
            // if (Navigator.canPop(context)) {

            // }
            // if (Navigator.canPop(context)) {
            //   Navigator.pop(context);
            // }
          },
          icon: const Icon(Icons.close),
        ),
      ),
    );
  }
}
