import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:maple_tracker/screens/settings.dart';
import 'screens/home.dart';
import 'screens/login.dart';

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
      initialRoute: 'home',
      routes: {
        '/': (ctx) => const HomeScreen(
              title: 'Home',
            ),
        '/login': (ctx) => const LoginScreen(
              title: 'Login',
            ),
        '/settings': (context) => const SettingsScreen(
              title: 'Settings',
            ),
      },
      debugShowCheckedModeBanner: false,
    );
  }
}
