import 'package:flutter/material.dart';

/// A data model representing a programming course within DevSprout.
class Course {
  final String name;
  final String description;
  final int totalLessons;
  final String difficulty;
  final String iconText;
  final Color iconBackgroundColor;
  final List<String> beginnerLessons;
  final List<String> intermediateLessons;
  final List<String> advancedLessons;

  Course({
    required this.name,
    required this.description,
    required this.totalLessons,
    required this.difficulty,
    required this.iconText,
    required this.iconBackgroundColor,
    required this.beginnerLessons,
    required this.intermediateLessons,
    required this.advancedLessons,
  });
}

/// Dummy data repository to provide realistic content across our application screens.
class CourseData {
  static final List<Course> allCourses = [
    Course(
      name: 'Java Programming',
      description:
          'Master object-oriented programming, robust backend development, and enterprise logic application.',
      totalLessons: 24,
      difficulty: 'Beginner',
      iconText: '☕',
      iconBackgroundColor: const Color(0xFFF5F5F7),
      beginnerLessons: [
        '1 Intro to Java',
        '2 Variables and Types',
        '3 Operators',
        '4 Control Flow',
      ],
      intermediateLessons: [
        '5 Arrays',
        '6 Methods',
        '7 Classes & Objects',
        '8 Inheritance',
      ],
      advancedLessons: [
        '9 Polymorphism',
        '10 Exception Handling',
        '11 Multithreading',
        '12 Streams API',
      ],
    ),
    Course(
      name: 'Python Programming',
      description:
          'Learn clear syntax structures, fast data processing scripting, and modern multi-purpose coding.',
      totalLessons: 18,
      difficulty: 'Beginner',
      iconText: '🐍',
      iconBackgroundColor: const Color(0xFFF5F5F7),
      beginnerLessons: [
        '1 Welcome to Python',
        '2 Variables & Strings',
        '3 Basic Math Operations',
        '4 Conditional Logic',
      ],
      intermediateLessons: [
        '5 Lists & Tuples',
        '6 Dictionaries',
        '7 Functions',
        '8 File I/O Operations',
      ],
      advancedLessons: [
        '9 List Comprehensions',
        '10 Lambda Expressions',
        '11 OOP Principles',
        '12 Error Handling',
      ],
    ),
    Course(
      name: 'C# Programming',
      description:
          'Build game systems, highly scalable desktop software applications, and dynamic modern architectures.',
      totalLessons: 22,
      difficulty: 'Beginner',
      iconText: '💻',
      iconBackgroundColor: const Color(0xFFF5F5F7),
      beginnerLessons: [
        '1 C# Environment Setup',
        '2 Data Types & Syntax',
        '3 Working with Strings',
        '4 Type Casting',
      ],
      intermediateLessons: [
        '5 Methods & Parameters',
        '6 Classes & Structures',
        '7 Properties & Fields',
        '8 Arrays & Lists',
      ],
      advancedLessons: [
        '9 LINQ Queries',
        '10 Async / Await Programming',
        '11 Interfaces',
        '12 Generics Collection',
      ],
    ),
    Course(
      name: 'JavaScript',
      description:
          'Bring websites to life with logic execution, browser manipulations, and responsive interactions.',
      totalLessons: 30,
      difficulty: 'Beginner',
      iconText: 'JS',
      iconBackgroundColor: const Color(0xFFF5F5F7),
      beginnerLessons: [
        '1 JS in the Browser',
        '2 Dynamic Variables',
        '3 Comparison Operators',
        '4 Function Basics',
      ],
      intermediateLessons: [
        '5 DOM Selection',
        '6 Event Listeners',
        '7 Array Methods (Map, Filter)',
        '8 JSON Parsing',
      ],
      advancedLessons: [
        '9 Asynchronous JS & Promises',
        '10 Fetch API Requests',
        '11 ES6 Modules',
        '12 Closures & Scope',
      ],
    ),
    Course(
      name: 'PHP Development',
      description:
          'Handle server-side logic interactions, secure databases, and dynamic web content parsing processes.',
      totalLessons: 16,
      difficulty: 'Intermediate',
      iconText: '🐘',
      iconBackgroundColor: const Color(0xFFF5F5F7),
      beginnerLessons: [
        '1 PHP Basics Tag Syntax',
        '2 Echo & Output Logic',
        '3 Variables Scope',
        '4 Superglobals Overview',
      ],
      intermediateLessons: [
        '5 GET & POST Requests',
        '6 Include & Require Files',
        '7 Form Formats Validation',
        '8 Session Handling',
      ],
      advancedLessons: [
        '9 MySQL Connections',
        '10 Prepared Statements',
        '11 Object Oriented PHP',
        '12 MVC Architecture Setup',
      ],
    ),
    Course(
      name: 'HTML & CSS',
      description:
          'Design semantic layouts, beautiful typographic hierachies, and responsive cross-platform structures.',
      totalLessons: 20,
      difficulty: 'Beginner',
      iconText: '🎨',
      iconBackgroundColor: const Color(0xFFF5F5F7),
      beginnerLessons: [
        '1 HTML Element Structures',
        '2 Semantic Tags Layout',
        '3 CSS Selectors Rules',
        '4 Color & Typography Text',
      ],
      intermediateLessons: [
        '5 CSS Box Model Space',
        '6 Flexbox Alignment Tools',
        '7 CSS Grid Configurations',
        '8 Media Queries Viewports',
      ],
      advancedLessons: [
        '9 Keyframe Animations Spec',
        '10 CSS Variables Themes',
        '11 Sass Preprocessing Intro',
        '12 Transitions Matrix',
      ],
    ),
  ];
}
