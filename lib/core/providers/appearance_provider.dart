// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_riverpod/legacy.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../../features/authentication/providers/auth_provider.dart';

/// Appearance preferences state
class AppearancePreferences {
  final ThemeMode themeMode;
  final double fontSize;
  final String fontFamily;
  final bool compactMode;
  final Color accentColor;

  const AppearancePreferences({
    this.themeMode = ThemeMode.system,
    this.fontSize = 16.0,
    this.fontFamily = 'System Default',
    this.compactMode = false,
    this.accentColor = const Color(0xFF6B4CE6), // AppColors.primary
  });

  AppearancePreferences copyWith({
    ThemeMode? themeMode,
    double? fontSize,
    String? fontFamily,
    bool? compactMode,
    Color? accentColor,
  }) {
    return AppearancePreferences(
      themeMode: themeMode ?? this.themeMode,
      fontSize: fontSize ?? this.fontSize,
      fontFamily: fontFamily ?? this.fontFamily,
      compactMode: compactMode ?? this.compactMode,
      accentColor: accentColor ?? this.accentColor,
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'themeMode': themeMode.index,
      'fontSize': fontSize,
      'fontFamily': fontFamily,
      'compactMode': compactMode,
      'accentColor': accentColor.value,
    };
  }

  factory AppearancePreferences.fromJson(Map<String, dynamic> json) {
    return AppearancePreferences(
      themeMode: ThemeMode.values[json['themeMode'] ?? 0],
      fontSize: json['fontSize']?.toDouble() ?? 16.0,
      fontFamily: json['fontFamily'] ?? 'System Default',
      compactMode: json['compactMode'] ?? false,
      accentColor: Color(json['accentColor'] ?? 0xFF6B4CE6),
    );
  }
}

/// Appearance preferences notifier — scoped per user.
///
/// Storage keys are prefixed with the user ID so that each account keeps its
/// own theme, font size, accent color, etc.  When [_userId] is null (logged
/// out) the notifier falls back to the defaults without touching storage.
class AppearanceNotifier extends StateNotifier<AppearancePreferences> {
  AppearanceNotifier(this._userId) : super(const AppearancePreferences()) {
    _loadPreferences();
  }

  final String? _userId;

  /// Build a per-user storage key.  Falls back to the bare [key] when there is
  /// no authenticated user (shouldn't normally persist in that case).
  String _key(String key) =>
      _userId != null ? 'appearance_${_userId}_$key' : key;

  Future<void> _loadPreferences() async {
    // No user → keep defaults; don't read stale global keys.
    if (_userId == null) return;

    final prefs = await SharedPreferences.getInstance();
    final themeModeIndex = prefs.getInt(_key('themeMode')) ?? 0;
    final fontSize = prefs.getDouble(_key('fontSize')) ?? 16.0;
    final fontFamily = prefs.getString(_key('fontFamily')) ?? 'System Default';
    final compactMode = prefs.getBool(_key('compactMode')) ?? false;
    final accentColor = prefs.getInt(_key('accentColor')) ?? 0xFF6B4CE6;

    state = AppearancePreferences(
      themeMode: ThemeMode.values[themeModeIndex],
      fontSize: fontSize,
      fontFamily: fontFamily,
      compactMode: compactMode,
      accentColor: Color(accentColor),
    );
  }

  Future<void> setThemeMode(ThemeMode mode) async {
    state = state.copyWith(themeMode: mode);
    if (_userId == null) return;
    final prefs = await SharedPreferences.getInstance();
    await prefs.setInt(_key('themeMode'), mode.index);
  }

  Future<void> setFontSize(double size) async {
    state = state.copyWith(fontSize: size);
    if (_userId == null) return;
    final prefs = await SharedPreferences.getInstance();
    await prefs.setDouble(_key('fontSize'), size);
  }

  Future<void> setFontFamily(String family) async {
    state = state.copyWith(fontFamily: family);
    if (_userId == null) return;
    final prefs = await SharedPreferences.getInstance();
    await prefs.setString(_key('fontFamily'), family);
  }

  Future<void> setCompactMode(bool compact) async {
    state = state.copyWith(compactMode: compact);
    if (_userId == null) return;
    final prefs = await SharedPreferences.getInstance();
    await prefs.setBool(_key('compactMode'), compact);
  }

  Future<void> setAccentColor(Color color) async {
    state = state.copyWith(accentColor: color);
    if (_userId == null) return;
    final prefs = await SharedPreferences.getInstance();
    await prefs.setInt(_key('accentColor'), color.value);
  }
}

/// Available font families
const availableFonts = [
  'System Default',
  'Roboto',
  'Open Sans',
  'Lato',
  'Montserrat',
  'Poppins',
  'Raleway',
  'Ubuntu',
];

/// Provider for appearance preferences — rebuilds when the user changes so
/// each account gets its own stored theme settings.
final appearanceProvider =
    StateNotifierProvider<AppearanceNotifier, AppearancePreferences>((ref) {
  final authState = ref.watch(authProvider);
  final userId = authState.user?.id;
  return AppearanceNotifier(userId);
});

/// Provider for current theme mode
final themeModeProvider = Provider<ThemeMode>((ref) {
  return ref.watch(appearanceProvider).themeMode;
});

/// Provider for current font family
final fontFamilyProvider = Provider<String>((ref) {
  return ref.watch(appearanceProvider).fontFamily;
});

/// Provider for current font size
final fontSizeProvider = Provider<double>((ref) {
  return ref.watch(appearanceProvider).fontSize;
});
