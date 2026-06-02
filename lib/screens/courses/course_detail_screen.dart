import 'package:flutter/material.dart';
import '../../models/course_model.dart';
import '../lessons/lesson_reader_screen.dart'; // IMPORT ADDED HERE

/// Screen displaying structured curriculum levels and selectable lesson logs.
class CourseDetailScreen extends StatefulWidget {
  final Course course;

  const CourseDetailScreen({super.key, required this.course});

  @override
  State<CourseDetailScreen> createState() => _CourseDetailScreenState();
}

class _CourseDetailScreenState extends State<CourseDetailScreen> {
  // Tracker for the currently active tab layout segment
  int activeTabIndex = 0;

  @override
  Widget build(BuildContext context) {
    const Color primaryBlue = Color(0xFF0071E3);
    const Color backgroundColor = Color(0xFFFFFFFF);
    const Color surfaceColor = Color(0xFFF5F5F7);
    const Color textPrimary = Color(0xFF1D1D1F);
    const Color textSecondary = Color(0xFF6E6E73);
    const Color borderColor = Color(0xFFD2D2D7);

    // Pick lesson lists based on standard user selection
    List<String> currentLessons;
    if (activeTabIndex == 0) {
      currentLessons = widget.course.beginnerLessons;
    } else if (activeTabIndex == 1) {
      currentLessons = widget.course.intermediateLessons;
    } else {
      currentLessons = widget.course.advancedLessons;
    }

    return Scaffold(
      backgroundColor: backgroundColor,
      appBar: AppBar(
        backgroundColor: backgroundColor,
        elevation: 0,
        leading: IconButton(
          icon: const Icon(
            Icons.arrow_back_ios_new,
            color: primaryBlue,
            size: 20,
          ),
          onPressed: () => Navigator.pop(context),
        ),
        actions: [
          IconButton(
            icon: const Icon(Icons.bookmark_border, color: primaryBlue),
            onPressed: () {},
          ),
        ],
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Screen Header Info Blocks
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 24.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  widget.course.name,
                  style: const TextStyle(
                    color: textPrimary,
                    fontSize: 32,
                    fontWeight: FontWeight.w700,
                    letterSpacing: -1.0,
                  ),
                ),
                const SizedBox(height: 6),
                Text(
                  '${widget.course.totalLessons} structural lessons covering essential components.',
                  style: const TextStyle(color: textSecondary, fontSize: 15),
                ),
                const SizedBox(height: 24),

                // Apple Style Custom Pill Selection Bar
                Container(
                  height: 40,
                  padding: const EdgeInsets.all(3),
                  decoration: BoxDecoration(
                    color: surfaceColor,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Row(
                    children: [
                      _buildTabButton(0, 'Beginner'),
                      _buildTabButton(1, 'Intermediate'),
                      _buildTabButton(2, 'Advanced'),
                    ],
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(height: 20),

          // Scrollable Dynamic Lesson Stream Feed
          Expanded(
            child: ListView.separated(
              physics: const BouncingScrollPhysics(),
              padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 8),
              itemCount: currentLessons.length,
              separatorBuilder: (context, index) => const SizedBox(height: 12),
              itemBuilder: (context, index) {
                final lessonTitle = currentLessons[index];

                return InkWell(
                  onTap: () {
                    // ROUTING UPDATED: Navigates to the new reader screen
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => LessonReaderScreen(
                          lessonTitle: lessonTitle,
                          courseName: widget.course.name,
                        ),
                      ),
                    );
                  },
                  borderRadius: BorderRadius.circular(14),
                  child: Container(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 20,
                      vertical: 18,
                    ),
                    decoration: BoxDecoration(
                      color: backgroundColor,
                      borderRadius: BorderRadius.circular(14),
                      border: Border.all(color: borderColor.withOpacity(0.5)),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Expanded(
                          child: Text(
                            lessonTitle,
                            style: const TextStyle(
                              color: textPrimary,
                              fontSize: 16,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ),
                        const Icon(
                          Icons.play_circle_fill_rounded,
                          color: primaryBlue,
                          size: 22,
                        ),
                      ],
                    ),
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }

  /// Helper widget building a stylized select-state button pill block.
  Widget _buildTabButton(int index, String label) {
    bool isSelected = activeTabIndex == index;
    return Expanded(
      child: GestureDetector(
        onTap: () {
          setState(() {
            activeTabIndex = index;
          });
        },
        child: Container(
          decoration: BoxDecoration(
            color: isSelected ? Colors.white : Colors.transparent,
            borderRadius: BorderRadius.circular(8),
            boxShadow: isSelected
                ? [
                    BoxShadow(
                      color: Colors.black.withOpacity(0.04),
                      blurRadius: 4,
                      offset: const Offset(0, 2),
                    ),
                  ]
                : [],
          ),
          alignment: Alignment.center,
          child: Text(
            label,
            style: TextStyle(
              color: isSelected
                  ? const Color(0xFF1D1D1F)
                  : const Color(0xFF6E6E73),
              fontSize: 13,
              fontWeight: isSelected ? FontWeight.w600 : FontWeight.w500,
            ),
          ),
        ),
      ),
    );
  }
}
