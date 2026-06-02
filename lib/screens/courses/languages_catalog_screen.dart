import 'package:flutter/material.dart';
import '../../models/course_model.dart';
import 'course_detail_screen.dart';

class LanguagesCatalogScreen extends StatelessWidget {
  const LanguagesCatalogScreen({super.key});

  @override
  Widget build(BuildContext context) {
    const Color primaryBlue = Color(0xFF0071E3);
    const Color backgroundColor = Color(0xFFFFFFFF);
    const Color textPrimary = Color(0xFF1D1D1F);
    const Color textSecondary = Color(0xFF6E6E73);
    const Color surfaceColor = Color(0xFFF5F5F7);

    // FIX APPLIED: Added 'iconBackgroundColor' required by your Course model
    final List<Course> catalogCourses = [
      Course(
        name: 'Java Programming',
        description: 'Master OOP fundamentals and backend syntax.',
        iconText: '☕',
        difficulty: 'Beginner',
        iconBackgroundColor: const Color(0xFFFFF2E6), // Soft warm tint for Java
        totalLessons: 3,
        beginnerLessons: [
          'Introduction to Java',
          'Variables & Data Types',
          'Operators & Expressions',
        ],
        intermediateLessons: [
          'Object-Oriented Programming',
          'Classes & Objects',
          'Inheritance',
        ],
        advancedLessons: [
          'Multithreading',
          'Exception Handling',
          'Collections Framework',
        ],
      ),
      Course(
        name: 'Python Core',
        description: 'Learn scripts, automation, and data structures.',
        iconText: '🐍',
        difficulty: 'Intermediate',
        iconBackgroundColor: const Color(
          0xFFE6F4EA,
        ), // Soft green tint for Python
        totalLessons: 3,
        beginnerLessons: [
          'Python Setup & Syntax',
          'Lists & Tuples',
          'Conditional Statements',
        ],
        intermediateLessons: [
          'Functions & Modules',
          'File Handling',
          'List Comprehensions',
        ],
        advancedLessons: ['Decorators', 'Generators', 'Data Science Basics'],
      ),
    ];

    return Scaffold(
      backgroundColor: backgroundColor,
      appBar: AppBar(
        backgroundColor: backgroundColor,
        elevation: 0,
        leading: IconButton(
          icon: const Icon(
            Icons.arrow_back_ios_new_rounded,
            color: primaryBlue,
            size: 20,
          ),
          onPressed: () => Navigator.of(context).pop(),
        ),
        title: const Text(
          'All Languages',
          style: TextStyle(color: textPrimary, fontWeight: FontWeight.w700),
        ),
        centerTitle: true,
      ),
      body: ListView.separated(
        padding: const EdgeInsets.all(24.0),
        physics: const BouncingScrollPhysics(),
        itemCount: catalogCourses.length,
        separatorBuilder: (context, index) => const SizedBox(height: 16),
        itemBuilder: (context, index) {
          final course = catalogCourses[index];

          return InkWell(
            onTap: () {
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (context) => CourseDetailScreen(course: course),
                ),
              );
            },
            borderRadius: BorderRadius.circular(20),
            child: Container(
              padding: const EdgeInsets.all(20),
              decoration: BoxDecoration(
                color: surfaceColor,
                borderRadius: BorderRadius.circular(20),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      // Optional: Wrap this Text widget in a Container using course.iconBackgroundColor if desired!
                      Text(
                        course.iconText,
                        style: const TextStyle(fontSize: 28),
                      ),
                      const SizedBox(width: 16),
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              course.name,
                              style: const TextStyle(
                                color: textPrimary,
                                fontSize: 18,
                                fontWeight: FontWeight.w700,
                              ),
                            ),
                            const SizedBox(height: 4),
                            Text(
                              '${course.totalLessons} Core Modules',
                              style: const TextStyle(
                                color: textSecondary,
                                fontSize: 14,
                              ),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        padding: const EdgeInsets.symmetric(
                          horizontal: 10,
                          vertical: 6,
                        ),
                        decoration: BoxDecoration(
                          color: backgroundColor,
                          borderRadius: BorderRadius.circular(12),
                        ),
                        child: Text(
                          course.difficulty,
                          style: const TextStyle(
                            color: primaryBlue,
                            fontSize: 12,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 20),
                  ClipRRect(
                    borderRadius: BorderRadius.circular(4),
                    child: const LinearProgressIndicator(
                      value: 0.2,
                      backgroundColor: Color(0xFFE5E5EA),
                      valueColor: AlwaysStoppedAnimation<Color>(primaryBlue),
                      minHeight: 6,
                    ),
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
