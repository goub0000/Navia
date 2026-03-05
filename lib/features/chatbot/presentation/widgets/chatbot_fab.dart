import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../../../../core/l10n_extension.dart';
import '../../application/providers/chatbot_provider.dart';
import '../../application/providers/scroll_direction_provider.dart';
import 'chat_window.dart';

class ChatbotFAB extends ConsumerStatefulWidget {
  const ChatbotFAB({super.key});

  @override
  ConsumerState<ChatbotFAB> createState() => _ChatbotFABState();
}

class _ChatbotFABState extends ConsumerState<ChatbotFAB>
    with SingleTickerProviderStateMixin {
  late AnimationController _pulseController;
  bool _showTooltip = true;

  @override
  void initState() {
    super.initState();
    _pulseController = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 2),
    )..repeat(reverse: true);

    // Hide tooltip after 10 seconds
    Future.delayed(const Duration(seconds: 10), () {
      if (mounted) {
        setState(() => _showTooltip = false);
      }
    });
  }

  @override
  void dispose() {
    _pulseController.dispose();
    super.dispose();
  }

  void _toggleChat() {
    ref.read(chatbotVisibleProvider.notifier).state =
        !ref.read(chatbotVisibleProvider);
  }

  @override
  Widget build(BuildContext context) {
    final isVisible = ref.watch(chatbotVisibleProvider);
    final isScrollingDown = ref.watch(isScrollingDownProvider);
    final theme = Theme.of(context);
    final isExtended = !isScrollingDown && !isVisible;
    final isPulsing = _showTooltip && !isVisible;

    // Use a Column instead of a Stack so the entire chatbot subtree is
    // sized to its children — no full-screen compositing layer.
    // The parent (main.dart Positioned) anchors this to the bottom-right.
    return Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        // Chat Window
        if (isVisible) ...[
          const ChatWindow(),
          const SizedBox(height: 16),
        ],

        // Tooltip
        if (_showTooltip && !isVisible) ...[
          Container(
            padding: const EdgeInsets.symmetric(
              horizontal: 16,
              vertical: 8,
            ),
            decoration: BoxDecoration(
              color: theme.colorScheme.surfaceContainerHighest,
              borderRadius: BorderRadius.circular(20),
              boxShadow: [
                BoxShadow(
                  color: Colors.black.withValues(alpha: 0.1),
                  blurRadius: 8,
                  offset: const Offset(0, 2),
                ),
              ],
            ),
            child: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                Text(
                  context.l10n.chatHiNeedHelp,
                  style: theme.textTheme.labelLarge,
                ),
                const SizedBox(width: 4),
                GestureDetector(
                  onTap: () => setState(() => _showTooltip = false),
                  child: Icon(
                    Icons.close,
                    size: 16,
                    semanticLabel: 'Dismiss',
                    color: theme.colorScheme.onSurfaceVariant,
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(height: 8),
        ],

        // Floating Action Button
        _buildFab(theme, isExtended, isVisible, isPulsing),
      ],
    );
  }

  Widget _buildFab(
    ThemeData theme,
    bool isExtended,
    bool isVisible,
    bool isPulsing,
  ) {
    Widget fab = isExtended
        ? FloatingActionButton.extended(
            key: const ValueKey('fab-extended'),
            heroTag: 'chatbot_fab',
            onPressed: _toggleChat,
            backgroundColor: theme.colorScheme.primaryContainer,
            foregroundColor: theme.colorScheme.onPrimaryContainer,
            icon: const Icon(
              Icons.chat_bubble,
              semanticLabel: 'Open chat',
            ),
            label: const Text('Chat'),
          )
        : FloatingActionButton(
            key: const ValueKey('fab-collapsed'),
            heroTag: 'chatbot_fab',
            onPressed: _toggleChat,
            backgroundColor: theme.colorScheme.primaryContainer,
            foregroundColor: theme.colorScheme.onPrimaryContainer,
            child: Icon(
              isVisible ? Icons.close : Icons.chat_bubble,
              semanticLabel: isVisible ? 'Close chat' : 'Open chat',
            ),
          );

    // Only apply pulse Transform.scale when tooltip is showing.
    // Transform.scale creates a compositing layer on CanvasKit even at
    // scale 1.0, so we avoid it when not pulsing.
    if (isPulsing) {
      fab = AnimatedBuilder(
        animation: _pulseController,
        builder: (context, child) {
          return Transform.scale(
            scale: 1.0 + (_pulseController.value * 0.1),
            child: child,
          );
        },
        child: fab,
      );
    }

    return fab;
  }
}
