import 'package:flutter/material.dart';
import 'app_colors.dart';
import 'app_theme.dart';

/// Admin Theme Data
/// Provides light and dark theme data for the admin dashboard.
/// Delegates to [AppTheme] so both admin and user-facing code share the same
/// M3 seed-based palette.
class AdminThemeData {
  static ThemeData lightTheme() {
    return AppTheme.getLightTheme();
  }

  static ThemeData darkTheme() {
    return AppTheme.getDarkTheme();
  }
}

/// Dark Mode Color Extensions
/// Provides dark mode variants of key colors.
@Deprecated('Use AppColors.dark* constants or colorScheme tokens instead')
class DarkColors {
  DarkColors._();

  static const Color background = Color(0xFF121212);
  static const Color surface = Color(0xFF1E1E1E);
  static const Color surfaceVariant = Color(0xFF2A2A2A);
  static const Color textPrimary = Color(0xFFE0E0E0);
  static const Color textSecondary = Color(0xFFB0B0B0);
  static const Color textDisabled = Color(0xFF707070);
  static const Color border = Color(0xFF404040);
  static const Color divider = Color(0xFF333333);
}
