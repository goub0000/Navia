import 'package:flutter/material.dart';
import 'package:flutter_riverpod/legacy.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../../features/authentication/providers/auth_provider.dart';

/// Provider for locale preferences — scoped per user so each account keeps its
/// own language setting.
final localeProvider = StateNotifierProvider<LocaleNotifier, Locale>((ref) {
  final authState = ref.watch(authProvider);
  final userId = authState.user?.id;
  return LocaleNotifier(userId);
});

class LocaleNotifier extends StateNotifier<Locale> {
  LocaleNotifier(this._userId) : super(const Locale('en')) {
    _load();
  }

  final String? _userId;

  String get _key =>
      _userId != null ? 'appearance_${_userId}_app_locale' : 'app_locale';

  Future<void> _load() async {
    if (_userId == null) return; // no user → keep default
    final prefs = await SharedPreferences.getInstance();
    final code = prefs.getString(_key);
    if (code != null) {
      state = Locale(code);
    }
  }

  Future<void> setLocale(Locale locale) async {
    state = locale;
    if (_userId == null) return;
    final prefs = await SharedPreferences.getInstance();
    await prefs.setString(_key, locale.languageCode);
  }
}
