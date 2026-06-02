import 'package:flutter/material.dart';

/// Placeholder screen for the future community forum feature.
class ForumScreen extends StatelessWidget {
  const ForumScreen({super.key});

  @override
  Widget build(BuildContext context) {
    const Color backgroundColor = Color(0xFFFFFFFF);
    const Color textPrimary = Color(0xFF1D1D1F);
    const Color textSecondary = Color(0xFF6E6E73);
    const Color surfaceColor = Color(0xFFF5F5F7);

    return Scaffold(
      backgroundColor: backgroundColor,
      appBar: AppBar(
        backgroundColor: backgroundColor,
        elevation: 0,
        title: const Text(
          'Community',
          style: TextStyle(color: textPrimary, fontWeight: FontWeight.w700),
        ),
        centerTitle: true,
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(24.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                padding: const EdgeInsets.all(20),
                decoration: const BoxDecoration(
                  color: surfaceColor,
                  shape: BoxShape.circle,
                ),
                child: const Icon(
                  Icons.forum,
                  size: 40,
                  color: Color(0xFF0071E3),
                ),
              ),
              const SizedBox(height: 20),
              const Text(
                'Developer Forums',
                style: TextStyle(
                  color: textPrimary,
                  fontSize: 22,
                  fontWeight: FontWeight.w700,
                  letterSpacing: -0.5,
                ),
              ),
              const SizedBox(height: 8),
              const Text(
                'Discussion boards and community support spaces are arriving in the next module build.',
                textAlign: TextAlign
                    .center, // FIXED: Changed 'Center' to 'TextAlign.center'
                style: TextStyle(
                  color: textSecondary,
                  fontSize: 15,
                  height: 1.4,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
