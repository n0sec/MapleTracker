import 'package:flutter/material.dart';
import 'package:maple_tracker/widgets/app_bar_drawer.dart';

class DailyBossesScreen extends StatefulWidget {
  const DailyBossesScreen({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<DailyBossesScreen> createState() => _DailyBossesScreenState();
}

class _DailyBossesScreenState extends State<DailyBossesScreen> {
  @override
  Widget build(BuildContext context) {
    return AppBarDrawer(
      title: widget.title,
      body: Container(
        child: Text('Hello'),
        color: Colors.red,
        width: 100,
        height: 100,
      ),
    );
  }
}
