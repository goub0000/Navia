import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'navia_logo.dart';

/// Custom AppBar with automatic back button for desktop/web platforms
class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  final String title;
  final List<Widget>? actions;
  final bool automaticallyImplyLeading;
  final Widget? leading;
  final PreferredSizeWidget? bottom;
  final Color? backgroundColor;
  final double? elevation;
  final bool centerTitle;

  const CustomAppBar({
    super.key,
    required this.title,
    this.actions,
    this.automaticallyImplyLeading = true,
    this.leading,
    this.bottom,
    this.backgroundColor,
    this.elevation,
    this.centerTitle = false,
  });

  @override
  Widget build(BuildContext context) {
    final canPop = GoRouter.of(context).canPop();

    Widget? leadingWidget;

    // If custom leading is provided, use it
    if (leading != null) {
      leadingWidget = leading;
    }
    // Otherwise, if we can pop, show back button
    else if (automaticallyImplyLeading && canPop) {
      leadingWidget = IconButton(
        icon: const Icon(Icons.arrow_back),
        onPressed: () => context.pop(),
        tooltip: 'Back',
      );
    }
    // If we can't pop (at root level), show clickable logo
    else {
      leadingWidget = IconButton(
        icon: const NaviaLogoIcon(size: 32),
        onPressed: () => context.go('/'),
        tooltip: 'Home',
      );
    }

    return AppBar(
      title: Text(title),
      actions: actions,
      leading: leadingWidget,
      automaticallyImplyLeading: false, // We handle it manually
      bottom: bottom,
      backgroundColor: backgroundColor,
      elevation: elevation,
      centerTitle: centerTitle,
    );
  }

  @override
  Size get preferredSize =>
      Size.fromHeight(kToolbarHeight + (bottom?.preferredSize.height ?? 0.0));
}

/// Extension to easily check if context can pop
extension GoRouterExtension on BuildContext {
  bool canGoBack() {
    return GoRouter.of(this).canPop();
  }

  void goBack() {
    if (canGoBack()) {
      pop();
    }
  }
}
