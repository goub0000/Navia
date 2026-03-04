import 'package:flutter/widgets.dart';
import 'package:go_router/go_router.dart';

/// A zero-duration page transition that **fades with the animation** instead of
/// ignoring it. go_router's built-in [NoTransitionPage] returns the child
/// unconditionally, so if the Navigator takes an extra frame to remove the old
/// route's OverlayEntry, the outgoing page renders at full opacity – producing
/// the "ghost layer" bug on Flutter web/CanvasKit.
///
/// [InstantPage] wraps the child in a [FadeTransition] tied to the route's
/// primary animation. Because [transitionDuration] and
/// [reverseTransitionDuration] are both [Duration.zero], the animation jumps
/// to 1.0 on enter and 0.0 on exit in the same frame. If the OverlayEntry
/// lingers, the child is invisible (opacity 0) instead of fully opaque.
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
    return FadeTransition(opacity: animation, child: child);
  }
}
