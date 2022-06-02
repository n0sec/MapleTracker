import 'package:flutter/material.dart';
import 'package:maple_tracker/widgets/app_bar_drawer.dart';

class WeeklyTasksScreen extends StatefulWidget {
  const WeeklyTasksScreen({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<WeeklyTasksScreen> createState() => _WeeklyTasksScreenState();
}

class _WeeklyTasksScreenState extends State<WeeklyTasksScreen> {
  @override
  Widget build(BuildContext context) {
    return AppBarDrawer(title: widget.title);
  }
}
