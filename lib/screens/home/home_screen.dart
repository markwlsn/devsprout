import 'package:flutter/material.dart';
import '../courses/languages_catalog_screen.dart';

/// The application home landing screen dashboard with optimized typography layers.
class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    const Color primaryBlue = Color(0xFF0071E3);
    const Color backgroundColor = Color(0xFFFFFFFF);
    const Color textPrimary = Color(0xFF1D1D1F);
    const Color textSecondary = Color(
      0xFF8E8E93,
    ); // Adjusted to standard iOS caption grey
    const Color borderColor = Color(0xFFD2D2D7);

    final List<Map<String, String>> featuredCourses = [
      {
        'name': 'Java Programming',
        'icon': '☕',
        'desc': 'Master OOP fundamentals and backend syntax.',
      },
      {
        'name': 'Python Core',
        'icon': '🐍',
        'desc': 'Learn scripts, automation, and data structures.',
      },
    ];

    return Scaffold(
      backgroundColor: backgroundColor,
      body: SafeArea(
        child: SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
          padding: const EdgeInsets.symmetric(horizontal: 24.0, vertical: 16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Upper-Center Brand Logo Header
              Center(
                child: Image.asset(
                  'assets/images/devsprout_logo.png',
                  height: 36,
                  fit: BoxFit.contain,
                  errorBuilder: (context, error, stackTrace) {
                    return const Text(
                      '🌱 DevSprout',
                      style: TextStyle(
                        color: textPrimary,
                        fontSize: 20,
                        fontWeight: FontWeight.w800,
                      ),
                    );
                  },
                ),
              ),
              const SizedBox(height: 32),

              // TWEAKED: Premium Typography Header Block with Balanced Layout Row
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'WELCOME BACK',
                        style: TextStyle(
                          color: textSecondary,
                          fontSize: 12,
                          fontWeight: FontWeight.w700,
                          letterSpacing:
                              1.2, // Expanded tracking for modern capsule text style
                        ),
                      ),
                      SizedBox(height: 4),
                      Text(
                        'Mark Geronilla',
                        style: TextStyle(
                          color: textPrimary,
                          fontSize: 32, // Increased sizing slightly
                          fontWeight: FontWeight.w800, // Punchier heavy weight
                          letterSpacing:
                              -1.2, // Tightened tracking for sleek professional structure
                          height: 1.1,
                        ),
                      ),
                    ],
                  ),
                  // Premium Right-side Minimalist Avatar Placeholder to balance layout
                  CircleAvatar(
                    radius: 22,
                    backgroundColor: primaryBlue.withOpacity(0.1),
                    child: const Text(
                      'MG',
                      style: TextStyle(
                        color: primaryBlue,
                        fontSize: 15,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 28),

              // Apple-Style Hero Promotion Banner Block
              Container(
                width: double.infinity,
                padding: const EdgeInsets.all(24),
                decoration: BoxDecoration(
                  color: textPrimary,
                  borderRadius: BorderRadius.circular(24),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      'Ready to level up?',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 22,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                    const SizedBox(height: 6),
                    const Text(
                      'Jump right back into your coding track or explore new languages.',
                      style: TextStyle(
                        color: Color(0xFF8E8E93),
                        fontSize: 14,
                        height: 1.4,
                      ),
                    ),
                    const SizedBox(height: 20),
                    ElevatedButton(
                      onPressed: () {
                        Navigator.of(context).push(
                          MaterialPageRoute(
                            builder: (context) =>
                                const LanguagesCatalogScreen(),
                          ),
                        );
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: primaryBlue,
                        elevation: 0,
                        padding: const EdgeInsets.symmetric(
                          horizontal: 24,
                          vertical: 12,
                        ),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(16),
                        ),
                      ),
                      child: const Text(
                        'Start Learning',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 15,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 32),

              // Featured Courses Title Header
              const Text(
                'Featured Tracks',
                style: TextStyle(
                  color: textPrimary,
                  fontSize: 20,
                  fontWeight: FontWeight.w700,
                  letterSpacing: -0.3,
                ),
              ),
              const SizedBox(height: 16),

              // Stream of Featured Course Items List
              ListView.separated(
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                itemCount: featuredCourses.length,
                separatorBuilder: (context, index) =>
                    const SizedBox(height: 14),
                itemBuilder: (context, index) {
                  final course = featuredCourses[index];

                  return InkWell(
                    onTap: () {
                      Navigator.of(context).push(
                        MaterialPageRoute(
                          builder: (context) => const LanguagesCatalogScreen(),
                        ),
                      );
                    },
                    borderRadius: BorderRadius.circular(20),
                    child: Container(
                      padding: const EdgeInsets.all(20),
                      decoration: BoxDecoration(
                        color: backgroundColor,
                        borderRadius: BorderRadius.circular(20),
                        border: Border.all(color: borderColor.withOpacity(0.5)),
                      ),
                      child: Row(
                        children: [
                          Text(
                            course['icon']!,
                            style: const TextStyle(fontSize: 32),
                          ),
                          const SizedBox(width: 18),
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  course['name']!,
                                  style: const TextStyle(
                                    color: textPrimary,
                                    fontSize: 16,
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                                const SizedBox(height: 4),
                                Text(
                                  course['desc']!,
                                  style: const TextStyle(
                                    color: Color(0xFF6E6E73),
                                    fontSize: 13,
                                    height: 1.3,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          const Icon(
                            Icons.arrow_forward_ios_rounded,
                            color: borderColor,
                            size: 16,
                          ),
                        ],
                      ),
                    ),
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
