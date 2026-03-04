import 'package:flutter/widgets.dart';
import 'package:go_router/go_router.dart';

/// A zero-duration page that avoids **both** ghost-layer bugs on Flutter web:
///
/// 1. **NoTransitionPage bug**: Its builder returns `child` unconditionally,
///    so if the Navigator takes an extra frame to remove the old route's
///    OverlayEntry, the outgoing page renders at full opacity.
///
/// 2. **FadeTransition compositing bug**: Wrapping in `FadeTransition` creates
///    a `RenderAnimatedOpacity` compositing layer even at opacity 1.0.
///    On CanvasKit this layer can cause the entire page to render washed-out.
///
/// **Solution**: Check the animation status directly.
///   - Dismissed (page exiting) → render nothing (`SizedBox.shrink`).
///   - Otherwise → return `child` directly (no compositing layer).
class InstantPage<T> extends CustomTransitionPage<T> {
  const InstantPage({
    required super.child,
    super.key,
    super.name,
    super.arguments,
    super.restorationId,
  }) : super(
          transitionDuration: Duration.zero,
          reverseTransitionDuration: Duration.zero,
          transitionsBuilder: _builder,
        );

  static Widget _builder(
    BuildContext context,
    Animation<double> animation,
    Animation<double> secondaryAnimation,
    Widget child,
  ) {
    // When the route's exit animation completes (value reaches 0),
    // render nothing so a lingering OverlayEntry is invisible.
    if (animation.isDismissed) return const SizedBox.shrink();
    // Otherwise return child directly — no FadeTransition, no compositing layer.
    return child;
  }
}
