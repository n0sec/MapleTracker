import 'package:flutter/material.dart';

class AppBarDrawer extends StatelessWidget {
  const AppBarDrawer({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
        actions: [
          IconButton(
            icon: const Icon(Icons.settings),
            onPressed: () => Navigator.pushNamed(context, '/settings'),
          ),
        ],
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            DrawerHeader(
              decoration: BoxDecoration(
                color: Theme.of(context).primaryColor,
              ),
              child: const Text(
                'Menu',
                style: TextStyle(
                  fontSize: 24,
                ),
              ),
            ),
            ListTile(
              leading: const Icon(Icons.home),
              title: const Text('Home'),
              onTap: () => {
                // If the current route is '/' (Home)
                // Just close the drawer
                if (ModalRoute.of(context)!.settings.name == '/')
                  {
                    Navigator.pop(context),
                  }
                // Else, push '/' to the routes
                else
                  {
                    Navigator.pushReplacementNamed(context, '/'),
                  }
              },
            ),
            ListTile(
              leading: const Icon(Icons.view_day_outlined),
              title: const Text('Dailies'),
              onTap: () => {}, // TODO: Open the Dailies Screen
            ),
            ListTile(
              leading: const Icon(Icons.view_week_outlined),
              title: const Text('Weeklies'), // TODO: Open the Weeklies Screen
              onTap: () => {},
            ),
          ],
        ),
      ),
    );
  }
}
