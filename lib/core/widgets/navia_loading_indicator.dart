import 'package:flutter/material.dart';
import 'navia_logo.dart';

/// Branded loading indicator featuring the NAVIA "N" lettermark with a
/// looping pulse animation. Replaces generic [CircularProgressIndicator]
/// throughout the app.
///
/// Three presets:
/// - `NaviaLoadingIndicator()` — 64 px, standard full-page loading
/// - `NaviaLoadingIndicator.compact()` — 36 px, inline / card / section
/// - `NaviaLoadingIndicator.hero()` — 96 px, splash / initial loading
class NaviaLoadingIndicator extends StatefulWidget {
  /// Diameter of the circular icon container.
  final double size;

  /// Optional message displayed beneath the icon.
  final String? message;

  const NaviaLoadingIndicator({
    super.key,
    this.size = 64,
    this.message,
  });

  /// Compact variant for inline / card / section loading.
  const NaviaLoadingIndicator.compact({
    super.key,
    this.message,
  }) : size = 36;

  /// Hero variant for splash / initial loading screens.
  const NaviaLoadingIndicator.hero({
    super.key,
    this.message,
  }) : size = 96;

  @override
  State<NaviaLoadingIndicator> createState() => _NaviaLoadingIndicatorState();
}

class _NaviaLoadingIndicatorState extends State<NaviaLoadingIndicator>
    with SingleTickerProviderStateMixin {
  late final AnimationController _controller;
  late final Animation<double> _scale;
  late final Animation<double> _opacity;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 1400),
    );

    _scale = Tween<double>(begin: 0.85, end: 1.05).animate(
      CurvedAnimation(parent: _controller, curve: Curves.easeInOut),
    );

    _opacity = Tween<double>(begin: 0.4, end: 1.0).animate(
      CurvedAnimation(parent: _controller, curve: Curves.easeInOut),
    );

    _controller.repeat(reverse: true);
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final isDark = Theme.of(context).brightness == Brightness.dark;
    final reduceMotion = MediaQuery.of(context).disableAnimations;

    final bgColor =
        isDark ? NaviaBrandColors.midnight : NaviaBrandColors.midnight;
    final glowColor = NaviaBrandColors.teal;

    // Static fallback when the user prefers reduced motion.
    if (reduceMotion) {
      return Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            NaviaLogoIcon(size: widget.size, backgroundColor: bgColor),
            if (widget.message != null) ...[
              const SizedBox(height: 16),
              Text(
                widget.message!,
                style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                      color: isDark
                          ? NaviaBrandColors.warmGray
                          : NaviaBrandColors.warmGray,
                    ),
              ),
            ],
          ],
        ),
      );
    }

    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          AnimatedBuilder(
            animation: _controller,
            builder: (context, child) {
              return Transform.scale(
                scale: _scale.value,
                child: Opacity(
                  opacity: _opacity.value,
                  child: Container(
                    width: widget.size,
                    height: widget.size,
                    decoration: BoxDecoration(
                      color: bgColor,
                      shape: BoxShape.circle,
                      boxShadow: [
                        BoxShadow(
                          color: glowColor.withValues(
                            alpha: 0.3 * _opacity.value,
                          ),
                          blurRadius: widget.size * 0.35 * _opacity.value,
                          spreadRadius: widget.size * 0.05 * _opacity.value,
                        ),
                      ],
                    ),
                    alignment: Alignment.center,
                    child: Text(
                      'N',
                      style: TextStyle(
                        fontFamily: 'Georgia',
                        fontSize: widget.size * 0.55,
                        fontWeight: FontWeight.w700,
                        color: NaviaBrandColors.teal,
                        height: 1.0,
                      ),
                    ),
                  ),
                ),
              );
            },
          ),
          if (widget.message != null) ...[
            const SizedBox(height: 16),
            Text(
              widget.message!,
              style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                    color: isDark
                        ? NaviaBrandColors.warmGray
                        : NaviaBrandColors.warmGray,
                  ),
            ),
          ],
        ],
      ),
    );
  }
}
