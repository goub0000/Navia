import 'package:flutter/material.dart';
import '../../../../core/l10n_extension.dart';
import '../../../../core/theme/app_colors.dart';

class ChatInputField extends StatelessWidget {
  final TextEditingController controller;
  final Function(String) onSend;

  const ChatInputField({
    super.key,
    required this.controller,
    required this.onSend,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(12),
      decoration: BoxDecoration(
        color: Colors.white,
        border: Border(
          top: BorderSide(color: Colors.grey[300]!),
        ),
      ),
      child: Row(
        children: [
          Expanded(
            child: TextField(
              controller: controller,
              decoration: InputDecoration(
                hintText: context.l10n.chatTypeYourMessage,
                hintStyle: TextStyle(color: Colors.grey[400]),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(24),
                  borderSide: BorderSide(color: Colors.grey[300]!),
                ),
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(24),
                  borderSide: BorderSide(color: Colors.grey[300]!),
                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(24),
                  borderSide: BorderSide(color: AppColors.primary),
                ),
                contentPadding: const EdgeInsets.symmetric(
                  horizontal: 16,
                  vertical: 12,
                ),
                filled: true,
                fillColor: Colors.grey[50],
              ),
              maxLines: null,
              textInputAction: TextInputAction.send,
              onSubmitted: (text) {
                if (text.trim().isNotEmpty) {
                  onSend(text);
                }
              },
            ),
          ),
          const SizedBox(width: 8),
          // GestureDetector instead of IconButton to avoid Material
          // compositing layers that cause CanvasKit rendering artifacts.
          Tooltip(
            message: 'Send message',
            child: GestureDetector(
              onTap: () {
                final text = controller.text;
                if (text.trim().isNotEmpty) {
                  onSend(text);
                }
              },
              behavior: HitTestBehavior.opaque,
              child: DecoratedBox(
                decoration: BoxDecoration(
                  color: AppColors.primary.withValues(alpha: 0.1),
                  shape: BoxShape.circle,
                ),
                child: Padding(
                  padding: const EdgeInsets.all(12),
                  child: Icon(Icons.send, color: AppColors.primary),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
