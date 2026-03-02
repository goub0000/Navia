import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import '../../../../core/l10n_extension.dart';
import '../../../../core/widgets/navia_logo.dart';

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
                      const NaviaLogoIcon.circle(size: 80),
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

              // Team section
              _buildSectionHeading(
                theme,
                colorScheme,
                Icons.people,
                context.l10n.aboutPageOurTeam,
              ),
              const SizedBox(height: 16),
              Wrap(
                spacing: 16,
                runSpacing: 16,
                children: [
                  _buildTeamCard(
                    theme,
                    colorScheme,
                    context.l10n.aboutPageTeamFounderName,
                    context.l10n.aboutPageTeamFounderRole,
                  ),
                  _buildTeamCard(
                    theme,
                    colorScheme,
                    context.l10n.aboutPageTeamCtoName,
                    context.l10n.aboutPageTeamCtoRole,
                  ),
                  _buildTeamCard(
                    theme,
                    colorScheme,
                    context.l10n.aboutPageTeamEduName,
                    context.l10n.aboutPageTeamEduRole,
                  ),
                  _buildTeamCard(
                    theme,
                    colorScheme,
                    context.l10n.aboutPageTeamPartnersName,
                    context.l10n.aboutPageTeamPartnersRole,
                  ),
                ],
              ),

              const SizedBox(height: 32),

              // Timeline section
              _buildSectionHeading(
                theme,
                colorScheme,
                Icons.timeline,
                context.l10n.aboutPageOurJourney,
              ),
              const SizedBox(height: 16),
              _buildTimeline(theme, colorScheme, [
                (
                  context.l10n.aboutPageMilestone1Year,
                  context.l10n.aboutPageMilestone1Title,
                  context.l10n.aboutPageMilestone1Desc,
                ),
                (
                  context.l10n.aboutPageMilestone2Year,
                  context.l10n.aboutPageMilestone2Title,
                  context.l10n.aboutPageMilestone2Desc,
                ),
                (
                  context.l10n.aboutPageMilestone3Year,
                  context.l10n.aboutPageMilestone3Title,
                  context.l10n.aboutPageMilestone3Desc,
                ),
                (
                  context.l10n.aboutPageMilestone4Year,
                  context.l10n.aboutPageMilestone4Title,
                  context.l10n.aboutPageMilestone4Desc,
                ),
              ]),

              const SizedBox(height: 32),

              // Partners section
              _buildSectionHeading(
                theme,
                colorScheme,
                Icons.handshake,
                context.l10n.aboutPageOurPartners,
              ),
              const SizedBox(height: 16),
              Wrap(
                spacing: 8,
                runSpacing: 8,
                children: [
                  Chip(label: Text(context.l10n.partnersPagePartnerUnivGhana)),
                  Chip(label: Text(context.l10n.partnersPagePartnerAshesi)),
                  Chip(label: Text(context.l10n.partnersPagePartnerKenyatta)),
                  Chip(label: Text(context.l10n.partnersPagePartnerUnilag)),
                  Chip(label: Text(context.l10n.partnersPagePartnerKnust)),
                  Chip(label: Text(context.l10n.partnersPagePartnerMakerere)),
                ],
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

  Widget _buildSectionHeading(
    ThemeData theme,
    ColorScheme colorScheme,
    IconData icon,
    String title,
  ) {
    return Row(
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
    );
  }

  Widget _buildTeamCard(
    ThemeData theme,
    ColorScheme colorScheme,
    String name,
    String role,
  ) {
    final initials = name.split(' ').map((w) => w[0]).take(2).join();
    return SizedBox(
      width: 170,
      child: Card.outlined(
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Column(
            children: [
              CircleAvatar(
                radius: 28,
                backgroundColor: colorScheme.primaryContainer,
                child: Text(
                  initials,
                  style: theme.textTheme.titleMedium?.copyWith(
                    color: colorScheme.onPrimaryContainer,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              const SizedBox(height: 12),
              Text(
                name,
                style: theme.textTheme.titleMedium?.copyWith(
                  fontWeight: FontWeight.w600,
                ),
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: 4),
              Text(
                role,
                style: theme.textTheme.bodySmall?.copyWith(
                  color: colorScheme.onSurfaceVariant,
                ),
                textAlign: TextAlign.center,
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildTimeline(
    ThemeData theme,
    ColorScheme colorScheme,
    List<(String year, String title, String desc)> milestones,
  ) {
    return Column(
      children: [
        for (int i = 0; i < milestones.length; i++)
          IntrinsicHeight(
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                SizedBox(
                  width: 72,
                  child: Column(
                    children: [
                      Chip(
                        label: Text(milestones[i].$1),
                        backgroundColor: colorScheme.primaryContainer,
                        labelStyle: TextStyle(
                          color: colorScheme.onPrimaryContainer,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      if (i < milestones.length - 1)
                        Expanded(
                          child: Container(
                            width: 2,
                            color: colorScheme.outlineVariant,
                          ),
                        ),
                    ],
                  ),
                ),
                const SizedBox(width: 16),
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.only(bottom: 16),
                    child: Card.filled(
                      child: Padding(
                        padding: const EdgeInsets.all(16),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              milestones[i].$2,
                              style: theme.textTheme.titleMedium?.copyWith(
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            const SizedBox(height: 4),
                            Text(
                              milestones[i].$3,
                              style: theme.textTheme.bodyMedium?.copyWith(
                                color: colorScheme.onSurfaceVariant,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
      ],
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
