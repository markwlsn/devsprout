import 'package:flutter/material.dart';

/// Screen responsible for displaying the actual learning content and code examples.
class LessonReaderScreen extends StatelessWidget {
  final String lessonTitle;
  final String courseName;

  const LessonReaderScreen({
    super.key,
    required this.lessonTitle,
    required this.courseName,
  });

  @override
  Widget build(BuildContext context) {
    const Color primaryBlue = Color(0xFF0071E3);
    const Color backgroundColor = Color(0xFFFFFFFF);
    const Color surfaceColor = Color(0xFFF5F5F7);
    const Color textPrimary = Color(0xFF1D1D1F);
    const Color textSecondary = Color(0xFF6E6E73);
    const Color borderColor = Color(0xFFD2D2D7);

    return Scaffold(
      backgroundColor: backgroundColor,
      // Minimalist AppBar with a progress indicator
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
        title: Column(
          children: [
            Text(
              courseName,
              style: const TextStyle(
                color: textSecondary,
                fontSize: 12,
                fontWeight: FontWeight.w500,
              ),
            ),
            const SizedBox(height: 4),
            // Mock progress bar for the top of the reader
            Container(
              width: 100,
              height: 4,
              decoration: BoxDecoration(
                color: surfaceColor,
                borderRadius: BorderRadius.circular(2),
              ),
              child: FractionallySizedBox(
                alignment: Alignment.centerLeft,
                widthFactor: 0.15, // Represents 15% completion
                child: Container(
                  decoration: BoxDecoration(
                    color: primaryBlue,
                    borderRadius: BorderRadius.circular(2),
                  ),
                ),
              ),
            ),
          ],
        ),
        centerTitle: true,
      ),
      // Bottom Navigation for Previous/Next actions
      bottomNavigationBar: SafeArea(
        child: Container(
          padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 16),
          decoration: BoxDecoration(
            color: backgroundColor,
            border: Border(
              top: BorderSide(color: borderColor.withOpacity(0.3)),
            ),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              TextButton.icon(
                onPressed: () {
                  Navigator.pop(context); // Go back for now
                },
                icon: const Icon(
                  Icons.arrow_back_ios_new,
                  size: 14,
                  color: textSecondary,
                ),
                label: const Text(
                  'Previous',
                  style: TextStyle(color: textSecondary, fontSize: 16),
                ),
              ),
              ElevatedButton(
                onPressed: () {
                  // Future: Logic to load the next lesson
                  ScaffoldMessenger.of(context).showSnackBar(
                    const SnackBar(content: Text('Next lesson loading...')),
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
                    borderRadius: BorderRadius.circular(20),
                  ),
                ),
                child: const Row(
                  children: [
                    Text(
                      'Next',
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    SizedBox(width: 8),
                    Icon(Icons.arrow_forward_ios, size: 14),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
      body: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        padding: const EdgeInsets.all(24.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Lesson Header
            Text(
              lessonTitle,
              style: const TextStyle(
                color: textPrimary,
                fontSize: 28,
                fontWeight: FontWeight.w700,
                letterSpacing: -0.5,
              ),
            ),
            const SizedBox(height: 24),

            // Standard mock text mimicking real learning content
            const Text(
              'Welcome to your first lesson! In this module, we will explore the fundamental building blocks of this language. Understanding how to structure your very first program is the most important step in your journey.',
              style: TextStyle(
                color: textPrimary,
                fontSize: 16,
                height: 1.6, // Increased line height for readability
              ),
            ),
            const SizedBox(height: 16),
            const Text(
              'Every great application starts with a simple command to output text to the screen. Let\'s look at how we can print "Hello World" using standard syntax:',
              style: TextStyle(color: textPrimary, fontSize: 16, height: 1.6),
            ),
            const SizedBox(height: 24),

            // Apple/Notion style dark code block
            Container(
              width: double.infinity,
              padding: const EdgeInsets.all(20),
              decoration: BoxDecoration(
                color: const Color(0xFF1D1D1F), // Dark premium background
                borderRadius: BorderRadius.circular(16),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withOpacity(0.1),
                    blurRadius: 10,
                    offset: const Offset(0, 4),
                  ),
                ],
              ),
              child: const Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // Code block header (fake traffic lights)
                  Row(
                    children: [
                      CircleAvatar(
                        radius: 5,
                        backgroundColor: Color(0xFFFF5F56),
                      ),
                      SizedBox(width: 6),
                      CircleAvatar(
                        radius: 5,
                        backgroundColor: Color(0xFFFFBD2E),
                      ),
                      SizedBox(width: 6),
                      CircleAvatar(
                        radius: 5,
                        backgroundColor: Color(0xFF27C93F),
                      ),
                    ],
                  ),
                  SizedBox(height: 16),
                  // Monospaced Code Text
                  Text(
                    'public class HelloWorld {\n  public static void main(String[] args) {\n    System.out.println("Hello World");\n  }\n}',
                    style: TextStyle(
                      color: Color(0xFFF5F5F7), // Light text on dark bg
                      fontFamily: 'monospace', // Built-in fixed-width font
                      fontSize: 14,
                      height: 1.5,
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 24),

            const Text(
              'Notice how the syntax requires strict capitalization and closing brackets. Once executed, the console will display the text encapsulated inside the quotation marks.',
              style: TextStyle(color: textPrimary, fontSize: 16, height: 1.6),
            ),
          ],
        ),
      ),
    );
  }
}
