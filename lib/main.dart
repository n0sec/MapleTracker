import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:maple_tracker/screens/character.dart';
import 'package:maple_tracker/screens/daily_arcane_river.dart';
import 'package:maple_tracker/screens/daily_bosses.dart';
import 'package:maple_tracker/screens/daily_tasks.dart';
import 'package:maple_tracker/screens/settings.dart';
import 'package:maple_tracker/screens/weekly_bosses.dart';
import 'package:maple_tracker/screens/weekly_tasks.dart';
import 'screens/home.dart';

void main() {
  runApp(const MapleTracker());
}

class MapleTracker extends StatelessWidget {
  const MapleTracker({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.orange,
        textTheme: GoogleFonts.interTextTheme(),
      ),
      initialRoute: '/home',
      routes: {
        '/home': (context) => const HomeScreen(
              title: 'Home',
            ),
        '/settings': (context) => const SettingsScreen(
              title: 'Settings',
            ),
        '/character-select': (context) => const CharacterScreen(
              title: 'Character Select',
            ),
        '/daily-bosses': (context) => const DailyBossesScreen(
              title: 'Daily Bosses',
            ),
        '/daily-tasks': (context) => const DailyTasksScreen(
              title: 'Daily Tasks',
            ),
        '/daily-arcane-river': (context) => const DailyArcaneRiver(
              title: 'Daily Arcane River',
            ),
        '/weekly-bosses': (context) => const WeeklyBossesScreen(
              title: 'Weekly Bosses',
            ),
        '/weekly-tasks': (context) => const WeeklyTasksScreen(
              title: 'Weekly Tasks',
            ),
      },
      debugShowCheckedModeBanner: false,
    );
  }
}
