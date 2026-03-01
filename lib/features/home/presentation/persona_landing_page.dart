import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import '../../../core/l10n_extension.dart';
import '../../../core/constants/home_constants.dart';

/// Persona types supported by the landing pages.
enum PersonaType { student, institution, parent, counselor }

/// Data class holding all content for a persona landing page.
class _PersonaContent {
  final String heroTitle;
  final String heroSubtitle;
  final IconData heroIcon;
  final Color Function(ColorScheme) accentColor;
  final List<_PainPoint> painPoints;
  final List<_Feature> features;
  final String testimonial;
  final String testimonialAuthor;
  final String ctaText;

  const _PersonaContent({
    required this.heroTitle,
    required this.heroSubtitle,
    required this.heroIcon,
    required this.accentColor,
    required this.painPoints,
    required this.features,
    required this.testimonial,
    required this.testimonialAuthor,
    required this.ctaText,
  });
}

class _PainPoint {
  final IconData icon;
  final String title;
  final String description;

  const _PainPoint({
    required this.icon,
    required this.title,
    required this.description,
  });
}

class _Feature {
  final IconData icon;
  final String title;
  final String description;

  const _Feature({
    required this.icon,
    required this.title,
    required this.description,
  });
}

/// A single persona-specific landing page, parameterized by [personaType].
class PersonaLandingPage extends StatelessWidget {
  final PersonaType personaType;

  const PersonaLandingPage({super.key, required this.personaType});

  _PersonaContent _buildContent(BuildContext context) {
    final l10n = context.l10n;
    switch (personaType) {
      case PersonaType.student:
        return _PersonaContent(
          heroTitle: l10n.personaStudentHeroTitle,
          heroSubtitle: l10n.personaStudentHeroSubtitle,
          heroIcon: Icons.school_rounded,
          accentColor: (cs) => cs.primary,
          painPoints: [
            _PainPoint(
              icon: Icons.psychology_alt_rounded,
              title: l10n.personaStudentPain1Title,
              description: l10n.personaStudentPain1Desc,
            ),
            _PainPoint(
              icon: Icons.scatter_plot_rounded,
              title: l10n.personaStudentPain2Title,
              description: l10n.personaStudentPain2Desc,
            ),
            _PainPoint(
              icon: Icons.person_off_rounded,
              title: l10n.personaStudentPain3Title,
              description: l10n.personaStudentPain3Desc,
            ),
          ],
          features: [
            _Feature(
              icon: Icons.auto_awesome_rounded,
              title: l10n.personaStudentFeature1Title,
              description: l10n.personaStudentFeature1Desc,
            ),
            _Feature(
              icon: Icons.dashboard_customize_rounded,
              title: l10n.personaStudentFeature2Title,
              description: l10n.personaStudentFeature2Desc,
            ),
            _Feature(
              icon: Icons.search_rounded,
              title: l10n.personaStudentFeature3Title,
              description: l10n.personaStudentFeature3Desc,
            ),
          ],
          testimonial: l10n.personaStudentTestimonial,
          testimonialAuthor: l10n.personaStudentTestimonialAuthor,
          ctaText: l10n.personaStudentCta,
        );
      case PersonaType.institution:
        return _PersonaContent(
          heroTitle: l10n.personaInstitutionHeroTitle,
          heroSubtitle: l10n.personaInstitutionHeroSubtitle,
          heroIcon: Icons.business_rounded,
          accentColor: (cs) => cs.secondary,
          painPoints: [
            _PainPoint(
              icon: Icons.public_off_rounded,
              title: l10n.personaInstitutionPain1Title,
              description: l10n.personaInstitutionPain1Desc,
            ),
            _PainPoint(
              icon: Icons.speed_rounded,
              title: l10n.personaInstitutionPain2Title,
              description: l10n.personaInstitutionPain2Desc,
            ),
            _PainPoint(
              icon: Icons.visibility_off_rounded,
              title: l10n.personaInstitutionPain3Title,
              description: l10n.personaInstitutionPain3Desc,
            ),
          ],
          features: [
            _Feature(
              icon: Icons.language_rounded,
              title: l10n.personaInstitutionFeature1Title,
              description: l10n.personaInstitutionFeature1Desc,
            ),
            _Feature(
              icon: Icons.assignment_rounded,
              title: l10n.personaInstitutionFeature2Title,
              description: l10n.personaInstitutionFeature2Desc,
            ),
            _Feature(
              icon: Icons.analytics_rounded,
              title: l10n.personaInstitutionFeature3Title,
              description: l10n.personaInstitutionFeature3Desc,
            ),
          ],
          testimonial: l10n.personaInstitutionTestimonial,
          testimonialAuthor: l10n.personaInstitutionTestimonialAuthor,
          ctaText: l10n.personaInstitutionCta,
        );
      case PersonaType.parent:
        return _PersonaContent(
          heroTitle: l10n.personaParentHeroTitle,
          heroSubtitle: l10n.personaParentHeroSubtitle,
          heroIcon: Icons.family_restroom_rounded,
          accentColor: (cs) => cs.tertiary,
          painPoints: [
            _PainPoint(
              icon: Icons.visibility_off_rounded,
              title: l10n.personaParentPain1Title,
              description: l10n.personaParentPain1Desc,
            ),
            _PainPoint(
              icon: Icons.compare_arrows_rounded,
              title: l10n.personaParentPain2Title,
              description: l10n.personaParentPain2Desc,
            ),
            _PainPoint(
              icon: Icons.help_outline_rounded,
              title: l10n.personaParentPain3Title,
              description: l10n.personaParentPain3Desc,
            ),
          ],
          features: [
            _Feature(
              icon: Icons.track_changes_rounded,
              title: l10n.personaParentFeature1Title,
              description: l10n.personaParentFeature1Desc,
            ),
            _Feature(
              icon: Icons.compare_rounded,
              title: l10n.personaParentFeature2Title,
              description: l10n.personaParentFeature2Desc,
            ),
            _Feature(
              icon: Icons.groups_rounded,
              title: l10n.personaParentFeature3Title,
              description: l10n.personaParentFeature3Desc,
            ),
          ],
          testimonial: l10n.personaParentTestimonial,
          testimonialAuthor: l10n.personaParentTestimonialAuthor,
          ctaText: l10n.personaParentCta,
        );
      case PersonaType.counselor:
        return _PersonaContent(
          heroTitle: l10n.personaCounselorHeroTitle,
          heroSubtitle: l10n.personaCounselorHeroSubtitle,
          heroIcon: Icons.psychology_rounded,
          accentColor: (cs) => cs.error,
          painPoints: [
            _PainPoint(
              icon: Icons.hourglass_top_rounded,
              title: l10n.personaCounselorPain1Title,
              description: l10n.personaCounselorPain1Desc,
            ),
            _PainPoint(
              icon: Icons.update_disabled_rounded,
              title: l10n.personaCounselorPain2Title,
              description: l10n.personaCounselorPain2Desc,
            ),
            _PainPoint(
              icon: Icons.grid_view_rounded,
              title: l10n.personaCounselorPain3Title,
              description: l10n.personaCounselorPain3Desc,
            ),
          ],
          features: [
            _Feature(
              icon: Icons.people_rounded,
              title: l10n.personaCounselorFeature1Title,
              description: l10n.personaCounselorFeature1Desc,
            ),
            _Feature(
              icon: Icons.auto_awesome_rounded,
              title: l10n.personaCounselorFeature2Title,
              description: l10n.personaCounselorFeature2Desc,
            ),
            _Feature(
              icon: Icons.handshake_rounded,
              title: l10n.personaCounselorFeature3Title,
              description: l10n.personaCounselorFeature3Desc,
            ),
          ],
          testimonial: l10n.personaCounselorTestimonial,
          testimonialAuthor: l10n.personaCounselorTestimonialAuthor,
          ctaText: l10n.personaCounselorCta,
        );
    }
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final colorScheme = theme.colorScheme;
    final content = _buildContent(context);
    final accent = content.accentColor(colorScheme);
    final isMobile =
        MediaQuery.of(context).size.width < HomeConstants.mobileBreakpoint;

    return SingleChildScrollView(
      child: Column(
        children: [
          // Hero Section
          _PersonaHero(
            content: content,
            accent: accent,
            isMobile: isMobile,
            theme: theme,
          ),

          // Pain Points Section
          _PainPointsSection(
            painPoints: content.painPoints,
            accent: accent,
            theme: theme,
            isMobile: isMobile,
          ),

          // Features Section
          _FeaturesSection(
            features: content.features,
            accent: accent,
            theme: theme,
            isMobile: isMobile,
          ),

          // Testimonial Section
          _TestimonialSection(
            testimonial: content.testimonial,
            author: content.testimonialAuthor,
            accent: accent,
            theme: theme,
            isMobile: isMobile,
          ),

          // Final CTA Section
          _PersonaCTA(
            ctaText: content.ctaText,
            accent: accent,
            theme: theme,
            isMobile: isMobile,
          ),
        ],
      ),
    );
  }
}

class _PersonaHero extends StatelessWidget {
  final _PersonaContent content;
  final Color accent;
  final bool isMobile;
  final ThemeData theme;

  const _PersonaHero({
    required this.content,
    required this.accent,
    required this.isMobile,
    required this.theme,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: EdgeInsets.symmetric(
        vertical: isMobile ? 64 : 96,
        horizontal: 24,
      ),
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
          colors: [
            accent.withValues(alpha: 0.08),
            theme.colorScheme.surface,
          ],
        ),
      ),
      child: Center(
        child: ConstrainedBox(
          constraints: const BoxConstraints(maxWidth: 800),
          child: Column(
            children: [
              Container(
                padding: const EdgeInsets.all(24),
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    colors: [
                      accent.withValues(alpha: 0.2),
                      accent.withValues(alpha: 0.1),
                    ],
                  ),
                  shape: BoxShape.circle,
                ),
                child: Icon(content.heroIcon, size: 56, color: accent),
              ),
              const SizedBox(height: 32),
              Text(
                content.heroTitle,
                style: theme.textTheme.displayMedium?.copyWith(
                  fontWeight: FontWeight.w800,
                  letterSpacing: -1,
                  color: theme.colorScheme.onSurface,
                ),
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: 20),
              Text(
                content.heroSubtitle,
                style: theme.textTheme.titleLarge?.copyWith(
                  color: theme.colorScheme.onSurfaceVariant,
                  height: 1.6,
                  fontSize: isMobile ? 16 : 20,
                ),
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: 40),
              FilledButton.icon(
                onPressed: () => context.go('/register'),
                icon: const Icon(Icons.rocket_launch_rounded),
                label: Text(content.ctaText),
                style: FilledButton.styleFrom(
                  backgroundColor: accent,
                  foregroundColor: theme.colorScheme.onPrimary,
                  padding: const EdgeInsets.symmetric(
                    horizontal: 40,
                    vertical: 16,
                  ),
                  textStyle: const TextStyle(
                    fontSize: 17,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class _PainPointsSection extends StatelessWidget {
  final List<_PainPoint> painPoints;
  final Color accent;
  final ThemeData theme;
  final bool isMobile;

  const _PainPointsSection({
    required this.painPoints,
    required this.accent,
    required this.theme,
    required this.isMobile,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: EdgeInsets.symmetric(
        vertical: HomeConstants.sectionSpacingLarge,
        horizontal: 24,
      ),
      color: theme.colorScheme.surfaceContainerLowest,
      child: Center(
        child: ConstrainedBox(
          constraints:
              BoxConstraints(maxWidth: HomeConstants.maxContentWidth),
          child: Column(
            children: [
              Text(
                context.l10n.personaPainPointsTitle,
                style: theme.textTheme.headlineLarge?.copyWith(
                  fontWeight: FontWeight.bold,
                  letterSpacing: -0.5,
                ),
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: 48),
              Wrap(
                spacing: 24,
                runSpacing: 24,
                alignment: WrapAlignment.center,
                children: painPoints.map((pp) {
                  return SizedBox(
                    width: isMobile ? double.infinity : 340,
                    child: Card(
                      elevation: 0,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20),
                        side: BorderSide(
                          color: theme.colorScheme.outlineVariant,
                        ),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(28),
                        child: Column(
                          children: [
                            Container(
                              padding: const EdgeInsets.all(16),
                              decoration: BoxDecoration(
                                color: accent.withValues(alpha: 0.1),
                                shape: BoxShape.circle,
                              ),
                              child: Icon(pp.icon, size: 32, color: accent),
                            ),
                            const SizedBox(height: 20),
                            Text(
                              pp.title,
                              style:
                                  theme.textTheme.titleMedium?.copyWith(
                                fontWeight: FontWeight.bold,
                              ),
                              textAlign: TextAlign.center,
                            ),
                            const SizedBox(height: 10),
                            Text(
                              pp.description,
                              style: theme.textTheme.bodyMedium?.copyWith(
                                color:
                                    theme.colorScheme.onSurfaceVariant,
                                height: 1.5,
                              ),
                              textAlign: TextAlign.center,
                            ),
                          ],
                        ),
                      ),
                    ),
                  );
                }).toList(),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class _FeaturesSection extends StatelessWidget {
  final List<_Feature> features;
  final Color accent;
  final ThemeData theme;
  final bool isMobile;

  const _FeaturesSection({
    required this.features,
    required this.accent,
    required this.theme,
    required this.isMobile,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: EdgeInsets.symmetric(
        vertical: HomeConstants.sectionSpacingLarge,
        horizontal: 24,
      ),
      child: Center(
        child: ConstrainedBox(
          constraints:
              BoxConstraints(maxWidth: HomeConstants.maxContentWidth),
          child: Column(
            children: [
              Text(
                context.l10n.personaFeaturesTitle,
                style: theme.textTheme.headlineLarge?.copyWith(
                  fontWeight: FontWeight.bold,
                  letterSpacing: -0.5,
                ),
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: 48),
              Wrap(
                spacing: 24,
                runSpacing: 24,
                alignment: WrapAlignment.center,
                children: features.map((f) {
                  return SizedBox(
                    width: isMobile ? double.infinity : 340,
                    child: Card(
                      elevation: 0,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20),
                        side: BorderSide(
                          color: accent.withValues(alpha: 0.3),
                        ),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(28),
                        child: Column(
                          children: [
                            Container(
                              padding: const EdgeInsets.all(16),
                              decoration: BoxDecoration(
                                gradient: LinearGradient(
                                  colors: [
                                    accent.withValues(alpha: 0.2),
                                    accent.withValues(alpha: 0.08),
                                  ],
                                ),
                                shape: BoxShape.circle,
                              ),
                              child: Icon(f.icon, size: 32, color: accent),
                            ),
                            const SizedBox(height: 20),
                            Text(
                              f.title,
                              style:
                                  theme.textTheme.titleMedium?.copyWith(
                                fontWeight: FontWeight.bold,
                              ),
                              textAlign: TextAlign.center,
                            ),
                            const SizedBox(height: 10),
                            Text(
                              f.description,
                              style: theme.textTheme.bodyMedium?.copyWith(
                                color:
                                    theme.colorScheme.onSurfaceVariant,
                                height: 1.5,
                              ),
                              textAlign: TextAlign.center,
                            ),
                          ],
                        ),
                      ),
                    ),
                  );
                }).toList(),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class _TestimonialSection extends StatelessWidget {
  final String testimonial;
  final String author;
  final Color accent;
  final ThemeData theme;
  final bool isMobile;

  const _TestimonialSection({
    required this.testimonial,
    required this.author,
    required this.accent,
    required this.theme,
    required this.isMobile,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: EdgeInsets.symmetric(
        vertical: HomeConstants.sectionSpacingLarge,
        horizontal: 24,
      ),
      color: theme.colorScheme.surfaceContainerLowest,
      child: Center(
        child: ConstrainedBox(
          constraints: const BoxConstraints(maxWidth: 700),
          child: Column(
            children: [
              Text(
                context.l10n.personaTestimonialTitle,
                style: theme.textTheme.headlineLarge?.copyWith(
                  fontWeight: FontWeight.bold,
                  letterSpacing: -0.5,
                ),
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: 40),
              Card(
                elevation: 0,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(24),
                  side: BorderSide(
                    color: accent.withValues(alpha: 0.3),
                    width: 2,
                  ),
                ),
                child: Padding(
                  padding: EdgeInsets.all(isMobile ? 28 : 40),
                  child: Column(
                    children: [
                      Icon(
                        Icons.format_quote_rounded,
                        size: 40,
                        color: accent.withValues(alpha: 0.4),
                      ),
                      const SizedBox(height: 20),
                      Text(
                        testimonial,
                        style: theme.textTheme.titleMedium?.copyWith(
                          height: 1.7,
                          fontStyle: FontStyle.italic,
                          color: theme.colorScheme.onSurface,
                        ),
                        textAlign: TextAlign.center,
                      ),
                      const SizedBox(height: 24),
                      Text(
                        '— $author',
                        style: theme.textTheme.labelLarge?.copyWith(
                          color: accent,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class _PersonaCTA extends StatelessWidget {
  final String ctaText;
  final Color accent;
  final ThemeData theme;
  final bool isMobile;

  const _PersonaCTA({
    required this.ctaText,
    required this.accent,
    required this.theme,
    required this.isMobile,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: EdgeInsets.symmetric(
        vertical: HomeConstants.sectionSpacingLarge,
        horizontal: 24,
      ),
      child: Center(
        child: ConstrainedBox(
          constraints: const BoxConstraints(maxWidth: 600),
          child: Container(
            padding: EdgeInsets.all(isMobile ? 40 : 56),
            decoration: BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
                colors: [
                  accent,
                  accent.withValues(alpha: 0.8),
                ],
              ),
              borderRadius: BorderRadius.circular(32),
              boxShadow: [
                BoxShadow(
                  color: accent.withValues(alpha: 0.3),
                  blurRadius: 40,
                  offset: const Offset(0, 20),
                ),
              ],
            ),
            child: Column(
              children: [
                Text(
                  ctaText,
                  style: theme.textTheme.headlineMedium?.copyWith(
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                  textAlign: TextAlign.center,
                ),
                const SizedBox(height: 32),
                SizedBox(
                  height: HomeConstants.buttonMinHeight,
                  child: ElevatedButton.icon(
                    onPressed: () => context.go('/register'),
                    icon: const Icon(Icons.rocket_launch_rounded),
                    label: Text(ctaText),
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.white,
                      foregroundColor: accent,
                      padding: EdgeInsets.symmetric(
                        horizontal: isMobile ? 32 : 48,
                      ),
                      textStyle: TextStyle(
                        fontSize: isMobile ? 16 : 18,
                        fontWeight: FontWeight.bold,
                      ),
                      elevation: 0,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(16),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
