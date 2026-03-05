import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../../../../core/l10n_extension.dart';
import '../../../../core/theme/app_colors.dart';
import '../../../../routing/app_router.dart';
import '../../../authentication/providers/auth_provider.dart';
import '../../application/providers/chatbot_provider.dart';
import 'message_bubble.dart';
import 'quick_replies.dart';
import 'typing_indicator.dart';
import 'input_field.dart';

class ChatWindow extends ConsumerStatefulWidget {
  const ChatWindow({super.key});

  @override
  ConsumerState<ChatWindow> createState() => _ChatWindowState();
}

class _ChatWindowState extends ConsumerState<ChatWindow> {
  final ScrollController _scrollController = ScrollController();
  final TextEditingController _inputController = TextEditingController();

  @override
  void initState() {
    super.initState();
    // Send initial greeting
    WidgetsBinding.instance.addPostFrameCallback((_) {
      ref.read(chatbotProvider.notifier).sendInitialGreeting();
    });
  }

  @override
  void dispose() {
    _scrollController.dispose();
    _inputController.dispose();
    super.dispose();
  }

  void _scrollToBottom() {
    if (_scrollController.hasClients) {
      Future.delayed(const Duration(milliseconds: 100), () {
        if (_scrollController.hasClients) {
          _scrollController.animateTo(
            _scrollController.position.maxScrollExtent,
            duration: const Duration(milliseconds: 300),
            curve: Curves.easeOut,
          );
        }
      });
    }
  }

  void _sendMessage(String text) {
    if (text.trim().isEmpty) return;

    ref.read(chatbotProvider.notifier).sendMessage(text);
    _inputController.clear();
    _scrollToBottom();
  }

  void _handleQuickAction(String action) {
    // Handle navigation actions - hide chat immediately and navigate
    // Use routerProvider directly since context.go() doesn't work in MaterialApp builder
    final router = ref.read(routerProvider);

    if (action == 'navigate_register') {
      ref.read(chatbotVisibleProvider.notifier).state = false;
      router.go('/register');
      return;
    }
    if (action == 'navigate_login') {
      // Set flag to reopen chat after login
      ref.read(chatbotPendingReopenProvider.notifier).state = true;
      ref.read(chatbotVisibleProvider.notifier).state = false;
      router.go('/login');
      return;
    }
    if (action == 'view_profile') {
      ref.read(chatbotVisibleProvider.notifier).state = false;
      router.go('/profile');
      return;
    }

    ref.read(chatbotProvider.notifier).handleQuickAction(action);
    _scrollToBottom();
  }

  void _showEscalationDialog() {
    showDialog<void>(
      context: context,
      builder: (dialogContext) => AlertDialog(
        title: Text(context.l10n.chatTalkToHuman),
        content: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(context.l10n.chatConnectWithAgent),
            const SizedBox(height: 8),
            Text(
              context.l10n.chatAgentWillJoin,
              style: Theme.of(context).textTheme.bodySmall,
            ),
          ],
        ),
        actions: [
          TextButton(
            onPressed: () => Navigator.of(dialogContext).pop(),
            child: Text(context.l10n.chatCancel),
          ),
          FilledButton(
            onPressed: () {
              Navigator.of(dialogContext).pop();
              _escalateToHuman();
            },
            child: Text(context.l10n.chatConnect),
          ),
        ],
      ),
    );
  }

  void _escalateToHuman() {
    ref.read(chatbotProvider.notifier).escalateToHuman(
      reason: context.l10n.chatUserRequestedHumanSupport,
    );
    _scrollToBottom();
  }

  void _close() {
    ref.read(chatbotVisibleProvider.notifier).state = false;
  }

  @override
  Widget build(BuildContext context) {
    final state = ref.watch(chatbotProvider);
    final size = MediaQuery.of(context).size;

    // Auto-scroll when new messages arrive
    ref.listen(chatbotProvider, (previous, next) {
      if (previous?.messages.length != next.messages.length) {
        _scrollToBottom();
      }
    });

    // Return just the chat container — no compositing-layer wrappers.
    // SlideTransition was removed because it creates a persistent compositing
    // layer on CanvasKit that causes teal rendering artifacts.
    return Container(
        width: size.width > 768 ? 400 : size.width - 32,
        height: size.height * 0.6,
        constraints: const BoxConstraints(
          maxHeight: 600,
          minHeight: 400,
        ),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(16),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withValues(alpha: 0.15),
              blurRadius: 20,
              offset: const Offset(0, 4),
            ),
          ],
        ),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(16),
          child: Column(
            children: [
              // Header
              _buildHeader(),

              // Messages
              Expanded(
                child: state.messages.isEmpty
                    ? _buildEmptyState()
                    : ListView.builder(
                        controller: _scrollController,
                        padding: const EdgeInsets.all(16),
                        itemCount: state.messages.length,
                        itemBuilder: (context, index) {
                          final message = state.messages[index];
                          return MessageBubble(message: message);
                        },
                      ),
              ),

              // Typing Indicator
              if (state.isTyping)
                const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                  child: TypingIndicator(),
                ),

              // Quick Replies
              if (state.currentQuickActions != null &&
                  state.currentQuickActions!.isNotEmpty)
                QuickReplies(
                  actions: state.currentQuickActions!,
                  onActionTap: _handleQuickAction,
                ),

              // Input Field
              ChatInputField(
                controller: _inputController,
                onSend: _sendMessage,
              ),
            ],
          ),
        ),
    );
  }

  Widget _buildHeader() {
    final state = ref.watch(chatbotProvider);
    final authState = ref.watch(authProvider);
    final isEscalated = state.isEscalated;
    final isLoggedIn = authState.isAuthenticated;
    final user = authState.user;

    return Container(
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: isEscalated ? AppColors.warning : AppColors.primary,
        borderRadius: const BorderRadius.only(
          topLeft: Radius.circular(16),
          topRight: Radius.circular(16),
        ),
      ),
      child: Row(
        children: [
          CircleAvatar(
            backgroundColor: Colors.white,
            radius: 20,
            child: Icon(
              isEscalated ? Icons.person : Icons.support_agent,
              color: isEscalated ? AppColors.warning : AppColors.primary,
              size: 24,
            ),
          ),
          const SizedBox(width: 12),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  isEscalated ? context.l10n.chatHumanSupport : context.l10n.chatFlowAssistant,
                  style: Theme.of(context).textTheme.titleMedium?.copyWith(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Row(
                  children: [
                    if (isEscalated) ...[
                      Container(
                        width: 8,
                        height: 8,
                        margin: const EdgeInsets.only(right: 6),
                        decoration: const BoxDecoration(
                          color: Colors.orangeAccent,
                          shape: BoxShape.circle,
                        ),
                      ),
                      Text(
                        context.l10n.chatWaitingForAgent,
                        style: Theme.of(context).textTheme.labelMedium?.copyWith(
                          color: Colors.white70,
                        ),
                      ),
                    ] else
                      Text(
                        context.l10n.chatOnline,
                        style: Theme.of(context).textTheme.labelMedium?.copyWith(
                          color: Colors.white70,
                        ),
                      ),
                  ],
                ),
              ],
            ),
          ),
          // User account button
          IconButton(
            icon: Icon(
              isLoggedIn ? Icons.account_circle : Icons.login,
              color: Colors.white,
            ),
            onPressed: () => _showUserMenu(isLoggedIn, user?.displayName),
            tooltip: isLoggedIn ? context.l10n.chatYourAccount : context.l10n.chatSignIn,
          ),
          // Talk to Human button
          if (!isEscalated)
            IconButton(
              icon: const Icon(Icons.person_add, color: Colors.white),
              onPressed: _showEscalationDialog,
              tooltip: context.l10n.chatTalkToHuman,
            ),
          IconButton(
            icon: const Icon(Icons.close, color: Colors.white),
            onPressed: _close,
            tooltip: context.l10n.chatClose,
          ),
        ],
      ),
    );
  }

  void _showUserMenu(bool isLoggedIn, String? userName) {
    final router = ref.read(routerProvider);

    showDialog<void>(
      context: context,
      builder: (dialogContext) => AlertDialog(
        title: Text(
          isLoggedIn ? context.l10n.chatYourAccount : context.l10n.chatSignIn,
        ),
        content: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            if (isLoggedIn) ...[
              Text('${context.l10n.chatSignedInAs} ${userName ?? context.l10n.chatDefaultUserName}'),
              const SizedBox(height: 8),
              Text(
                context.l10n.chatConversationsSynced,
                style: Theme.of(context).textTheme.bodySmall,
              ),
            ] else ...[
              Text(context.l10n.chatSignInDescription),
              const SizedBox(height: 8),
              Text(
                context.l10n.chatHistorySaved,
                style: Theme.of(context).textTheme.bodySmall,
              ),
            ],
          ],
        ),
        actions: [
          TextButton(
            onPressed: () => Navigator.of(dialogContext).pop(),
            child: Text(context.l10n.chatClose),
          ),
          if (isLoggedIn)
            FilledButton(
              onPressed: () {
                Navigator.of(dialogContext).pop();
                ref.read(chatbotVisibleProvider.notifier).state = false;
                router.go('/profile');
              },
              child: Text(context.l10n.chatViewProfile),
            )
          else
            FilledButton(
              onPressed: () {
                Navigator.of(dialogContext).pop();
                ref.read(chatbotPendingReopenProvider.notifier).state = true;
                ref.read(chatbotVisibleProvider.notifier).state = false;
                router.go('/login');
              },
              child: Text(context.l10n.chatSignIn),
            ),
        ],
      ),
    );
  }

  Widget _buildEmptyState() {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Icon(
            Icons.chat_bubble_outline,
            size: 64,
            color: Colors.grey,
            semanticLabel: 'Chat',
          ),
          const SizedBox(height: 16),
          Text(
            context.l10n.chatStartConversation,
            style: Theme.of(context).textTheme.bodyLarge?.copyWith(
              color: Colors.grey,
            ),
          ),
        ],
      ),
    );
  }
}
