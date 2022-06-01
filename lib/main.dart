import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:maple_tracker/screens/character.dart';
import 'package:maple_tracker/screens/settings.dart';
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
      initialRoute: '/character',
      routes: {
        '/home': (context) => const HomeScreen(
              title: 'Home',
            ),
        '/settings': (context) => const SettingsScreen(
              title: 'Settings',
            ),
        '/character': (context) => const CharacterScreen(
              title: 'Character Select',
            ),
      },
      debugShowCheckedModeBanner: false,
    );
  }
}
