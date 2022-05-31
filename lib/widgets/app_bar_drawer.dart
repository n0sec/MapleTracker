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
                if (ModalRoute.of(context)!.settings.name == '/home')
                  {
                    Navigator.pop(context),
                  }
                // Else, push '/' to the routes
                else
                  {
                    Navigator.pushReplacementNamed(context, '/home'),
                  }
              },
            ),
            ExpansionTile(
              leading: const Icon(Icons.view_day_outlined),
              trailing: const Icon(Icons.arrow_drop_down),
              title: const Text('Dailies'),
              children: [
                ListTile(
                  title: const Text('Bosses'),
                  onTap: () => {}, // TODO: Open the Daily Bosses Screen
                ),
                ListTile(
                  title: const Text('Tasks'),
                  onTap: () => {}, // TODO: Open the Daily Tasks Screen
                ),
                ListTile(
                  title: const Text('Arcane River'),
                  onTap: () => {}, // TODO: Open the Daily Arcane River Screen
                ),
              ],
            ),
            ExpansionTile(
              leading: const Icon(Icons.view_week_outlined),
              trailing: const Icon(Icons.arrow_drop_down),
              title: const Text('Weeklies'),
              children: [
                ListTile(
                  title: const Text('Bosses'),
                  onTap: () => {}, // TODO: Open the Weekly Bosses Screen
                ),
                ListTile(
                  title: const Text('Tasks'),
                  onTap: () => {}, // TODO: Open the Weekly Tasks Screen
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
