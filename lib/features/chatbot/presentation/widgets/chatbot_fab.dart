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

class _ChatbotFABState extends ConsumerState<ChatbotFAB> {
  bool _showTooltip = true;

  @override
  void initState() {
    super.initState();
    Future.delayed(const Duration(seconds: 10), () {
      if (mounted) setState(() => _showTooltip = false);
    });
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
          DecoratedBox(
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
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
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
          ),
          const SizedBox(height: 8),
        ],

        // Custom FAB — no Material, no compositing layers.
        _ChatFabButton(
          onTap: _toggleChat,
          isExtended: isExtended,
          isVisible: isVisible,
          theme: theme,
        ),
      ],
    );
  }
}

/// Custom FAB replacement that creates ZERO compositing layers.
/// FloatingActionButton uses Material(elevation, Clip.antiAlias, InkWell)
/// internally, all of which create compositing layers that cause rendering
/// artifacts on Flutter web CanvasKit.
class _ChatFabButton extends StatelessWidget {
  final VoidCallback onTap;
  final bool isExtended;
  final bool isVisible;
  final ThemeData theme;

  const _ChatFabButton({
    required this.onTap,
    required this.isExtended,
    required this.isVisible,
    required this.theme,
  });

  @override
  Widget build(BuildContext context) {
    final bg = theme.colorScheme.primaryContainer;
    final fg = theme.colorScheme.onPrimaryContainer;
    final icon = isVisible ? Icons.close : Icons.chat_bubble;
    final label = isVisible ? 'Close chat' : 'Open chat';

    return Semantics(
      button: true,
      label: label,
      child: GestureDetector(
        onTap: onTap,
        child: DecoratedBox(
          decoration: BoxDecoration(
            color: bg,
            borderRadius: BorderRadius.circular(isExtended ? 28 : 56),
            boxShadow: [
              BoxShadow(
                color: Colors.black.withValues(alpha: 0.2),
                blurRadius: 8,
                offset: const Offset(0, 3),
              ),
            ],
          ),
          child: Padding(
            padding: isExtended
                ? const EdgeInsets.symmetric(horizontal: 20, vertical: 16)
                : const EdgeInsets.all(16),
            child: isExtended
                ? Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Icon(Icons.chat_bubble, color: fg, size: 22,
                          semanticLabel: 'Open chat'),
                      const SizedBox(width: 10),
                      Text('Chat',
                          style: theme.textTheme.labelLarge
                              ?.copyWith(color: fg)),
                    ],
                  )
                : Icon(icon, color: fg, size: 24, semanticLabel: label),
          ),
        ),
      ),
    );
  }
}
