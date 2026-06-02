import 'package:flutter/material.dart';

/// Course card shown on Home Screen.
///
/// Future:
/// Tapping this card will open
/// the course details page.

class CourseCard extends StatelessWidget {
  final String title;
  final IconData icon;

  const CourseCard({super.key, required this.title, required this.icon});

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(20),
        child: Row(
          children: [
            Icon(icon, size: 40),
            const SizedBox(width: 15),
            Text(
              title,
              style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
          ],
        ),
      ),
    );
  }
}
