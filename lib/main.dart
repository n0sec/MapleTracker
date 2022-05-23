import 'package:flutter/material.dart';
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
      ),
      initialRoute: 'login',
      routes: {
        '/': (ctx) => const HomeScreen(
              title: 'Home',
            ),
        'login': (ctx) => const LoginScreen(
              title: 'Log in',
            ),
      },
      debugShowCheckedModeBanner: false,
    );
  }
}
