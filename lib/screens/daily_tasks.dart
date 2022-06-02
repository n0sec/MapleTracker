import 'package:flutter/material.dart';
import 'package:maple_tracker/widgets/app_bar_drawer.dart';

class DailyTasksScreen extends StatefulWidget {
  const DailyTasksScreen({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<DailyTasksScreen> createState() => _DailyTasksScreenState();
}

class _DailyTasksScreenState extends State<DailyTasksScreen> {
  @override
  Widget build(BuildContext context) {
    return AppBarDrawer(title: widget.title);
  }
}
