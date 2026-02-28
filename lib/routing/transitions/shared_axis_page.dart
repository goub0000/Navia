import 'package:animations/animations.dart';
import 'package:flutter/widgets.dart';
import 'package:go_router/go_router.dart';
import '../../core/theme/app_motion.dart';

/// A [CustomTransitionPage] that uses [SharedAxisTransition] (horizontal axis)
/// for smooth M3 page transitions.
class SharedAxisPage<T> extends CustomTransitionPage<T> {
  SharedAxisPage({
    required super.child,
    super.key,
    super.name,
    super.arguments,
    super.restorationId,
  }) : super(
          transitionDuration: AppMotion.durationEnter,
          reverseTransitionDuration: AppMotion.durationExit,
          transitionsBuilder: (context, animation, secondaryAnimation, child) {
            return SharedAxisTransition(
              animation: animation,
              secondaryAnimation: secondaryAnimation,
              transitionType: SharedAxisTransitionType.horizontal,
              child: child,
            );
          },
        );
}
