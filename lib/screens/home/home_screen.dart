import 'package:flutter/material.dart';

/// Home Screen
///
/// This is the first page users see.
///
/// Future:
/// - Hero Banner
/// - Course Categories
/// - Featured Lessons
/// - Search Bar

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('DevSprout')),
      body: const Center(
        child: Text(
          'Welcome to DevSprout 🚀',
          style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
        ),
      ),
    );
  }
}
