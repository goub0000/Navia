import 'package:flutter/animation.dart';

/// M3 motion constants used throughout the app.
class AppMotion {
  AppMotion._();

  // Durations
  static const Duration durationEnter = Duration(milliseconds: 300);
  static const Duration durationExit = Duration(milliseconds: 250);
  static const Duration durationShort = Duration(milliseconds: 200);

  // Curves
  static const Curve curveEnter = Curves.easeOutCubic;
  static const Curve curveExit = Curves.easeInCubic;
  static const Curve curveStandard = Curves.easeInOut;
}
