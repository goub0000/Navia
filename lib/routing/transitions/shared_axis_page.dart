import 'package:flutter/widgets.dart';
import 'package:go_router/go_router.dart';

/// Page transition that avoids compositing layers on Flutter Web CanvasKit.
///
/// Previously used [SharedAxisTransition] from the `animations` package,
/// which internally wraps the child in [FadeTransition]. FadeTransition
/// creates a [RenderAnimatedOpacity] that ALWAYS triggers `saveLayer`
/// compositing — even at opacity 1.0. On Skwasm/CanvasKit this causes
/// gray overlays and washed-out rendering artifacts during route transitions.
///
/// Now uses the same zero-compositing-layer approach as [InstantPage]:
/// check animation status directly and return child without any wrapper.
class SharedAxisPage<T> extends CustomTransitionPage<T> {
  SharedAxisPage({
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
    if (animation.isDismissed) return const SizedBox.shrink();
    return child;
  }
}
