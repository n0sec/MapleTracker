import 'package:flutter/material.dart';
import 'package:maple_tracker/widgets/divider_with_subheader.dart';

class AppBarDrawer extends StatelessWidget {
  const AppBarDrawer({Key? key, required this.title, this.body})
      : super(key: key);

  final String title;
  final Widget? body;

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
                // Else, push '/' to the routes as a replacement
                else
                  {
                    Navigator.pushReplacementNamed(context, '/home'),
                  }
              },
            ),
            ListTile(
              leading: const Icon(Icons.person_add),
              title: const Text('Character Select'),
              onTap: () =>
                  Navigator.pushReplacementNamed(context, '/character-select'),
            ),
            const DividerWithSubheader(subheaderText: 'Dailies'),
            ListTile(
              leading: Icon(Icons.adb),
              title: const Text('Bosses'),
              onTap: () => Navigator.popAndPushNamed(context, '/daily-bosses'),
            ),
            ListTile(
              leading: Icon(Icons.abc),
              title: const Text('Tasks'),
              onTap: () => Navigator.popAndPushNamed(context, '/daily-tasks'),
            ),
            ListTile(
              leading: Icon(Icons.access_alarms_rounded),
              title: const Text('Arcane River'),
              onTap: () =>
                  Navigator.popAndPushNamed(context, '/daily-arcane-river'),
            ),
            const DividerWithSubheader(subheaderText: 'Weeklies'),
            ListTile(
              leading: Icon(Icons.adb),
              title: const Text('Bosses'),
              onTap: () => Navigator.popAndPushNamed(context, '/weekly-bosses'),
            ),
            ListTile(
              leading: Icon(Icons.ac_unit),
              title: const Text('Tasks'),
              onTap: () => Navigator.popAndPushNamed(context, '/weekly-tasks'),
            ),
          ],
        ),
      ),
      // Pass 'body' as a parameter so that we can customize each widget individually
      body: body,
    );
  }
}
