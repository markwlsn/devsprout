import 'package:flutter/material.dart';
import 'screens/main_layout_screen.dart';

void main() {
  runApp(const DevSproutApp());
}

class DevSproutApp extends StatelessWidget {
  const DevSproutApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'DevSprout',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        fontFamily: 'SF Pro Display', // Apple styling standard
        primaryColor: const Color(0xFF0071E3),
        scaffoldBackgroundColor: const Color(0xFFFFFFFF),
      ),
      home: const MainLayoutScreen(), // Launches our master navigation shell
    );
  }
}
