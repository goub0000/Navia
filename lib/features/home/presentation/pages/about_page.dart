import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import '../../../../core/l10n_extension.dart';

/// About page with company information - fetches content from CMS
class AboutPage extends ConsumerWidget {
  const AboutPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return _buildStaticPage(context);
  }

  Widget _buildStaticPage(BuildContext context) {
    final theme = Theme.of(context);
    final colorScheme = theme.colorScheme;

    return SingleChildScrollView(
      padding: const EdgeInsets.all(24),
      child: Center(
        child: ConstrainedBox(
          constraints: const BoxConstraints(maxWidth: 800),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
                // Hero section
                Card.filled(
                  child: Padding(
                    padding: const EdgeInsets.all(32),
                    child: Column(
                      children: [
                        Container(
                          width: 80,
                          height: 80,
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            border: Border.all(color: colorScheme.primary, width: 3),
                          ),
                          child: ClipOval(
                            child: Image.asset(
                              'assets/images/logo.png',
                              fit: BoxFit.contain,
                              errorBuilder: (_, __, ___) => Icon(
                                Icons.school,
                                size: 40,
                                color: colorScheme.primary,
                              ),
                            ),
                          ),
                        ),
                        const SizedBox(height: 16),
                        Text(
                          context.l10n.aboutPageFlowEdTech,
                          style: theme.textTheme.headlineMedium?.copyWith(
                            fontWeight: FontWeight.bold,
                            color: colorScheme.primary,
                          ),
                        ),
                        const SizedBox(height: 8),
                        Text(
                          context.l10n.aboutPagePremierPlatform,
                          style: theme.textTheme.titleMedium?.copyWith(
                            color: colorScheme.onSurfaceVariant,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),

                const SizedBox(height: 32),

                _buildSection(
                  theme,
                  colorScheme: colorScheme,
                  icon: Icons.flag,
                  title: context.l10n.aboutPageOurMission,
                  content: context.l10n.aboutPageMissionContent,
                ),

                const SizedBox(height: 24),

                _buildSection(
                  theme,
                  colorScheme: colorScheme,
                  icon: Icons.visibility,
                  title: context.l10n.aboutPageOurVision,
                  content: context.l10n.aboutPageVisionContent,
                ),

                const SizedBox(height: 32),

                Center(
                  child: FilledButton.icon(
                    onPressed: () => context.go('/contact'),
                    icon: const Icon(Icons.mail),
                    label: Text(context.l10n.aboutPageGetInTouch),
                  ),
                ),

                const SizedBox(height: 48),
              ],
            ),
          ),
        ),
      );
  }

  Widget _buildSection(
    ThemeData theme, {
    required ColorScheme colorScheme,
    required IconData icon,
    required String title,
    required String content,
  }) {
    return Card.outlined(
      child: Padding(
        padding: const EdgeInsets.all(24),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Icon(icon, color: colorScheme.primary),
                const SizedBox(width: 12),
                Text(
                  title,
                  style: theme.textTheme.titleLarge?.copyWith(
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
            const SizedBox(height: 12),
            Text(
              content,
              style: theme.textTheme.bodyLarge?.copyWith(
                color: colorScheme.onSurfaceVariant,
                height: 1.6,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
