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
  bool _showEscalationConfirm = false;
  bool _showUserMenuPanel = false;

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

  void _toggleEscalationConfirm() {
    setState(() {
      _showEscalationConfirm = !_showEscalationConfirm;
      _showUserMenuPanel = false;
    });
  }

  void _escalateToHuman() {
    setState(() => _showEscalationConfirm = false);
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

    // ZERO compositing layers. On CanvasKit, ANY compositing layer
    // (ClipRRect, Material+elevation, Opacity, Transform) in this widget
    // causes rendering artifacts during route transitions.
    // DecoratedBox only issues canvas paint commands — no layers.
    final chatWidth = size.width > 768 ? 400.0 : size.width - 32;
    final chatHeight = (size.height * 0.6).clamp(400.0, 600.0);

    return SizedBox(
      width: chatWidth,
      height: chatHeight,
      child: DecoratedBox(
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
        // RepaintBoundary isolates the chat body from any overlay
        // compositing (e.g. tooltip saveLayer) that could gray it out.
        child: RepaintBoundary(
          child: Column(
            children: [
              // Header
              _buildHeader(),

              // Inline panels (replace showDialog to avoid Navigator context
              // issues — ChatWindow lives in MaterialApp.builder, which is
              // a sibling of the Router/Navigator, not a descendant)
              if (_showEscalationConfirm) _buildEscalationConfirm(),
              if (_showUserMenuPanel) _buildUserMenuPanel(),

              // Messages — wrapped in its own RepaintBoundary so overlay
              // compositing from the header area cannot bleed into it.
              Expanded(
                child: RepaintBoundary(
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
      ),
    );
  }

  Widget _buildHeader() {
    final state = ref.watch(chatbotProvider);
    final authState = ref.watch(authProvider);
    final isEscalated = state.isEscalated;
    final isLoggedIn = authState.isAuthenticated;

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
          // User account button — GestureDetector instead of IconButton
          // to avoid Material compositing layers on CanvasKit.
          _headerIcon(
            icon: isLoggedIn ? Icons.account_circle : Icons.login,
            onTap: _toggleUserMenu,
            tooltip: isLoggedIn ? context.l10n.chatYourAccount : context.l10n.chatSignIn,
          ),
          // Talk to Human button
          if (!isEscalated)
            _headerIcon(
              icon: Icons.person_add,
              onTap: _toggleEscalationConfirm,
              tooltip: context.l10n.chatTalkToHuman,
            ),
          _headerIcon(
            icon: Icons.close,
            onTap: _close,
            tooltip: context.l10n.chatClose,
          ),
        ],
      ),
    );
  }

  Widget _buildEscalationConfirm() {
    final theme = Theme.of(context);
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
      decoration: BoxDecoration(
        color: Colors.amber[50],
        border: Border(
          bottom: BorderSide(color: Colors.amber[200]!),
        ),
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            context.l10n.chatConnectWithAgent,
            style: theme.textTheme.bodyMedium?.copyWith(
              fontWeight: FontWeight.w500,
            ),
          ),
          const SizedBox(height: 4),
          Text(
            context.l10n.chatAgentWillJoin,
            style: theme.textTheme.bodySmall?.copyWith(
              color: Colors.grey[700],
            ),
          ),
          const SizedBox(height: 8),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              GestureDetector(
                onTap: _toggleEscalationConfirm,
                behavior: HitTestBehavior.opaque,
                child: Padding(
                  padding: const EdgeInsets.symmetric(
                      horizontal: 12, vertical: 6),
                  child: Text(
                    context.l10n.chatCancel,
                    style: theme.textTheme.labelLarge?.copyWith(
                      color: Colors.grey[700],
                    ),
                  ),
                ),
              ),
              const SizedBox(width: 8),
              GestureDetector(
                onTap: _escalateToHuman,
                behavior: HitTestBehavior.opaque,
                child: DecoratedBox(
                  decoration: BoxDecoration(
                    color: AppColors.primary,
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 12, vertical: 6),
                    child: Text(
                      context.l10n.chatConnect,
                      style: theme.textTheme.labelLarge?.copyWith(
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }

  /// Icon button for the chat header that creates zero compositing layers.
  /// No Tooltip — Flutter's Tooltip triggers saveLayer/compositing in
  /// Skwasm/CanvasKit which grays out the chat body. Use Semantics only.
  Widget _headerIcon({
    required IconData icon,
    required VoidCallback onTap,
    required String tooltip,
  }) {
    return Semantics(
      button: true,
      label: tooltip,
      child: GestureDetector(
        onTap: onTap,
        behavior: HitTestBehavior.opaque,
        child: Padding(
          padding: const EdgeInsets.all(8),
          child: Icon(icon, color: Colors.white, size: 22),
        ),
      ),
    );
  }

  void _toggleUserMenu() {
    setState(() {
      _showUserMenuPanel = !_showUserMenuPanel;
      _showEscalationConfirm = false;
    });
  }

  Widget _buildUserMenuPanel() {
    final theme = Theme.of(context);
    final authState = ref.watch(authProvider);
    final isLoggedIn = authState.isAuthenticated;
    final userName = authState.user?.displayName;
    final router = ref.read(routerProvider);

    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
      decoration: BoxDecoration(
        color: Colors.blue[50],
        border: Border(
          bottom: BorderSide(color: Colors.blue[200]!),
        ),
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            isLoggedIn ? context.l10n.chatYourAccount : context.l10n.chatSignIn,
            style: theme.textTheme.bodyMedium?.copyWith(
              fontWeight: FontWeight.w500,
            ),
          ),
          const SizedBox(height: 4),
          if (isLoggedIn) ...[
            Text(
              '${context.l10n.chatSignedInAs} ${userName ?? context.l10n.chatDefaultUserName}',
              style: theme.textTheme.bodySmall,
            ),
          ] else ...[
            Text(
              context.l10n.chatSignInDescription,
              style: theme.textTheme.bodySmall?.copyWith(
                color: Colors.grey[700],
              ),
            ),
          ],
          const SizedBox(height: 8),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              GestureDetector(
                onTap: _toggleUserMenu,
                behavior: HitTestBehavior.opaque,
                child: Padding(
                  padding: const EdgeInsets.symmetric(
                      horizontal: 12, vertical: 6),
                  child: Text(
                    context.l10n.chatClose,
                    style: theme.textTheme.labelLarge?.copyWith(
                      color: Colors.grey[700],
                    ),
                  ),
                ),
              ),
              const SizedBox(width: 8),
              GestureDetector(
                onTap: () {
                  setState(() => _showUserMenuPanel = false);
                  ref.read(chatbotVisibleProvider.notifier).state = false;
                  if (isLoggedIn) {
                    router.go('/profile');
                  } else {
                    ref.read(chatbotPendingReopenProvider.notifier).state =
                        true;
                    router.go('/login');
                  }
                },
                behavior: HitTestBehavior.opaque,
                child: DecoratedBox(
                  decoration: BoxDecoration(
                    color: AppColors.primary,
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 12, vertical: 6),
                    child: Text(
                      isLoggedIn
                          ? context.l10n.chatViewProfile
                          : context.l10n.chatSignIn,
                      style: theme.textTheme.labelLarge?.copyWith(
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
              ),
            ],
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
