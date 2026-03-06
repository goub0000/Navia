import 'package:flutter/widgets.dart';
import 'package:go_router/go_router.dart';

/// A near-instant page transition that avoids ghost-layer bugs on CanvasKit.
///
/// Uses a 1 ms duration (not Duration.zero) so the AnimationController's
/// Ticker properly fires and transitions the animation status to `dismissed`.
/// With Duration.zero, the status update can race the ticker on CanvasKit,
/// leaving the exiting page's OverlayEntry permanently visible — producing
/// a washed-out, unscrollable home page.
///
/// When exiting (animation value ≤ 0), renders an [Offstage] + [IgnorePointer]
/// to guarantee the old page is both invisible AND non-interactive.
class InstantPage<T> extends CustomTransitionPage<T> {
  const InstantPage({
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
    // Use value check (synchronous) instead of isDismissed (may lag ticker).
    // Offstage + IgnorePointer ensures the exiting page is fully invisible
    // and cannot absorb pointer events, even if the OverlayEntry lingers.
    final isExiting = animation.value <= 0.0 || animation.isDismissed;
    if (isExiting) {
      return const Offstage(child: SizedBox.shrink());
    }
    return child;
  }
}
