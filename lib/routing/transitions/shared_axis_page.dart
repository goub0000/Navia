import 'package:flutter/widgets.dart';
import 'package:go_router/go_router.dart';

/// Page transition that avoids compositing layers on Flutter Web CanvasKit.
///
/// Uses a 1 ms duration (not Duration.zero) so the AnimationController's
/// Ticker properly fires and transitions the animation status to `dismissed`.
/// See [InstantPage] for the full rationale.
class SharedAxisPage<T> extends CustomTransitionPage<T> {
  SharedAxisPage({
    required super.child,
    super.key,
    super.name,
    super.arguments,
    super.restorationId,
  }) : super(
          transitionDuration: const Duration(milliseconds: 1),
          reverseTransitionDuration: const Duration(milliseconds: 1),
          transitionsBuilder: _builder,
        );

  static Widget _builder(
    BuildContext context,
    Animation<double> animation,
    Animation<double> secondaryAnimation,
    Widget child,
  ) {
    final isExiting = animation.value <= 0.0 || animation.isDismissed;
    if (isExiting) {
      return const Offstage(child: SizedBox.shrink());
    }
    return child;
  }
}
