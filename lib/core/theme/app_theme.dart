import 'package:flutter/material.dart';
import '../constants/app_colors.dart';

/// Global Theme
///
/// Controls:
/// - App colors
/// - Font styles
/// - Button appearance
///
/// Future:
/// - Dark Mode

class AppTheme {
  AppTheme._();

  static ThemeData lightTheme = ThemeData(
    useMaterial3: true,

    scaffoldBackgroundColor: AppColors.background,

    colorScheme: ColorScheme.fromSeed(seedColor: AppColors.primary),

    appBarTheme: const AppBarTheme(
      centerTitle: true,
      backgroundColor: Colors.white,
      foregroundColor: AppColors.textPrimary,
      elevation: 0,
    ),
  );
}
