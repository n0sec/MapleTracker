import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:maple_tracker/adapters/character.dart';
import 'package:maple_tracker/adapters/character_class.dart';
import 'package:maple_tracker/providers/characters.dart';
import 'package:maple_tracker/screens/character.dart';
import 'package:maple_tracker/screens/daily_arcane_river.dart';
import 'package:maple_tracker/screens/daily_bosses.dart';
import 'package:maple_tracker/screens/daily_tasks.dart';
import 'package:maple_tracker/screens/settings.dart';
import 'package:maple_tracker/screens/weekly_bosses.dart';
import 'package:maple_tracker/screens/weekly_tasks.dart';
import 'package:provider/provider.dart';
import 'screens/home.dart';

// late Box charactersBox;
void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  // Initialize Hive
  // ! Required
  await Hive.initFlutter();

  // Register the Character Adapter
  Hive.registerAdapter<Character>(CharacterAdapter());
  Hive.registerAdapter<CharacterClass>(CharacterClassAdapter());
  Hive.registerAdapter<ClassNames>(ClassNamesAdapter());

  // Open the Character Box
  // charactersBox = await Hive.openBox<Character>('charactersBox');

  runApp(const MapleTracker());
}

class MapleTracker extends StatelessWidget {
  const MapleTracker({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (ctx) => CharactersController(),
      child: MaterialApp(
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
      ),
    );
  }
}
