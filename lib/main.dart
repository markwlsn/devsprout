import 'package:flutter/material.dart';

import 'core/theme/app_theme.dart';
import 'screens/home/home_screen.dart';

/// DevSprout
///
/// Learning platform for:
/// - Java
/// - Python
/// - C#
/// - JavaScript
///
/// Day 1 Goal:
/// Launch app successfully.

void main() {
  runApp(const DevSproutApp());
}

class DevSproutApp extends StatelessWidget {
  const DevSproutApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,

      title: 'DevSprout',

      theme: AppTheme.lightTheme,

      home: const HomeScreen(),
    );
  }
}
