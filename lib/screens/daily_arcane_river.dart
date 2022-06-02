import 'package:flutter/material.dart';
import 'package:maple_tracker/widgets/app_bar_drawer.dart';

class DailyArcaneRiver extends StatefulWidget {
  const DailyArcaneRiver({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<DailyArcaneRiver> createState() => _DailyArcaneRiverState();
}

class _DailyArcaneRiverState extends State<DailyArcaneRiver> {
  @override
  Widget build(BuildContext context) {
    return AppBarDrawer(title: widget.title);
  }
}
