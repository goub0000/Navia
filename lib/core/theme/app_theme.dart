import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'app_colors.dart';

/// App theme configuration with light and dark themes.
///
/// Uses [ColorScheme.fromSeed] (M3 dynamic color) so every tonal slot is
/// derived automatically.  Brand overrides (secondary = maroon,
/// error = maroon, tertiary = yellow) are applied after seed generation.
class AppTheme {
  AppTheme._();

  /// Default seed colour — Indigo 700 (7.8:1 contrast, solid WCAG AA pass).
  static const Color defaultSeed = Color(0xFF4338CA);

  // ────────────────────────────────────────────────────────────────────
  // Public static theme instances (used by the static `lightTheme` /
  // `darkTheme` fields that other files reference).
  // ────────────────────────────────────────────────────────────────────

  /// Light theme (static, uses default seed).
  static ThemeData lightTheme = _buildTheme(
    brightness: Brightness.light,
    seedColor: defaultSeed,
  );

  /// Dark theme (static, uses default seed).
  static ThemeData darkTheme = _buildTheme(
    brightness: Brightness.dark,
    seedColor: defaultSeed,
  );

  // ────────────────────────────────────────────────────────────────────
  // Public helpers used by the appearance provider
  // ────────────────────────────────────────────────────────────────────

  /// Get light theme with custom settings.
  static ThemeData getLightTheme({
    double fontSize = 16.0,
    String? fontFamily,
    Color? accentColor,
    bool compactMode = false,
  }) {
    return _buildTheme(
      brightness: Brightness.light,
      seedColor: accentColor ?? defaultSeed,
      fontSize: fontSize,
      fontFamily: fontFamily,
      compactMode: compactMode,
    );
  }

  /// Get dark theme with custom settings.
  static ThemeData getDarkTheme({
    double fontSize = 16.0,
    String? fontFamily,
    Color? accentColor,
    bool compactMode = false,
  }) {
    return _buildTheme(
      brightness: Brightness.dark,
      seedColor: accentColor ?? defaultSeed,
      fontSize: fontSize,
      fontFamily: fontFamily,
      compactMode: compactMode,
    );
  }

  // ────────────────────────────────────────────────────────────────────
  // Core builder
  // ────────────────────────────────────────────────────────────────────

  static ThemeData _buildTheme({
    required Brightness brightness,
    required Color seedColor,
    double fontSize = 16.0,
    String? fontFamily,
    bool compactMode = false,
  }) {
    final bool isDark = brightness == Brightness.dark;
    final double fontSizeMultiplier = fontSize / 16.0;
    final double verticalPadding = compactMode ? 8.0 : 12.0;

    // ── Generate the full M3 tonal palette from the seed ──
    final colorScheme = ColorScheme.fromSeed(
      seedColor: seedColor,
      brightness: brightness,
    ).copyWith(
      // Brand overrides — keep maroon secondary, maroon error, yellow tertiary
      secondary: isDark ? AppColors.secondaryLight : AppColors.secondary,
      error: isDark ? AppColors.secondaryLight : AppColors.error,
      tertiary: isDark ? AppColors.accentLight : AppColors.accent,
    );

    final textTheme = _buildFullTextTheme(
      multiplier: fontSizeMultiplier,
      fontFamily: fontFamily,
      colorScheme: colorScheme,
      isDark: isDark,
    );

    final getFont = fontFamily != null
        ? GoogleFonts.getFont(fontFamily)
        : GoogleFonts.inter();

    return ThemeData(
      useMaterial3: true,
      brightness: brightness,
      colorScheme: colorScheme,
      scaffoldBackgroundColor: colorScheme.surface,
      textTheme: textTheme,

      // ── AppBar ──
      appBarTheme: AppBarTheme(
        backgroundColor: colorScheme.surface,
        foregroundColor: colorScheme.onSurface,
        surfaceTintColor: colorScheme.surfaceTint,
        scrolledUnderElevation: 2,
        elevation: 0,
        centerTitle: true,
        titleTextStyle: getFont.copyWith(
          fontSize: 20 * fontSizeMultiplier,
          fontWeight: FontWeight.w600,
          color: colorScheme.onSurface,
        ),
      ),

      // ── Cards — M3 tonal elevation ──
      cardTheme: CardThemeData(
        color: colorScheme.surface,
        surfaceTintColor: colorScheme.surfaceTint,
        elevation: 0,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12),
          side: BorderSide(color: colorScheme.outlineVariant),
        ),
        margin: const EdgeInsets.all(8),
      ),

      // ── Buttons ──
      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(
          backgroundColor: colorScheme.primary,
          foregroundColor: colorScheme.onPrimary,
          padding: EdgeInsets.symmetric(horizontal: 24, vertical: verticalPadding),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(8),
          ),
          elevation: 2,
          textStyle: getFont.copyWith(
            fontSize: 14 * fontSizeMultiplier,
            fontWeight: FontWeight.w600,
          ),
        ),
      ),
      outlinedButtonTheme: OutlinedButtonThemeData(
        style: OutlinedButton.styleFrom(
          foregroundColor: colorScheme.primary,
          padding: EdgeInsets.symmetric(horizontal: 24, vertical: verticalPadding),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(8),
          ),
          side: BorderSide(color: colorScheme.primary, width: 1.5),
          textStyle: getFont.copyWith(
            fontSize: 14 * fontSizeMultiplier,
            fontWeight: FontWeight.w600,
          ),
        ),
      ),
      textButtonTheme: TextButtonThemeData(
        style: TextButton.styleFrom(
          foregroundColor: colorScheme.primary,
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
          textStyle: getFont.copyWith(
            fontSize: 14 * fontSizeMultiplier,
            fontWeight: FontWeight.w600,
          ),
        ),
      ),

      // ── Inputs ──
      inputDecorationTheme: InputDecorationTheme(
        filled: true,
        fillColor: colorScheme.surfaceContainerHighest,
        contentPadding: EdgeInsets.symmetric(horizontal: 16, vertical: verticalPadding),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8),
          borderSide: BorderSide(color: colorScheme.outline),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8),
          borderSide: BorderSide(color: colorScheme.outline),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8),
          borderSide: BorderSide(color: colorScheme.primary, width: 2),
        ),
        errorBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8),
          borderSide: BorderSide(color: colorScheme.error),
        ),
        focusedErrorBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8),
          borderSide: BorderSide(color: colorScheme.error, width: 2),
        ),
        labelStyle: getFont.copyWith(
          fontSize: 14,
          color: colorScheme.onSurfaceVariant,
        ),
        hintStyle: getFont.copyWith(
          fontSize: 14,
          color: colorScheme.onSurfaceVariant.withValues(alpha: 0.6),
        ),
      ),

      // ── Divider ──
      dividerTheme: DividerThemeData(
        color: colorScheme.outlineVariant,
        thickness: 1,
        space: 1,
      ),

      // ── Bottom Navigation ──
      bottomNavigationBarTheme: BottomNavigationBarThemeData(
        backgroundColor: colorScheme.surfaceContainer,
        selectedItemColor: colorScheme.primary,
        unselectedItemColor: colorScheme.onSurfaceVariant,
        selectedLabelStyle: getFont.copyWith(
          fontSize: 12,
          fontWeight: FontWeight.w600,
        ),
        unselectedLabelStyle: getFont.copyWith(
          fontSize: 12,
          fontWeight: FontWeight.normal,
        ),
        type: BottomNavigationBarType.fixed,
        elevation: 0,
      ),

      // ── Icon Buttons — enforce 48dp minimum touch target ──
      iconButtonTheme: IconButtonThemeData(
        style: IconButton.styleFrom(
          minimumSize: const Size(48, 48),
        ),
      ),

      // ── Chips ──
      chipTheme: ChipThemeData(
        backgroundColor: colorScheme.surfaceContainerHighest,
        deleteIconColor: colorScheme.onSurfaceVariant,
        labelStyle: getFont.copyWith(
          fontSize: 12,
          fontWeight: FontWeight.w500,
          color: colorScheme.onSurface,
        ),
        padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(16),
        ),
      ),
    );
  }

  // ────────────────────────────────────────────────────────────────────
  // Full 15-style text theme for both light and dark
  // ────────────────────────────────────────────────────────────────────

  static TextTheme _buildFullTextTheme({
    required double multiplier,
    required String? fontFamily,
    required ColorScheme colorScheme,
    required bool isDark,
  }) {
    final textColor = colorScheme.onSurface;
    final secondaryColor = colorScheme.onSurfaceVariant;
    final getFont = fontFamily != null
        ? GoogleFonts.getFont(fontFamily)
        : GoogleFonts.inter();

    return TextTheme(
      displayLarge: getFont.copyWith(
        fontSize: 56 * multiplier,
        fontWeight: FontWeight.w800,
        height: 1.1,
        color: textColor,
      ),
      displayMedium: getFont.copyWith(
        fontSize: 36 * multiplier,
        fontWeight: FontWeight.w700,
        height: 1.2,
        color: textColor,
      ),
      displaySmall: getFont.copyWith(
        fontSize: 28 * multiplier,
        fontWeight: FontWeight.w600,
        height: 1.2,
        color: textColor,
      ),
      headlineLarge: getFont.copyWith(
        fontSize: 24 * multiplier,
        fontWeight: FontWeight.w600,
        height: 1.3,
        color: textColor,
      ),
      headlineMedium: getFont.copyWith(
        fontSize: 22 * multiplier,
        fontWeight: FontWeight.w600,
        height: 1.3,
        color: textColor,
      ),
      headlineSmall: getFont.copyWith(
        fontSize: 20 * multiplier,
        fontWeight: FontWeight.w600,
        height: 1.3,
        color: textColor,
      ),
      titleLarge: getFont.copyWith(
        fontSize: 18 * multiplier,
        fontWeight: FontWeight.w600,
        height: 1.4,
        color: textColor,
      ),
      titleMedium: getFont.copyWith(
        fontSize: 16 * multiplier,
        fontWeight: FontWeight.w500,
        height: 1.4,
        color: textColor,
      ),
      titleSmall: getFont.copyWith(
        fontSize: 14 * multiplier,
        fontWeight: FontWeight.w500,
        height: 1.4,
        color: textColor,
      ),
      bodyLarge: getFont.copyWith(
        fontSize: 16 * multiplier,
        fontWeight: FontWeight.normal,
        height: 1.6,
        color: textColor,
      ),
      bodyMedium: getFont.copyWith(
        fontSize: 15 * multiplier,
        fontWeight: FontWeight.normal,
        height: 1.6,
        color: textColor,
      ),
      bodySmall: getFont.copyWith(
        fontSize: 13 * multiplier,
        fontWeight: FontWeight.normal,
        height: 1.5,
        color: secondaryColor,
      ),
      labelLarge: getFont.copyWith(
        fontSize: 14 * multiplier,
        fontWeight: FontWeight.w500,
        color: textColor,
      ),
      labelMedium: getFont.copyWith(
        fontSize: 12 * multiplier,
        fontWeight: FontWeight.w500,
        color: secondaryColor,
      ),
      labelSmall: getFont.copyWith(
        fontSize: 10 * multiplier,
        fontWeight: FontWeight.w500,
        color: secondaryColor,
      ),
    );
  }
}
