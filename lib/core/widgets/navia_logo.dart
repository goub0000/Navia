import 'package:flutter/material.dart';

/// NAVIA Brand Logo Widget
///
/// Renders the NAVIA wordmark natively using Flutter text rendering.
/// The N is always rendered in the brand teal accent color, while
/// the remaining letters (AVIA) adapt to the background context.
///
/// Usage:
/// ```dart
/// // Default (dark background)
/// const NaviaLogo()
///
/// // Light background
/// const NaviaLogo(variant: NaviaLogoVariant.light)
///
/// // Monogram only (app icon, favicon)
/// const NaviaLogo(variant: NaviaLogoVariant.dark, showMonogramOnly: true)
///
/// // Custom size
/// const NaviaLogo(fontSize: 48)
///
/// // In an AppBar
/// AppBar(title: const NaviaLogo(fontSize: 24))
/// ```
///
/// Brand Colors:
///   NAVIA Teal:  #2EC4B6 (primary accent, N lettermark)
///   Deep Teal:   #1A9E92 (N on light backgrounds for contrast)
///   Midnight:    #0D1117 (AVIA on light backgrounds)
///   Ivory:       #F8F6F2 (AVIA on dark backgrounds)

// ─────────────────────────────────────────────
// Brand Constants
// ─────────────────────────────────────────────

class NaviaBrandColors {
  NaviaBrandColors._();

  static const Color teal = Color(0xFF2EC4B6);
  static const Color tealDeep = Color(0xFF1A9E92);
  static const Color midnight = Color(0xFF0D1117);
  static const Color navy = Color(0xFF1B2340);
  static const Color ivory = Color(0xFFF8F6F2);
  static const Color sand = Color(0xFFF0EAE0);
  static const Color warmGray = Color(0xFF9A9488);
  static const Color lightGray = Color(0xFFE8E6E3);
}

enum NaviaLogoVariant {
  /// Teal N + Ivory AVIA — for dark backgrounds
  dark,

  /// Deep Teal N + Midnight AVIA — for light backgrounds
  light,

  /// Full white text — for teal/colored backgrounds
  monoWhite,

  /// Full midnight text — for light backgrounds (no accent)
  monoMidnight,

  /// Full teal text — for dark or light backgrounds
  monoTeal,
}

// ─────────────────────────────────────────────
// NaviaLogo Widget
// ─────────────────────────────────────────────

class NaviaLogo extends StatelessWidget {
  /// The logo variant controlling color scheme.
  final NaviaLogoVariant variant;

  /// Font size for the wordmark. Default is 32.
  final double fontSize;

  /// If true, only renders the "N" monogram.
  final bool showMonogramOnly;

  /// If true, shows the tagline "Navigate your future" below the wordmark.
  final bool showTagline;

  /// Optional custom color for the accent letter (N).
  /// Overrides the variant's default accent color.
  final Color? accentColorOverride;

  /// Optional custom color for the remaining letters (AVIA).
  /// Overrides the variant's default text color.
  final Color? textColorOverride;

  /// Letter spacing multiplier. Default is 0.06 (6% of font size).
  final double letterSpacingFactor;

  const NaviaLogo({
    super.key,
    this.variant = NaviaLogoVariant.dark,
    this.fontSize = 32,
    this.showMonogramOnly = false,
    this.showTagline = false,
    this.accentColorOverride,
    this.textColorOverride,
    this.letterSpacingFactor = 0.06,
  });

  /// Convenience constructor for the full logo with tagline.
  const NaviaLogo.withTagline({
    super.key,
    this.variant = NaviaLogoVariant.dark,
    this.fontSize = 32,
    this.accentColorOverride,
    this.textColorOverride,
    this.letterSpacingFactor = 0.06,
  }) : showMonogramOnly = false,
       showTagline = true;

  /// Convenience constructor for the monogram (N mark only).
  const NaviaLogo.monogram({
    super.key,
    this.variant = NaviaLogoVariant.dark,
    this.fontSize = 48,
    this.accentColorOverride,
    this.textColorOverride,
    this.letterSpacingFactor = 0.0,
  }) : showMonogramOnly = true,
       showTagline = false;

  Color get _accentColor {
    if (accentColorOverride != null) return accentColorOverride!;
    switch (variant) {
      case NaviaLogoVariant.dark:
        return NaviaBrandColors.teal;
      case NaviaLogoVariant.light:
        return NaviaBrandColors.tealDeep;
      case NaviaLogoVariant.monoWhite:
        return Colors.white;
      case NaviaLogoVariant.monoMidnight:
        return NaviaBrandColors.midnight;
      case NaviaLogoVariant.monoTeal:
        return NaviaBrandColors.teal;
    }
  }

  Color get _textColor {
    if (textColorOverride != null) return textColorOverride!;
    switch (variant) {
      case NaviaLogoVariant.dark:
        return NaviaBrandColors.ivory;
      case NaviaLogoVariant.light:
        return NaviaBrandColors.midnight;
      case NaviaLogoVariant.monoWhite:
        return Colors.white;
      case NaviaLogoVariant.monoMidnight:
        return NaviaBrandColors.midnight;
      case NaviaLogoVariant.monoTeal:
        return NaviaBrandColors.teal;
    }
  }

  Color get _taglineColor {
    switch (variant) {
      case NaviaLogoVariant.dark:
        return NaviaBrandColors.warmGray;
      case NaviaLogoVariant.light:
        return NaviaBrandColors.warmGray;
      case NaviaLogoVariant.monoWhite:
        return Colors.white70;
      case NaviaLogoVariant.monoMidnight:
        return NaviaBrandColors.warmGray;
      case NaviaLogoVariant.monoTeal:
        return NaviaBrandColors.tealDeep;
    }
  }

  @override
  Widget build(BuildContext context) {
    final double letterSpacing = fontSize * letterSpacingFactor;

    if (showMonogramOnly) {
      return Text(
        'N',
        style: TextStyle(
          fontFamily: 'Georgia',
          fontSize: fontSize,
          fontWeight: FontWeight.w700,
          color: _accentColor,
          letterSpacing: 0,
          height: 1.0,
        ),
      );
    }

    final wordmark = Text.rich(
      TextSpan(
        children: [
          TextSpan(
            text: 'N',
            style: TextStyle(
              fontFamily: 'Georgia',
              fontSize: fontSize,
              fontWeight: FontWeight.w700,
              color: _accentColor,
              letterSpacing: letterSpacing,
              height: 1.0,
            ),
          ),
          TextSpan(
            text: 'AVIA',
            style: TextStyle(
              fontFamily: 'Georgia',
              fontSize: fontSize,
              fontWeight: FontWeight.w400,
              color: _textColor,
              letterSpacing: letterSpacing,
              height: 1.0,
            ),
          ),
        ],
      ),
    );

    if (!showTagline) return wordmark;

    return Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        wordmark,
        SizedBox(height: fontSize * 0.25),
        Text(
          'Navigate your future',
          style: TextStyle(
            fontFamily: 'Georgia',
            fontSize: fontSize * 0.3,
            fontWeight: FontWeight.w400,
            fontStyle: FontStyle.italic,
            color: _taglineColor,
            letterSpacing: fontSize * 0.02,
            height: 1.0,
          ),
        ),
      ],
    );
  }
}

// ─────────────────────────────────────────────
// NaviaLogoIcon — For use as app icon / avatar
// ─────────────────────────────────────────────

/// A circular or rounded-square container with the N monogram.
/// Useful for app icons, profile avatars, and social media.
class NaviaLogoIcon extends StatelessWidget {
  /// Size of the icon container.
  final double size;

  /// Background color of the container.
  final Color backgroundColor;

  /// Color of the N lettermark.
  final Color letterColor;

  /// Border radius. Use size/2 for circle, size*0.2 for rounded square.
  final double? borderRadius;

  const NaviaLogoIcon({
    super.key,
    this.size = 48,
    this.backgroundColor = NaviaBrandColors.midnight,
    this.letterColor = NaviaBrandColors.teal,
    this.borderRadius,
  });

  /// Circular icon (for avatars, social profiles).
  const NaviaLogoIcon.circle({
    super.key,
    this.size = 48,
    this.backgroundColor = NaviaBrandColors.midnight,
    this.letterColor = NaviaBrandColors.teal,
  }) : borderRadius = null; // Will use size/2

  /// Rounded square icon (for app icons).
  const NaviaLogoIcon.appIcon({
    super.key,
    this.size = 48,
    this.backgroundColor = NaviaBrandColors.midnight,
    this.letterColor = NaviaBrandColors.teal,
  }) : borderRadius = null; // Will use size * 0.22

  @override
  Widget build(BuildContext context) {
    final double radius = borderRadius ?? size / 2;

    return Container(
      width: size,
      height: size,
      decoration: BoxDecoration(
        color: backgroundColor,
        borderRadius: BorderRadius.circular(radius),
      ),
      alignment: Alignment.center,
      child: Text(
        'N',
        style: TextStyle(
          fontFamily: 'Georgia',
          fontSize: size * 0.55,
          fontWeight: FontWeight.w700,
          color: letterColor,
          height: 1.0,
        ),
      ),
    );
  }
}

// ─────────────────────────────────────────────
// NaviaLogoPainter — Custom painted version
// ─────────────────────────────────────────────

/// A CustomPainter-based logo for scenarios where you need pixel-perfect
/// control, such as splash screens, custom animations, or Canvas-based UI.
class NaviaLogoPainter extends CustomPainter {
  final NaviaLogoVariant variant;
  final double fontSize;
  final bool monogramOnly;

  NaviaLogoPainter({
    this.variant = NaviaLogoVariant.dark,
    this.fontSize = 64,
    this.monogramOnly = false,
  });

  Color get _accentColor {
    switch (variant) {
      case NaviaLogoVariant.dark:
        return NaviaBrandColors.teal;
      case NaviaLogoVariant.light:
        return NaviaBrandColors.tealDeep;
      case NaviaLogoVariant.monoWhite:
        return Colors.white;
      case NaviaLogoVariant.monoMidnight:
        return NaviaBrandColors.midnight;
      case NaviaLogoVariant.monoTeal:
        return NaviaBrandColors.teal;
    }
  }

  Color get _textColor {
    switch (variant) {
      case NaviaLogoVariant.dark:
        return NaviaBrandColors.ivory;
      case NaviaLogoVariant.light:
        return NaviaBrandColors.midnight;
      case NaviaLogoVariant.monoWhite:
        return Colors.white;
      case NaviaLogoVariant.monoMidnight:
        return NaviaBrandColors.midnight;
      case NaviaLogoVariant.monoTeal:
        return NaviaBrandColors.teal;
    }
  }

  @override
  void paint(Canvas canvas, Size size) {
    final nSpan = TextSpan(
      text: 'N',
      style: TextStyle(
        fontFamily: 'Georgia',
        fontSize: fontSize,
        fontWeight: FontWeight.w700,
        color: _accentColor,
      ),
    );

    final nPainter = TextPainter(text: nSpan, textDirection: TextDirection.ltr)
      ..layout();

    // Center vertically
    final yOffset = (size.height - nPainter.height) / 2;

    if (monogramOnly) {
      final xOffset = (size.width - nPainter.width) / 2;
      nPainter.paint(canvas, Offset(xOffset, yOffset));
      return;
    }

    final aviaSpan = TextSpan(
      text: 'AVIA',
      style: TextStyle(
        fontFamily: 'Georgia',
        fontSize: fontSize,
        fontWeight: FontWeight.w400,
        color: _textColor,
      ),
    );

    final aviaPainter = TextPainter(
      text: aviaSpan,
      textDirection: TextDirection.ltr,
    )..layout();

    final totalWidth = nPainter.width + aviaPainter.width;
    final xStart = (size.width - totalWidth) / 2;

    nPainter.paint(canvas, Offset(xStart, yOffset));
    aviaPainter.paint(canvas, Offset(xStart + nPainter.width, yOffset));
  }

  @override
  bool shouldRepaint(covariant NaviaLogoPainter oldDelegate) {
    return oldDelegate.variant != variant ||
        oldDelegate.fontSize != fontSize ||
        oldDelegate.monogramOnly != monogramOnly;
  }
}

/// Widget wrapper for NaviaLogoPainter.
class NaviaLogoCanvas extends StatelessWidget {
  final NaviaLogoVariant variant;
  final double fontSize;
  final bool monogramOnly;
  final double width;
  final double height;

  const NaviaLogoCanvas({
    super.key,
    this.variant = NaviaLogoVariant.dark,
    this.fontSize = 64,
    this.monogramOnly = false,
    this.width = 300,
    this.height = 80,
  });

  @override
  Widget build(BuildContext context) {
    return CustomPaint(
      size: Size(width, height),
      painter: NaviaLogoPainter(
        variant: variant,
        fontSize: fontSize,
        monogramOnly: monogramOnly,
      ),
    );
  }
}

// ─────────────────────────────────────────────
// Animated Logo — For splash screens
// ─────────────────────────────────────────────

/// Animated NAVIA logo where the N fades in first, then AVIA follows.
/// Ideal for splash screens and loading states.
class NaviaLogoAnimated extends StatefulWidget {
  final NaviaLogoVariant variant;
  final double fontSize;
  final bool showTagline;
  final Duration nDuration;
  final Duration aviaDuration;
  final Duration aviaDelay;
  final Duration taglineDelay;
  final VoidCallback? onAnimationComplete;

  const NaviaLogoAnimated({
    super.key,
    this.variant = NaviaLogoVariant.dark,
    this.fontSize = 48,
    this.showTagline = true,
    this.nDuration = const Duration(milliseconds: 600),
    this.aviaDuration = const Duration(milliseconds: 800),
    this.aviaDelay = const Duration(milliseconds: 300),
    this.taglineDelay = const Duration(milliseconds: 900),
    this.onAnimationComplete,
  });

  @override
  State<NaviaLogoAnimated> createState() => _NaviaLogoAnimatedState();
}

class _NaviaLogoAnimatedState extends State<NaviaLogoAnimated>
    with TickerProviderStateMixin {
  late AnimationController _nController;
  late AnimationController _aviaController;
  late AnimationController _taglineController;

  late Animation<double> _nOpacity;
  late Animation<double> _nScale;
  late Animation<double> _aviaOpacity;
  late Animation<Offset> _aviaSlide;
  late Animation<double> _taglineOpacity;

  @override
  void initState() {
    super.initState();

    // N animation
    _nController = AnimationController(vsync: this, duration: widget.nDuration);
    _nOpacity = Tween<double>(
      begin: 0,
      end: 1,
    ).animate(CurvedAnimation(parent: _nController, curve: Curves.easeOut));
    _nScale = Tween<double>(
      begin: 0.8,
      end: 1.0,
    ).animate(CurvedAnimation(parent: _nController, curve: Curves.easeOutBack));

    // AVIA animation
    _aviaController = AnimationController(
      vsync: this,
      duration: widget.aviaDuration,
    );
    _aviaOpacity = Tween<double>(
      begin: 0,
      end: 1,
    ).animate(CurvedAnimation(parent: _aviaController, curve: Curves.easeOut));
    _aviaSlide = Tween<Offset>(begin: const Offset(-0.1, 0), end: Offset.zero)
        .animate(
          CurvedAnimation(parent: _aviaController, curve: Curves.easeOutCubic),
        );

    // Tagline animation
    _taglineController = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 600),
    );
    _taglineOpacity = Tween<double>(begin: 0, end: 1).animate(
      CurvedAnimation(parent: _taglineController, curve: Curves.easeOut),
    );

    _startAnimation();
  }

  Future<void> _startAnimation() async {
    _nController.forward();
    await Future.delayed(widget.aviaDelay);
    if (!mounted) return;
    _aviaController.forward();
    if (widget.showTagline) {
      await Future.delayed(widget.taglineDelay);
      if (!mounted) return;
      _taglineController.forward();
    }
    await Future.delayed(const Duration(milliseconds: 400));
    widget.onAnimationComplete?.call();
  }

  @override
  void dispose() {
    _nController.dispose();
    _aviaController.dispose();
    _taglineController.dispose();
    super.dispose();
  }

  Color get _accentColor {
    switch (widget.variant) {
      case NaviaLogoVariant.dark:
        return NaviaBrandColors.teal;
      case NaviaLogoVariant.light:
        return NaviaBrandColors.tealDeep;
      case NaviaLogoVariant.monoWhite:
        return Colors.white;
      case NaviaLogoVariant.monoMidnight:
        return NaviaBrandColors.midnight;
      case NaviaLogoVariant.monoTeal:
        return NaviaBrandColors.teal;
    }
  }

  Color get _textColor {
    switch (widget.variant) {
      case NaviaLogoVariant.dark:
        return NaviaBrandColors.ivory;
      case NaviaLogoVariant.light:
        return NaviaBrandColors.midnight;
      case NaviaLogoVariant.monoWhite:
        return Colors.white;
      case NaviaLogoVariant.monoMidnight:
        return NaviaBrandColors.midnight;
      case NaviaLogoVariant.monoTeal:
        return NaviaBrandColors.teal;
    }
  }

  Color get _taglineColor {
    switch (widget.variant) {
      case NaviaLogoVariant.dark:
        return NaviaBrandColors.warmGray;
      case NaviaLogoVariant.light:
        return NaviaBrandColors.warmGray;
      default:
        return Colors.white70;
    }
  }

  @override
  Widget build(BuildContext context) {
    final double fs = widget.fontSize;
    final double ls = fs * 0.06;

    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Row(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.baseline,
          textBaseline: TextBaseline.alphabetic,
          children: [
            // Animated N
            AnimatedBuilder(
              animation: _nController,
              builder: (context, child) => Opacity(
                opacity: _nOpacity.value,
                child: Transform.scale(scale: _nScale.value, child: child),
              ),
              child: Text(
                'N',
                style: TextStyle(
                  fontFamily: 'Georgia',
                  fontSize: fs,
                  fontWeight: FontWeight.w700,
                  color: _accentColor,
                  letterSpacing: ls,
                  height: 1.0,
                ),
              ),
            ),
            // Animated AVIA
            AnimatedBuilder(
              animation: _aviaController,
              builder: (context, child) => SlideTransition(
                position: _aviaSlide,
                child: Opacity(opacity: _aviaOpacity.value, child: child),
              ),
              child: Text(
                'AVIA',
                style: TextStyle(
                  fontFamily: 'Georgia',
                  fontSize: fs,
                  fontWeight: FontWeight.w400,
                  color: _textColor,
                  letterSpacing: ls,
                  height: 1.0,
                ),
              ),
            ),
          ],
        ),
        if (widget.showTagline) ...[
          SizedBox(height: fs * 0.25),
          FadeTransition(
            opacity: _taglineOpacity,
            child: Text(
              'Navigate your future',
              style: TextStyle(
                fontFamily: 'Georgia',
                fontSize: fs * 0.3,
                fontWeight: FontWeight.w400,
                fontStyle: FontStyle.italic,
                color: _taglineColor,
                letterSpacing: fs * 0.02,
              ),
            ),
          ),
        ],
      ],
    );
  }
}
