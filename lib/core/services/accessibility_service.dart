import 'package:flutter/material.dart';
import 'package:flutter/semantics.dart';
import 'package:flutter/services.dart';

/// Accessibility Service
/// Provides helper methods and widgets for improved accessibility
class AccessibilityService {
  AccessibilityService._();

  /// Announce message to screen readers
  static void announce(BuildContext context, String message) {
    SemanticsService.announce(message, TextDirection.ltr);
  }

  /// Create accessible button with semantic labels
  static Widget accessibleButton({
    required Widget child,
    required VoidCallback onPressed,
    required String label,
    String? hint,
    bool enabled = true,
  }) {
    return Semantics(
      button: true,
      enabled: enabled,
      label: label,
      hint: hint,
      child: child,
    );
  }

  /// Create accessible icon button with semantic labels
  static Widget accessibleIconButton({
    required IconData icon,
    required VoidCallback onPressed,
    required String label,
    String? tooltip,
    Color? color,
    double? size,
    bool enabled = true,
  }) {
    return Semantics(
      button: true,
      enabled: enabled,
      label: label,
      hint: tooltip ?? label,
      child: IconButton(
        icon: Icon(icon, size: size),
        onPressed: enabled ? onPressed : null,
        tooltip: tooltip ?? label,
        color: color,
      ),
    );
  }

  /// Create accessible text field with semantic labels
  static Widget accessibleTextField({
    required TextEditingController controller,
    required String label,
    String? hint,
    bool obscureText = false,
    TextInputType? keyboardType,
    ValueChanged<String>? onChanged,
    FormFieldValidator<String>? validator,
    bool enabled = true,
  }) {
    return Semantics(
      textField: true,
      enabled: enabled,
      label: label,
      hint: hint,
      child: TextFormField(
        controller: controller,
        decoration: InputDecoration(
          labelText: label,
          hintText: hint,
        ),
        obscureText: obscureText,
        keyboardType: keyboardType,
        onChanged: onChanged,
        validator: validator,
        enabled: enabled,
      ),
    );
  }

  /// Create accessible card with semantic labels
  static Widget accessibleCard({
    required Widget child,
    required String label,
    String? hint,
    VoidCallback? onTap,
  }) {
    return Semantics(
      container: true,
      label: label,
      hint: hint,
      button: onTap != null,
      child: child,
    );
  }

  /// Create accessible heading
  static Widget accessibleHeading({
    required String text,
    required TextStyle style,
    HeadingLevel level = HeadingLevel.h1,
  }) {
    return Semantics(
      header: true,
      label: text,
      child: Text(text, style: style),
    );
  }

  /// Create accessible image
  static Widget accessibleImage({
    required String imageUrl,
    required String alt,
    double? width,
    double? height,
    BoxFit? fit,
  }) {
    return Semantics(
      image: true,
      label: alt,
      child: Image.network(
        imageUrl,
        width: width,
        height: height,
        fit: fit,
        semanticLabel: alt,
      ),
    );
  }

  /// Create accessible link
  static Widget accessibleLink({
    required String text,
    required VoidCallback onTap,
    String? hint,
    TextStyle? style,
  }) {
    return Semantics(
      link: true,
      label: text,
      hint: hint,
      child: InkWell(
        onTap: onTap,
        child: Text(
          text,
          style: style ??
              const TextStyle(
                decoration: TextDecoration.underline,
                color: Colors.blue,
              ),
        ),
      ),
    );
  }

  /// Create focus scope for keyboard navigation
  static Widget focusScope({
    required Widget child,
    FocusScopeNode? focusNode,
    bool autofocus = false,
  }) {
    return FocusScope(
      node: focusNode,
      child: Focus(
        autofocus: autofocus,
        child: child,
      ),
    );
  }

  /// Skip to main content widget (legacy helper — prefer using SkipToContentLink directly)
  static Widget skipToMainContent({
    required GlobalKey mainContentKey,
    required Widget child,
  }) {
    return Stack(
      children: [
        child,
        SkipToContentLink(mainContentKey: mainContentKey),
      ],
    );
  }
}

/// Heading levels for semantic headings
enum HeadingLevel {
  h1,
  h2,
  h3,
  h4,
  h5,
  h6,
}

/// Skip-to-main-content link that appears on keyboard focus (first Tab stop).
/// Place inside a Stack that also contains the main content keyed with [mainContentKey].
class SkipToContentLink extends StatefulWidget {
  final GlobalKey mainContentKey;

  const SkipToContentLink({required this.mainContentKey, super.key});

  @override
  State<SkipToContentLink> createState() => _SkipToContentLinkState();
}

class _SkipToContentLinkState extends State<SkipToContentLink> {
  final FocusNode _focusNode = FocusNode();
  bool _isFocused = false;

  @override
  void initState() {
    super.initState();
    _focusNode.addListener(_onFocusChange);
  }

  void _onFocusChange() {
    setState(() => _isFocused = _focusNode.hasFocus);
  }

  @override
  void dispose() {
    _focusNode.removeListener(_onFocusChange);
    _focusNode.dispose();
    super.dispose();
  }

  void _skipToContent() {
    final ctx = widget.mainContentKey.currentContext;
    if (ctx != null) {
      Scrollable.ensureVisible(
        ctx,
        duration: const Duration(milliseconds: 300),
      );
      // Move focus into the content area
      FocusScope.of(ctx).requestFocus();
    }
  }

  @override
  Widget build(BuildContext context) {
    final colorScheme = Theme.of(context).colorScheme;

    // AnimatedOpacity + Material + InkWell all create compositing layers on
    // CanvasKit that can corrupt sibling rendering in the same Stack.
    // Hide via off-screen positioning instead (top: -100 when unfocused).
    return Positioned(
      top: _isFocused ? 8 : -100,
      left: 8,
      child: FocusTraversalOrder(
        order: const NumericFocusOrder(0),
        child: Semantics(
          link: true,
          label: 'Skip to main content',
          child: Focus(
            focusNode: _focusNode,
            onKeyEvent: (node, event) {
              if (event is KeyDownEvent &&
                  (event.logicalKey == LogicalKeyboardKey.enter ||
                   event.logicalKey == LogicalKeyboardKey.space)) {
                _skipToContent();
                return KeyEventResult.handled;
              }
              return KeyEventResult.ignored;
            },
            child: GestureDetector(
              onTap: _skipToContent,
              child: DecoratedBox(
                decoration: BoxDecoration(
                  color: colorScheme.primary,
                  borderRadius: BorderRadius.circular(20),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black.withValues(alpha: 0.3),
                      blurRadius: 6,
                      offset: const Offset(0, 2),
                    ),
                  ],
                ),
                child: Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 20,
                    vertical: 10,
                  ),
                  child: Text(
                    'Skip to main content',
                    style: TextStyle(
                      color: colorScheme.onPrimary,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}

/// Focus order widget for custom tab order
class FocusOrder extends InheritedWidget {
  final int order;

  const FocusOrder({
    required this.order,
    required super.child,
    super.key,
  });

  static int? of(BuildContext context) {
    return context
        .dependOnInheritedWidgetOfExactType<FocusOrder>()
        ?.order;
  }

  @override
  bool updateShouldNotify(FocusOrder oldWidget) {
    return order != oldWidget.order;
  }
}

/// Accessible data table row
class AccessibleTableRow extends StatelessWidget {
  final List<Widget> cells;
  final int rowIndex;
  final bool isHeader;
  final VoidCallback? onTap;

  const AccessibleTableRow({
    required this.cells,
    required this.rowIndex,
    this.isHeader = false,
    this.onTap,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Semantics(
      container: true,
      label: isHeader
          ? 'Table header row'
          : 'Table row ${rowIndex + 1}',
      button: onTap != null,
      child: InkWell(
        onTap: onTap,
        child: Row(
          children: cells
              .asMap()
              .entries
              .map((entry) => Semantics(
                    label: isHeader
                        ? 'Column ${entry.key + 1} header'
                        : 'Row ${rowIndex + 1}, Column ${entry.key + 1}',
                    child: entry.value,
                  ))
              .toList(),
        ),
      ),
    );
  }
}

/// Live region for dynamic content updates
class LiveRegion extends StatelessWidget {
  final Widget child;
  final String? label;
  final LiveRegionImportance importance;

  const LiveRegion({
    required this.child,
    this.label,
    this.importance = LiveRegionImportance.polite,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Semantics(
      liveRegion: true,
      label: label,
      child: child,
    );
  }
}

/// Live region importance levels
enum LiveRegionImportance {
  polite,
  assertive,
}
