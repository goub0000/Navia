import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'app_colors.dart';

/// App theme configuration with light and dark themes.
///
/// Uses [ColorScheme.fromSeed] (M3 dynamic color) so every tonal slot is
/// derived automatically.  Brand overrides (secondary = Navy,
/// error = Material Red, tertiary = Gold) are applied after seed generation.
class AppTheme {
  AppTheme._();

  /// Default seed colour — Teal (NAVIA brand primary).
  static const Color defaultSeed = Color(0xFF2EC4B6);

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
    //
    // fromSeed derives neutral tonal slots from the seed hue, which can
    // produce a purple/lavender tint for teal seeds.  We override every
    // surface, outline and container slot with NAVIA brand neutrals so the
    // palette stays warm-neutral (Ivory / Sand / Light Gray / Midnight).
    final colorScheme = ColorScheme.fromSeed(
      seedColor: seedColor,
      brightness: brightness,
    ).copyWith(
      // Brand overrides — Navy secondary, Material Red error, Gold tertiary
      secondary: isDark ? AppColors.secondaryLight : AppColors.secondary,
      onSecondary: Colors.white,
      secondaryContainer: isDark
          ? AppColors.primaryDark
          : AppColors.primary, // Teal — used by selected FilterChips
      onSecondaryContainer: Colors.white,
      error: isDark ? const Color(0xFFEF5350) : const Color(0xFFD32F2F),
      tertiary: isDark ? AppColors.accentLight : AppColors.accent,

      // ── Surface & neutral overrides (kills M3 purple tint) ──
      surface: isDark ? AppColors.darkBackground : AppColors.surface,
      onSurface: isDark ? AppColors.darkTextPrimary : AppColors.textPrimary,
      onSurfaceVariant:
          isDark ? AppColors.darkTextSecondary : AppColors.textDisabled,
      surfaceTint: Colors.transparent, // disable M3 tonal elevation tint
      surfaceContainerLowest:
          isDark ? const Color(0xFF080C12) : Colors.white,
      surfaceContainerLow:
          isDark ? AppColors.darkSurface : AppColors.background,
      surfaceContainer:
          isDark ? AppColors.darkSurfaceContainer : AppColors.background,
      surfaceContainerHigh:
          isDark ? AppColors.darkSurfaceContainerHigh : AppColors.sectionWarm,
      surfaceContainerHighest:
          isDark ? AppColors.darkSurfaceContainerHighest : AppColors.sectionWarm,
      inverseSurface:
          isDark ? AppColors.sectionLight : AppColors.darkBackground,
      onInverseSurface:
          isDark ? AppColors.textPrimary : AppColors.darkTextPrimary,

      // ── Outline / border overrides ──
      outline: isDark ? AppColors.darkBorder : AppColors.border,
      outlineVariant: isDark ? AppColors.darkDivider : AppColors.border,

      // ── Primary container (avoids purple-tinted container) ──
      primaryContainer:
          isDark ? const Color(0xFF0E3A36) : const Color(0xFFD5F5F1),
      onPrimaryContainer:
          isDark ? AppColors.primaryLight : AppColors.primaryDark,
    );

    // Focus outline color for keyboard-focus-visible indicators
    final focusOutlineColor = isDark ? Colors.white : colorScheme.primary;

    // Reusable focus side resolver for button themes
    final focusSide = WidgetStateProperty.resolveWith<BorderSide?>(
      (states) {
        if (states.contains(WidgetState.focused)) {
          return BorderSide(color: focusOutlineColor, width: 2);
        }
        return null;
      },
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
      splashFactory: InkSparkle.splashFactory,
      scaffoldBackgroundColor: colorScheme.surface,
      focusColor: focusOutlineColor,
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
        ).copyWith(side: focusSide),
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
        ).copyWith(side: focusSide),
      ),
      textButtonTheme: TextButtonThemeData(
        style: TextButton.styleFrom(
          foregroundColor: colorScheme.primary,
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
          textStyle: getFont.copyWith(
            fontSize: 14 * fontSizeMultiplier,
            fontWeight: FontWeight.w600,
          ),
        ).copyWith(side: focusSide),
      ),

      // ── Inputs ──
      // filled:false — filled:true + height on TextStyle causes CanvasKit to
      // render the cursor at position 0 on Flutter web.
      inputDecorationTheme: InputDecorationTheme(
        filled: false,
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
        ).copyWith(side: focusSide),
      ),

      // ── Segmented Buttons ──
      segmentedButtonTheme: SegmentedButtonThemeData(
        style: ButtonStyle(
          side: focusSide,
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
        side: WidgetStateBorderSide.resolveWith(
          (states) {
            if (states.contains(WidgetState.focused)) {
              return BorderSide(color: focusOutlineColor, width: 2);
            }
            return BorderSide.none;
          },
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
        // height removed — explicit line-height multiplier causes CanvasKit
        // to miscalculate cursor x-offset in TextFormField on Flutter web.
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
