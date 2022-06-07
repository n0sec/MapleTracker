import 'package:flutter/material.dart';
import 'package:maple_tracker/widgets/app_bar_drawer.dart';

class WeeklyBossesScreen extends StatefulWidget {
  const WeeklyBossesScreen({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<WeeklyBossesScreen> createState() => _WeeklyBossesScreenState();
}

class _WeeklyBossesScreenState extends State<WeeklyBossesScreen> {
  @override
  Widget build(BuildContext context) {
    return AppBarDrawer(title: widget.title);
  }
}
