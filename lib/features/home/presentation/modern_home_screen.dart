import 'package:flutter/material.dart';
import 'package:flutter/semantics.dart';
import 'package:flutter/services.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import '../../../core/l10n_extension.dart';
import '../../../core/theme/app_colors.dart';
import '../../../core/providers/locale_provider.dart';
import '../../../core/providers/appearance_provider.dart';
import '../../../core/constants/home_constants.dart';
import '../../../core/constants/user_roles.dart';
import '../../../core/services/accessibility_service.dart';
import '../../authentication/providers/auth_provider.dart';
import '../../../core/widgets/navia_logo.dart';
import '../../../core/widgets/navia_footer.dart';
import 'widgets/demo_video_dialog.dart';
import 'widgets/section_divider.dart';
import 'widgets/testimonial_carousel.dart';
import 'widgets/university_logos_section.dart';
// v20 DIAGNOSTIC: temporarily unused while testing static placeholders
// import 'widgets/animated_counter.dart';
// import 'widgets/search_preview.dart';
import 'widgets/mini_quiz_preview.dart';
import '../data/testimonials_data.dart';

/// Modern Home Screen - Minimalistic Material Design 3
class ModernHomeScreen extends ConsumerStatefulWidget {
  const ModernHomeScreen({super.key});

  @override
  ConsumerState<ModernHomeScreen> createState() => _ModernHomeScreenState();
}

class _ModernHomeScreenState extends ConsumerState<ModernHomeScreen> {
  final ScrollController _scrollController = ScrollController();
  final GlobalKey _mainContentKey = GlobalKey();
  double _scrollOffset = 0;

  @override
  void initState() {
    super.initState();

    _scrollController.addListener(() {
      setState(() {
        _scrollOffset = _scrollController.offset;
      });
    });
  }

  @override
  void dispose() {
    _scrollController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final authState = ref.watch(authProvider);
    final isWide = MediaQuery.of(context).size.width > 900;

    // v21 DIAGNOSTIC: no RepaintBoundary, no overlays, just SliverAppBar + Hero + placeholder footer
    return Scaffold(
      backgroundColor: theme.colorScheme.surface,
      body: CustomScrollView(
        controller: _scrollController,
        slivers: [
          // Full App Bar (same as original)
          SliverAppBar(
            floating: true,
            snap: true,
            elevation: 0,
            scrolledUnderElevation: 0,
            surfaceTintColor: Colors.transparent,
            forceMaterialTransparency: true,
            backgroundColor: Colors.transparent,
            flexibleSpace: _scrollOffset > 10
                ? ColoredBox(
                    color: theme.colorScheme.surface,
                  )
                : null,
            title: Semantics(
              label: 'Main navigation',
              container: true,
              child: Row(
                children: [
                  const NaviaLogo(
                    variant: NaviaLogoVariant.light,
                    fontSize: 24,
                  ),
                  if (isWide) ...[
                    const SizedBox(width: 32),
                    _NavTextButton(
                      label: context.l10n.navUniversities,
                      path: '/universities',
                      theme: theme,
                    ),
                    PopupMenuButton<String>(
                      tooltip: '',
                      onSelected: (path) => context.go(path),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(
                          horizontal: 12,
                          vertical: 8,
                        ),
                        child: Row(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Text(
                              context.l10n.navSolutions,
                              style: TextStyle(
                                color: theme.colorScheme.onSurface,
                              ),
                            ),
                            const SizedBox(width: 4),
                            Icon(
                              Icons.arrow_drop_down,
                              size: 20,
                              color: theme.colorScheme.onSurface,
                            ),
                          ],
                        ),
                      ),
                      itemBuilder: (ctx) => [
                        PopupMenuItem(
                          value: '/for-students',
                          child: Text(ctx.l10n.forStudents),
                        ),
                        PopupMenuItem(
                          value: '/for-institutions',
                          child: Text(ctx.l10n.forInstitutions),
                        ),
                        PopupMenuItem(
                          value: '/for-parents',
                          child: Text(ctx.l10n.forParents),
                        ),
                        PopupMenuItem(
                          value: '/for-counselors',
                          child: Text(ctx.l10n.forCounselors),
                        ),
                      ],
                    ),
                    _NavTextButton(
                      label: context.l10n.navAbout,
                      path: '/about',
                      theme: theme,
                    ),
                    _NavTextButton(
                      label: context.l10n.navContact,
                      path: '/contact',
                      theme: theme,
                    ),
                  ],
                ],
              ),
            ),
            actions: [
              const _LanguageToggle(),
              const SizedBox(width: 4),
              _DarkModeToggle(),
              const SizedBox(width: 8),
              if (authState.isAuthenticated) ...[
                FilledButton.icon(
                  onPressed: () => context.go(
                    authState.user?.activeRole.dashboardRoute ?? '/login',
                  ),
                  icon: const Icon(Icons.dashboard, size: 18),
                  label: Text(context.l10n.navDashboard),
                  style: FilledButton.styleFrom(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 16,
                      vertical: 8,
                    ),
                  ),
                ),
              ] else ...[
                TextButton(
                  onPressed: () => context.go('/login'),
                  style: TextButton.styleFrom(
                    foregroundColor: theme.colorScheme.onSurface,
                  ),
                  child: Text(context.l10n.navSignIn),
                ),
                const SizedBox(width: 8),
                FilledButton.icon(
                  onPressed: () => context.go('/register'),
                  icon: const Icon(Icons.arrow_forward, size: 18),
                  label: Text(context.l10n.navGetStarted),
                  style: FilledButton.styleFrom(
                    backgroundColor: theme.colorScheme.primary,
                    foregroundColor: theme.colorScheme.onPrimary,
                    padding: const EdgeInsets.symmetric(
                      horizontal: 24,
                      vertical: 12,
                    ),
                  ),
                ),
              ],
              if (!isWide) ...[
                const SizedBox(width: 4),
                PopupMenuButton<String>(
                  tooltip: '',
                  icon: const Icon(Icons.menu),
                  onSelected: (path) => context.go(path),
                  itemBuilder: (ctx) => [
                    PopupMenuItem(
                      value: '/universities',
                      child: Text(ctx.l10n.navUniversities),
                    ),
                    PopupMenuItem(
                      value: '/about',
                      child: Text(ctx.l10n.navAbout),
                    ),
                    PopupMenuItem(
                      value: '/contact',
                      child: Text(ctx.l10n.navContact),
                    ),
                    const PopupMenuDivider(),
                    PopupMenuItem(
                      enabled: false,
                      child: Text(
                        ctx.l10n.navSolutions,
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Theme.of(ctx).colorScheme.primary,
                        ),
                      ),
                    ),
                    PopupMenuItem(
                      value: '/for-students',
                      child: Text('  ${ctx.l10n.forStudents}'),
                    ),
                    PopupMenuItem(
                      value: '/for-institutions',
                      child: Text('  ${ctx.l10n.forInstitutions}'),
                    ),
                    PopupMenuItem(
                      value: '/for-parents',
                      child: Text('  ${ctx.l10n.forParents}'),
                    ),
                    PopupMenuItem(
                      value: '/for-counselors',
                      child: Text('  ${ctx.l10n.forCounselors}'),
                    ),
                  ],
                ),
              ],
              const SizedBox(width: 16),
            ],
          ),

          // Hero Section (with static placeholders from v20)
          const SliverToBoxAdapter(
            child: _HeroSection(),
          ),

          // v22: all original below-hero sections restored
          SliverToBoxAdapter(
            child: const _QuizTeaserSection(),
          ),
          SliverToBoxAdapter(
            child: WaveDivider(
              color: theme.colorScheme.surfaceContainerLowest,
              height: 36,
              style: WaveStyle.gentle,
            ),
          ),
          SliverToBoxAdapter(
            child: Container(
              color: theme.colorScheme.surfaceContainerLowest,
              child: const _FadeInOnScroll(
                children: [_ValuePropositionSection()],
              ),
            ),
          ),
          const SliverToBoxAdapter(
            child: _FadeInOnScroll(
              children: [_SocialProofSection()],
            ),
          ),
          SliverToBoxAdapter(
            child: WaveDivider(
              color: theme.colorScheme.secondary.withValues(alpha: 0.1),
              height: 30,
              style: WaveStyle.minimal,
            ),
          ),
          const SliverToBoxAdapter(
            child: _UniversitySearchSection(),
          ),
          const SliverToBoxAdapter(
            child: _FindYourPathSection(),
          ),
          SliverToBoxAdapter(
            child: Container(
              color: theme.colorScheme.surfaceContainerLowest,
              child: const _FadeInOnScroll(
                children: [_KeyFeaturesSection()],
              ),
            ),
          ),
          const SliverToBoxAdapter(
            child: _FadeInOnScroll(
              children: [_UserTypesSection()],
            ),
          ),
          SliverToBoxAdapter(
            child: Container(
              color: theme.colorScheme.surfaceContainerLowest,
              child: const _FadeInOnScroll(
                children: [_TestimonialsSection()],
              ),
            ),
          ),
          SliverToBoxAdapter(
            child: WaveDivider(
              color: theme.colorScheme.primaryContainer,
              height: 36,
              style: WaveStyle.curved,
            ),
          ),
          const SliverToBoxAdapter(
            child: _FadeInOnScroll(
              children: [_FinalCTASection()],
            ),
          ),
          SliverToBoxAdapter(
            child: NaviaFooter(),
          ),
        ],
      ),
    );
  }
}

/// Hero Section with Animated Gradient
///
/// Stagger fade-in animations were removed because their AnimationControllers
/// (started via Future.delayed in initState) get stuck when GoRouter
/// re-creates the widget during in-app navigation — leaving hero content
/// at opacity 0 / offset 30 permanently. Content now renders immediately.
class _HeroSection extends StatelessWidget {
  const _HeroSection();

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final theme = Theme.of(context);
    final isMobile = size.width < HomeConstants.mobileBreakpoint;

    return Container(
      constraints: BoxConstraints(
        minHeight: isMobile ? size.height * 0.95 : size.height * 0.9,
      ),
      child: Stack(
        clipBehavior: Clip.none, // Avoid clip compositing layer on CanvasKit
        children: [
          // Static Gradient Background (v15: removed AnimatedBuilder to diagnose render bug)
          Positioned.fill(
            child: DecoratedBox(
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                  colors: [
                    theme.colorScheme.primary.withValues(alpha: 0.10),
                    theme.colorScheme.tertiary.withValues(alpha: 0.07),
                    AppColors.accent.withValues(alpha: 0.05),
                  ],
                ),
              ),
            ),
          ),

          // Static decorative circles (v15: removed FloatingElement wrappers to diagnose render bug)
          if (!isMobile) ...[
            // Top right decorative circle
            Positioned(
              top: -50,
              right: -50,
              child: Container(
                width: 260,
                height: 260,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  gradient: RadialGradient(
                    colors: [
                      theme.colorScheme.primary.withValues(alpha: 0.18),
                      theme.colorScheme.primary.withValues(alpha: 0.06),
                      theme.colorScheme.primary.withValues(alpha: 0.0),
                    ],
                    stops: const [0.0, 0.6, 1.0],
                  ),
                ),
              ),
            ),
            // Bottom left decorative circle
            Positioned(
              bottom: -30,
              left: -30,
              child: Container(
                width: 220,
                height: 220,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  gradient: RadialGradient(
                    colors: [
                      theme.colorScheme.tertiary.withValues(alpha: 0.15),
                      theme.colorScheme.tertiary.withValues(alpha: 0.05),
                      theme.colorScheme.tertiary.withValues(alpha: 0.0),
                    ],
                    stops: const [0.0, 0.6, 1.0],
                  ),
                ),
              ),
            ),
            // Middle right accent circle
            Positioned(
              top: size.height * 0.3,
              right: 60,
              child: Container(
                width: 100,
                height: 100,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  gradient: RadialGradient(
                    colors: [
                      AppColors.accent.withValues(alpha: 0.14),
                      AppColors.accent.withValues(alpha: 0.0),
                    ],
                  ),
                ),
              ),
            ),
            // Top left small accent circle
            Positioned(
              top: size.height * 0.15,
              left: 40,
              child: Container(
                width: 70,
                height: 70,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  gradient: RadialGradient(
                    colors: [
                      theme.colorScheme.primary.withValues(alpha: 0.12),
                      theme.colorScheme.primary.withValues(alpha: 0.0),
                    ],
                  ),
                ),
              ),
            ),
          ],

          // Content
          Center(
            child: ConstrainedBox(
              constraints: BoxConstraints(maxWidth: HomeConstants.maxHeroWidth),
              child: Padding(
                padding: EdgeInsets.symmetric(
                  horizontal: isMobile ? 20 : 24,
                  vertical: isMobile ? 40 : 0,
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    // Trust Badge (v15: removed PulsingElement wrapper)
                    Container(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 20,
                        vertical: 10,
                      ),
                      decoration: BoxDecoration(
                        color: theme.colorScheme.primaryContainer,
                        borderRadius: BorderRadius.circular(100),
                        border: Border.all(
                          color: theme.colorScheme.primary.withValues(
                            alpha: 0.2,
                          ),
                        ),
                        boxShadow: [
                          BoxShadow(
                            color: theme.colorScheme.primary.withValues(
                              alpha: 0.2,
                            ),
                            blurRadius: 20,
                            offset: const Offset(0, 4),
                          ),
                        ],
                      ),
                      child: Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Icon(
                            Icons.verified_rounded,
                            size: 18,
                            color: theme.colorScheme.primary,
                          ),
                          const SizedBox(width: 8),
                          Text(
                            context.l10n.heroTrustBadge,
                            style: theme.textTheme.labelLarge?.copyWith(
                              color: theme.colorScheme.onPrimaryContainer,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(height: 32),

                    // Main Headline
                    Semantics(
                      header: true,
                      child: Text(
                        context.l10n.heroHeadline,
                        style: theme.textTheme.displayLarge?.copyWith(
                          fontWeight: FontWeight.w800,
                          fontSize: isMobile ? 40 : 56,
                          height: 1.1,
                          letterSpacing: -1.5,
                          color: theme.colorScheme.onSurface,
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ),
                    const SizedBox(height: 24),

                    // Subheadline
                    Text(
                      context.l10n.heroSubheadline,
                      style: theme.textTheme.titleLarge?.copyWith(
                        color: theme.colorScheme.onSurfaceVariant,
                        height: 1.6,
                        fontSize: isMobile ? 16 : 20,
                        fontWeight: FontWeight.w400,
                      ),
                      textAlign: TextAlign.center,
                    ),
                    const SizedBox(height: 32),

                    // v20 DIAGNOSTIC: static placeholder instead of SearchBarButton
                    Container(
                      height: 56,
                      decoration: BoxDecoration(
                        color: theme.colorScheme.surfaceContainerHighest,
                        borderRadius: BorderRadius.circular(28),
                        border: Border.all(color: theme.colorScheme.outline),
                      ),
                      child: Row(
                        children: [
                          const SizedBox(width: 16),
                          Icon(Icons.search, color: theme.colorScheme.onSurfaceVariant),
                          const SizedBox(width: 12),
                          Text('Search universities...', style: TextStyle(color: theme.colorScheme.onSurfaceVariant)),
                        ],
                      ),
                    ),
                    const SizedBox(height: 32),

                    // CTA Buttons
                    Wrap(
                      alignment: WrapAlignment.center,
                      spacing: 16,
                      runSpacing: 16,
                      children: [
                        SizedBox(
                          height: HomeConstants.buttonMinHeight,
                          child: FilledButton.icon(
                            onPressed: () => context.go('/register'),
                            icon: const Icon(Icons.rocket_launch_rounded),
                            label: Text(context.l10n.heroStartFreeTrial),
                            style: FilledButton.styleFrom(
                              backgroundColor: theme.colorScheme.primary,
                              foregroundColor: theme.colorScheme.onPrimary,
                              padding: const EdgeInsets.symmetric(
                                horizontal: 40,
                                vertical: 0,
                              ),
                              textStyle: const TextStyle(
                                fontSize: 17,
                                fontWeight: FontWeight.w600,
                              ),
                              elevation: 2,
                              shadowColor: theme.colorScheme.primary
                                  .withValues(alpha: 0.3),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: HomeConstants.buttonMinHeight,
                          child: OutlinedButton.icon(
                            onPressed: () => showDemoVideoDialog(context),
                            icon: const Icon(Icons.play_circle_outline),
                            label: Text(context.l10n.heroTakeATour),
                            style: OutlinedButton.styleFrom(
                              foregroundColor: theme.colorScheme.primary,
                              side: BorderSide(
                                color: theme.colorScheme.outline,
                                width: 1.5,
                              ),
                              padding: const EdgeInsets.symmetric(
                                horizontal: 40,
                                vertical: 0,
                              ),
                              textStyle: const TextStyle(
                                fontSize: 17,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 48),

                    // Stats Counters
                    Container(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 32,
                        vertical: 28,
                      ),
                      decoration: BoxDecoration(
                        color: theme.colorScheme.surface,
                        borderRadius: BorderRadius.circular(20),
                        border: Border.all(
                          color: theme.colorScheme.outlineVariant,
                        ),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black.withValues(alpha: 0.05),
                            blurRadius: 20,
                            offset: const Offset(0, 8),
                          ),
                        ],
                      ),
                      // v20 DIAGNOSTIC: static text instead of AnimatedStatsRow
                      child: Wrap(
                        alignment: WrapAlignment.center,
                        spacing: isMobile ? 32 : 64,
                        runSpacing: 24,
                        children: [
                          _StaticStat(icon: Icons.people_rounded, value: '50K+', label: context.l10n.heroStatActiveUsers),
                          _StaticStat(icon: Icons.account_balance_rounded, value: '18K+', label: context.l10n.heroStatUniversities),
                          _StaticStat(icon: Icons.public_rounded, value: '100+', label: context.l10n.heroStatCountries),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

/// Value Proposition Section
class _ValuePropositionSection extends StatelessWidget {
  const _ValuePropositionSection();

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Container(
      padding: EdgeInsets.symmetric(
        vertical: HomeConstants.sectionSpacingLarge,
        horizontal: 24,
      ),
      child: Center(
        child: ConstrainedBox(
          constraints: BoxConstraints(maxWidth: HomeConstants.maxContentWidth),
          child: Column(
            children: [
              Text(
                context.l10n.whyChooseTitle,
                style: theme.textTheme.displayMedium?.copyWith(
                  fontWeight: FontWeight.bold,
                  letterSpacing: -0.5,
                ),
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: 16),
              Text(
                context.l10n.whyChooseSubtitle,
                style: theme.textTheme.titleLarge?.copyWith(
                  color: theme.colorScheme.onSurfaceVariant,
                ),
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: 64),
              Wrap(
                spacing: HomeConstants.cardSpacing,
                runSpacing: HomeConstants.cardSpacing,
                alignment: WrapAlignment.center,
                children: [
                  _ValueCard(
                    icon: Icons.offline_bolt_rounded,
                    title: context.l10n.valueOfflineTitle,
                    description: context.l10n.valueOfflineDesc,
                    color: theme.colorScheme.primary,
                    isHighlighted: true,
                  ),
                  _ValueCard(
                    icon: Icons.payment_rounded,
                    title: context.l10n.valueMobileMoneyTitle,
                    description: context.l10n.valueMobileMoneyDesc,
                    color: theme.colorScheme.tertiary,
                  ),
                  _ValueCard(
                    icon: Icons.translate_rounded,
                    title: context.l10n.valueMultiLangTitle,
                    description: context.l10n.valueMultiLangDesc,
                    color: theme.colorScheme.secondary,
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class _ValueCard extends StatefulWidget {
  final IconData icon;
  final String title;
  final String description;
  final Color color;
  final bool isHighlighted;

  const _ValueCard({
    required this.icon,
    required this.title,
    required this.description,
    required this.color,
    this.isHighlighted = false,
  });

  @override
  State<_ValueCard> createState() => _ValueCardState();
}

class _ValueCardState extends State<_ValueCard> {
  bool _isHovered = false;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return MouseRegion(
      onEnter: (_) => setState(() => _isHovered = true),
      onExit: (_) => setState(() => _isHovered = false),
      child: AnimatedContainer(
        duration: HomeConstants.hoverDuration,
        curve: HomeConstants.hoverCurve,
        width: HomeConstants.cardMinWidth,
        padding: EdgeInsets.all(HomeConstants.cardPadding),
        transform: Matrix4.identity()
          ..scaleByDouble(
            _isHovered ? 1.02 : 1.0,
            _isHovered ? 1.02 : 1.0,
            1.0,
            1.0,
          ),
        transformAlignment: Alignment.center,
        decoration: BoxDecoration(
          color: theme.colorScheme.surface,
          borderRadius: BorderRadius.circular(28),
          border: Border.all(
            color: _isHovered
                ? widget.color.withValues(alpha: 0.4)
                : widget.isHighlighted
                ? widget.color.withValues(alpha: 0.3)
                : theme.colorScheme.outlineVariant,
            width: (_isHovered || widget.isHighlighted) ? 2 : 1,
          ),
          boxShadow: [
            BoxShadow(
              color: _isHovered
                  ? widget.color.withValues(alpha: 0.15)
                  : widget.isHighlighted
                  ? widget.color.withValues(alpha: 0.10)
                  : Colors.black.withValues(alpha: 0.05),
              blurRadius: _isHovered
                  ? 24
                  : widget.isHighlighted
                  ? 16
                  : 10,
              offset: Offset(
                0,
                _isHovered
                    ? 12
                    : widget.isHighlighted
                    ? 8
                    : 4,
              ),
            ),
          ],
        ),
        child: Column(
          children: [
            AnimatedContainer(
              duration: HomeConstants.hoverDuration,
              padding: const EdgeInsets.all(24),
              decoration: BoxDecoration(
                color: widget.color.withValues(alpha: _isHovered ? 0.15 : 0.1),
                shape: BoxShape.circle,
              ),
              child: Icon(widget.icon, size: 48, color: widget.color),
            ),
            const SizedBox(height: 28),
            Text(
              widget.title,
              style: theme.textTheme.headlineSmall?.copyWith(
                fontWeight: FontWeight.bold,
              ),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 14),
            Text(
              widget.description,
              style: theme.textTheme.bodyLarge?.copyWith(
                color: theme.colorScheme.onSurfaceVariant,
                height: 1.6,
              ),
              textAlign: TextAlign.center,
            ),
          ],
        ),
      ),
    );
  }
}

/// Social Proof Section with University Logos
class _SocialProofSection extends StatelessWidget {
  const _SocialProofSection();

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        vertical: HomeConstants.sectionSpacingMedium,
        horizontal: 24,
      ),
      child: Center(
        child: ConstrainedBox(
          constraints: BoxConstraints(maxWidth: HomeConstants.maxContentWidth),
          child: UniversityLogosSection(title: context.l10n.socialProofTitle),
        ),
      ),
    );
  }
}

/// Testimonials Section with Carousel
class _TestimonialsSection extends StatelessWidget {
  const _TestimonialsSection();

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Container(
      padding: EdgeInsets.symmetric(
        vertical: HomeConstants.sectionSpacingLarge,
        horizontal: 24,
      ),
      child: Center(
        child: ConstrainedBox(
          constraints: BoxConstraints(maxWidth: HomeConstants.maxContentWidth),
          child: Column(
            children: [
              Text(
                context.l10n.testimonialsTitle,
                style: theme.textTheme.displayMedium?.copyWith(
                  fontWeight: FontWeight.bold,
                  letterSpacing: -0.5,
                ),
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: 16),
              Text(
                context.l10n.testimonialsSubtitle,
                style: theme.textTheme.titleLarge?.copyWith(
                  color: theme.colorScheme.onSurfaceVariant,
                ),
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: 48),
              LayoutBuilder(
                builder: (context, constraints) {
                  if (constraints.maxWidth > 900) {
                    return TestimonialGrid(testimonials: Testimonials.all);
                  }
                  return TestimonialCarousel(testimonials: Testimonials.all);
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}

/// Interactive Quiz Teaser Section
class _QuizTeaserSection extends StatelessWidget {
  const _QuizTeaserSection();

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final size = MediaQuery.of(context).size;
    final isMobile = size.width < HomeConstants.mobileBreakpoint;

    return Container(
      padding: EdgeInsets.symmetric(
        vertical: HomeConstants.sectionSpacingLarge,
        horizontal: 24,
      ),
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
          colors: [
            theme.colorScheme.surfaceContainerLowest,
            AppColors.accentLight.withValues(alpha: 0.18),
          ],
        ),
      ),
      child: Center(
        child: ConstrainedBox(
          constraints: BoxConstraints(maxWidth: HomeConstants.maxContentWidth),
          child: isMobile
              ? Column(
                  children: [
                    _buildContent(context, theme),
                    const SizedBox(height: 40),
                    const MiniQuizPreview(),
                  ],
                )
              : Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Expanded(child: _buildContent(context, theme)),
                    const SizedBox(width: 64),
                    const Expanded(child: MiniQuizPreview()),
                  ],
                ),
        ),
      ),
    );
  }

  Widget _buildContent(BuildContext context, ThemeData theme) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
          decoration: BoxDecoration(
            color: AppColors.accentLight.withValues(alpha: 0.3),
            borderRadius: BorderRadius.circular(100),
          ),
          child: Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              Icon(
                Icons.explore_rounded,
                size: 18,
                color: AppColors.accentDark,
              ),
              const SizedBox(width: 8),
              Text(
                context.l10n.quizBadge,
                style: theme.textTheme.labelLarge?.copyWith(
                  color: AppColors.accentDark,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ],
          ),
        ),
        const SizedBox(height: 24),
        Text(
          context.l10n.quizTitle,
          style: theme.textTheme.displaySmall?.copyWith(
            fontWeight: FontWeight.bold,
            letterSpacing: -0.5,
            height: 1.2,
          ),
        ),
        const SizedBox(height: 16),
        Text(
          context.l10n.quizDescription,
          style: theme.textTheme.bodyLarge?.copyWith(
            color: theme.colorScheme.onSurfaceVariant,
            height: 1.6,
          ),
        ),
        const SizedBox(height: 24),
        Row(
          children: [
            Icon(
              Icons.timer_outlined,
              size: 20,
              color: theme.colorScheme.primary,
            ),
            const SizedBox(width: 8),
            Text(
              context.l10n.quizDuration,
              style: theme.textTheme.bodyMedium?.copyWith(
                color: theme.colorScheme.onSurfaceVariant,
                fontWeight: FontWeight.w500,
              ),
            ),
            const SizedBox(width: 24),
            Icon(
              Icons.psychology_outlined,
              size: 20,
              color: theme.colorScheme.primary,
            ),
            const SizedBox(width: 8),
            Text(
              context.l10n.quizAIPowered,
              style: theme.textTheme.bodyMedium?.copyWith(
                color: theme.colorScheme.onSurfaceVariant,
                fontWeight: FontWeight.w500,
              ),
            ),
          ],
        ),
      ],
    );
  }
}

/// Key Features Section - Minimalistic with responsive layout
class _KeyFeaturesSection extends StatelessWidget {
  const _KeyFeaturesSection();

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final size = MediaQuery.of(context).size;
    final isMobile = size.width < HomeConstants.tabletBreakpoint;

    return Container(
      padding: EdgeInsets.symmetric(
        vertical: HomeConstants.sectionSpacingLarge,
        horizontal: 24,
      ),
      child: Center(
        child: ConstrainedBox(
          constraints: BoxConstraints(maxWidth: HomeConstants.maxContentWidth),
          child: isMobile
              ? _buildMobileLayout(context, theme)
              : _buildDesktopLayout(context, theme),
        ),
      ),
    );
  }

  Widget _buildDesktopLayout(BuildContext context, ThemeData theme) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        // Left side - Feature list
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                context.l10n.featuresTitle,
                style: theme.textTheme.displayMedium?.copyWith(
                  fontWeight: FontWeight.bold,
                  letterSpacing: -0.5,
                ),
              ),
              const SizedBox(height: 16),
              Text(
                context.l10n.featuresSubtitle,
                style: theme.textTheme.titleLarge?.copyWith(
                  color: theme.colorScheme.onSurfaceVariant,
                ),
              ),
              const SizedBox(height: 48),
              _FeatureItem(
                icon: Icons.auto_stories,
                title: context.l10n.featureLearningTitle,
                description: context.l10n.featureLearningDesc,
              ),
              const SizedBox(height: 28),
              _FeatureItem(
                icon: Icons.people_rounded,
                title: context.l10n.featureCollabTitle,
                description: context.l10n.featureCollabDesc,
              ),
              const SizedBox(height: 28),
              _FeatureItem(
                icon: Icons.security_rounded,
                title: context.l10n.featureSecurityTitle,
                description: context.l10n.featureSecurityDesc,
              ),
            ],
          ),
        ),
        const SizedBox(width: 80),

        // Right side - Device Frame Mockup
        Expanded(
          child: FittedBox(fit: BoxFit.scaleDown, child: _DeviceFrameMockup()),
        ),
      ],
    );
  }

  Widget _buildMobileLayout(BuildContext context, ThemeData theme) {
    return Column(
      children: [
        Text(
          context.l10n.featuresTitle,
          style: theme.textTheme.displaySmall?.copyWith(
            fontWeight: FontWeight.bold,
            letterSpacing: -0.5,
          ),
          textAlign: TextAlign.center,
        ),
        const SizedBox(height: 16),
        Text(
          context.l10n.featuresSubtitle,
          style: theme.textTheme.titleMedium?.copyWith(
            color: theme.colorScheme.onSurfaceVariant,
          ),
          textAlign: TextAlign.center,
        ),
        const SizedBox(height: 40),
        _FeatureItem(
          icon: Icons.auto_stories,
          title: context.l10n.featureLearningTitle,
          description: context.l10n.featureLearningDesc,
        ),
        const SizedBox(height: 24),
        _FeatureItem(
          icon: Icons.people_rounded,
          title: context.l10n.featureCollabTitle,
          description: context.l10n.featureCollabDesc,
        ),
        const SizedBox(height: 24),
        _FeatureItem(
          icon: Icons.security_rounded,
          title: context.l10n.featureSecurityTitle,
          description: context.l10n.featureSecurityDesc,
        ),
      ],
    );
  }
}

class _FeatureItem extends StatelessWidget {
  final IconData icon;
  final String title;
  final String description;

  const _FeatureItem({
    required this.icon,
    required this.title,
    required this.description,
  });

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          padding: const EdgeInsets.all(12),
          decoration: BoxDecoration(
            color: theme.colorScheme.primaryContainer,
            borderRadius: BorderRadius.circular(12),
          ),
          child: Icon(
            icon,
            color: theme.colorScheme.onPrimaryContainer,
            size: 24,
          ),
        ),
        const SizedBox(width: 16),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                title,
                style: theme.textTheme.titleMedium?.copyWith(
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 4),
              Text(
                description,
                style: theme.textTheme.bodyMedium?.copyWith(
                  color: theme.colorScheme.onSurfaceVariant,
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}

/// Device frame mockup showing 3 overlapping device frames (laptop, tablet, phone)
/// with mini dashboard UIs inside.
class _DeviceFrameMockup extends StatelessWidget {
  const _DeviceFrameMockup();

  @override
  Widget build(BuildContext context) {
    final colorScheme = Theme.of(context).colorScheme;

    return SizedBox(
      width: 480,
      height: 400,
      child: Stack(
        clipBehavior: Clip.none,
        children: [
          // Laptop (back, largest)
          Positioned(
            left: 0,
            top: 20,
            child: _DeviceFrame(
              width: 340,
              height: 220,
              bezelRadius: 12,
              bezelWidth: 8,
              bezelColor: colorScheme.surfaceContainerHighest,
              shadowColor: colorScheme.shadow.withValues(alpha: 0.15),
              child: _MiniDashboard(variant: 0),
            ),
          ),
          // Tablet (middle)
          Positioned(
            left: 200,
            top: 60,
            child: _DeviceFrame(
              width: 200,
              height: 270,
              bezelRadius: 16,
              bezelWidth: 6,
              bezelColor: colorScheme.surfaceContainerHighest,
              shadowColor: colorScheme.shadow.withValues(alpha: 0.18),
              child: _MiniDashboard(variant: 1),
            ),
          ),
          // Phone (front, smallest)
          Positioned(
            right: 20,
            bottom: 0,
            child: _DeviceFrame(
              width: 120,
              height: 220,
              bezelRadius: 20,
              bezelWidth: 4,
              bezelColor: colorScheme.surfaceContainerHighest,
              shadowColor: colorScheme.shadow.withValues(alpha: 0.2),
              child: _MiniDashboard(variant: 2),
            ),
          ),
        ],
      ),
    );
  }
}

/// A single device frame container with bezel, rounded corners, and shadow.
class _DeviceFrame extends StatelessWidget {
  final double width;
  final double height;
  final double bezelRadius;
  final double bezelWidth;
  final Color bezelColor;
  final Color shadowColor;
  final Widget child;

  const _DeviceFrame({
    required this.width,
    required this.height,
    required this.bezelRadius,
    required this.bezelWidth,
    required this.bezelColor,
    required this.shadowColor,
    required this.child,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      decoration: BoxDecoration(
        color: bezelColor,
        borderRadius: BorderRadius.circular(bezelRadius),
        boxShadow: [
          BoxShadow(
            color: shadowColor,
            blurRadius: 20,
            offset: const Offset(0, 8),
          ),
        ],
      ),
      padding: EdgeInsets.all(bezelWidth),
      child: DecoratedBox(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(bezelRadius - bezelWidth),
        ),
        child: child,
      ),
    );
  }
}

/// Mini dashboard UI with colored rectangles representing the Navia dashboard.
class _MiniDashboard extends StatelessWidget {
  final int variant;

  const _MiniDashboard({required this.variant});

  @override
  Widget build(BuildContext context) {
    final colorScheme = Theme.of(context).colorScheme;

    return Container(
      color: colorScheme.surface,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          // Top nav bar
          Container(
            height: variant == 2 ? 16 : 24,
            color: colorScheme.primary,
            padding: EdgeInsets.symmetric(
              horizontal: variant == 2 ? 6 : 10,
              vertical: 4,
            ),
            child: Row(
              children: [
                Container(
                  width: variant == 2 ? 8 : 14,
                  height: variant == 2 ? 8 : 14,
                  decoration: BoxDecoration(
                    color: colorScheme.onPrimary.withValues(alpha: 0.9),
                    borderRadius: BorderRadius.circular(3),
                  ),
                ),
                const Spacer(),
                Container(
                  width: variant == 2 ? 16 : 30,
                  height: variant == 2 ? 6 : 8,
                  decoration: BoxDecoration(
                    color: colorScheme.onPrimary.withValues(alpha: 0.5),
                    borderRadius: BorderRadius.circular(2),
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(height: 8),
          // Stat cards row
          Padding(
            padding: EdgeInsets.symmetric(horizontal: variant == 2 ? 6 : 10),
            child: Row(
              children: List.generate(variant == 2 ? 2 : 3, (i) {
                final colors = [
                  colorScheme.primaryContainer,
                  colorScheme.secondaryContainer,
                  colorScheme.tertiaryContainer,
                ];
                return Expanded(
                  child: Container(
                    margin: EdgeInsets.only(
                      right: i < (variant == 2 ? 1 : 2) ? 4 : 0,
                    ),
                    height: variant == 2 ? 24 : 36,
                    decoration: BoxDecoration(
                      color: colors[i % colors.length],
                      borderRadius: BorderRadius.circular(4),
                    ),
                    child: Align(
                      alignment: Alignment.centerLeft,
                      child: Padding(
                        padding: const EdgeInsets.only(left: 4),
                        child: Container(
                          width: variant == 2 ? 10 : 18,
                          height: variant == 2 ? 6 : 10,
                          decoration: BoxDecoration(
                            color: colorScheme.onSurface.withValues(alpha: 0.2),
                            borderRadius: BorderRadius.circular(2),
                          ),
                        ),
                      ),
                    ),
                  ),
                );
              }),
            ),
          ),
          const SizedBox(height: 8),
          // Chart area
          Expanded(
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: variant == 2 ? 6 : 10),
              child: Container(
                decoration: BoxDecoration(
                  color: colorScheme.surfaceContainerLow,
                  borderRadius: BorderRadius.circular(6),
                ),
                child: Padding(
                  padding: EdgeInsets.all(variant == 2 ? 6 : 10),
                  child: CustomPaint(
                    painter: _MiniChartPainter(
                      lineColor: colorScheme.primary,
                      fillColor: colorScheme.primary.withValues(alpha: 0.1),
                    ),
                  ),
                ),
              ),
            ),
          ),
          SizedBox(height: variant == 2 ? 6 : 10),
        ],
      ),
    );
  }
}

/// Paints a simple mini line chart.
class _MiniChartPainter extends CustomPainter {
  final Color lineColor;
  final Color fillColor;

  _MiniChartPainter({required this.lineColor, required this.fillColor});

  @override
  void paint(Canvas canvas, Size size) {
    if (size.width <= 0 || size.height <= 0) return;

    final points = [0.6, 0.4, 0.7, 0.3, 0.5, 0.2, 0.4];
    final path = Path();
    final fillPath = Path();

    for (int i = 0; i < points.length; i++) {
      final x = (i / (points.length - 1)) * size.width;
      final y = points[i] * size.height;
      if (i == 0) {
        path.moveTo(x, y);
        fillPath.moveTo(x, size.height);
        fillPath.lineTo(x, y);
      } else {
        path.lineTo(x, y);
        fillPath.lineTo(x, y);
      }
    }

    fillPath.lineTo(size.width, size.height);
    fillPath.close();

    canvas.drawPath(fillPath, Paint()..color = fillColor);
    canvas.drawPath(
      path,
      Paint()
        ..color = lineColor
        ..strokeWidth = 2
        ..style = PaintingStyle.stroke
        ..strokeCap = StrokeCap.round,
    );
  }

  @override
  bool shouldRepaint(covariant _MiniChartPainter oldDelegate) =>
      lineColor != oldDelegate.lineColor || fillColor != oldDelegate.fillColor;
}

/// User Types Section - Segmented
class _UserTypesSection extends StatefulWidget {
  const _UserTypesSection();

  @override
  State<_UserTypesSection> createState() => _UserTypesSectionState();
}

class _UserTypesSectionState extends State<_UserTypesSection> {
  int _selectedIndex = 0;
  late final List<FocusNode> _tabFocusNodes;

  List<_UserType> _buildUserTypes(BuildContext context) {
    final colorScheme = Theme.of(context).colorScheme;
    return [
      _UserType(
        icon: Icons.person_rounded,
        name: context.l10n.roleStudents,
        description: context.l10n.roleStudentsDesc,
        color: colorScheme.primary,
        route: '/for-students',
      ),
      _UserType(
        icon: Icons.business_rounded,
        name: context.l10n.roleInstitutions,
        description: context.l10n.roleInstitutionsDesc,
        color: colorScheme.secondary,
        route: '/for-institutions',
      ),
      _UserType(
        icon: Icons.family_restroom_rounded,
        name: context.l10n.roleParents,
        description: context.l10n.roleParentsDesc,
        color: colorScheme.tertiary,
        route: '/for-parents',
      ),
      _UserType(
        icon: Icons.psychology_rounded,
        name: context.l10n.roleCounselors,
        description: context.l10n.roleCounselorsDesc,
        color: AppColors.accent,
        route: '/for-counselors',
      ),
    ];
  }

  @override
  void initState() {
    super.initState();
    _tabFocusNodes = List.generate(4, (_) => FocusNode());
  }

  @override
  void dispose() {
    for (final node in _tabFocusNodes) {
      node.dispose();
    }
    super.dispose();
  }

  void _selectTab(int index, List<_UserType> userTypes) {
    setState(() {
      _selectedIndex = index;
    });
    SemanticsService.announce(
      'Showing content for ${userTypes[index].name}',
      TextDirection.ltr,
    );
  }

  KeyEventResult _handleTabKeyEvent(
    KeyEvent event,
    int index,
    List<_UserType> userTypes,
  ) {
    if (event is! KeyDownEvent) return KeyEventResult.ignored;

    final count = userTypes.length;
    if (event.logicalKey == LogicalKeyboardKey.arrowRight) {
      final next = (index + 1) % count;
      _tabFocusNodes[next].requestFocus();
      return KeyEventResult.handled;
    } else if (event.logicalKey == LogicalKeyboardKey.arrowLeft) {
      final prev = (index - 1 + count) % count;
      _tabFocusNodes[prev].requestFocus();
      return KeyEventResult.handled;
    } else if (event.logicalKey == LogicalKeyboardKey.enter ||
        event.logicalKey == LogicalKeyboardKey.space) {
      _selectTab(index, userTypes);
      return KeyEventResult.handled;
    }
    return KeyEventResult.ignored;
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final userTypes = _buildUserTypes(context);
    final selected = userTypes[_selectedIndex];

    return Container(
      padding: EdgeInsets.symmetric(
        vertical: HomeConstants.sectionSpacingLarge,
        horizontal: 24,
      ),
      child: Center(
        child: ConstrainedBox(
          constraints: BoxConstraints(maxWidth: HomeConstants.maxContentWidth),
          child: Column(
            children: [
              Text(
                context.l10n.builtForEveryoneTitle,
                style: theme.textTheme.displayMedium?.copyWith(
                  fontWeight: FontWeight.bold,
                  letterSpacing: -0.5,
                ),
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: 16),
              Text(
                context.l10n.builtForEveryoneSubtitle,
                style: theme.textTheme.titleLarge?.copyWith(
                  color: theme.colorScheme.onSurfaceVariant,
                ),
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: 48),

              // Accessible tab row — ARIA tab pattern
              LayoutBuilder(
                builder: (context, constraints) {
                  final showIcons = constraints.maxWidth >= 500;
                  return SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: ConstrainedBox(
                      constraints: BoxConstraints(
                        minWidth: constraints.maxWidth,
                      ),
                      child: Semantics(
                        explicitChildNodes: true,
                        label: 'User types',
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: userTypes.asMap().entries.map((entry) {
                            return Semantics(
                              selected: entry.key == _selectedIndex,
                              inMutuallyExclusiveGroup: true,
                              focusable: true,
                              child: _AccessibleTab(
                                label: entry.value.name,
                                icon: entry.value.icon,
                                color: entry.value.color,
                                isSelected: entry.key == _selectedIndex,
                                showIcon: showIcons,
                                focusNode: _tabFocusNodes[entry.key],
                                onTap: () => _selectTab(entry.key, userTypes),
                                onKeyEvent: (e) =>
                                    _handleTabKeyEvent(e, entry.key, userTypes),
                              ),
                            );
                          }).toList(),
                        ),
                      ),
                    ),
                  );
                },
              ),
              const SizedBox(height: 48),

              // Selected User Type Card — live region for screen readers
              Semantics(
                label: 'Content for ${selected.name}',
                container: true,
                liveRegion: true,
                child: AnimatedSwitcher(
                  duration: const Duration(milliseconds: 300),
                  child: Container(
                    key: ValueKey(_selectedIndex),
                    padding: const EdgeInsets.all(48),
                    decoration: BoxDecoration(
                      color: theme.colorScheme.surface,
                      borderRadius: BorderRadius.circular(32),
                      border: Border.all(
                        color: selected.color.withValues(alpha: 0.3),
                        width: 2,
                      ),
                    ),
                    child: Column(
                      children: [
                        Container(
                          padding: const EdgeInsets.all(24),
                          decoration: BoxDecoration(
                            gradient: LinearGradient(
                              colors: [
                                selected.color.withValues(alpha: 0.2),
                                selected.color.withValues(alpha: 0.1),
                              ],
                            ),
                            shape: BoxShape.circle,
                          ),
                          child: Icon(
                            selected.icon,
                            size: 56,
                            color: selected.color,
                          ),
                        ),
                        const SizedBox(height: 24),
                        Text(
                          selected.name,
                          style: theme.textTheme.headlineMedium?.copyWith(
                            fontWeight: FontWeight.bold,
                            color: selected.color,
                          ),
                        ),
                        const SizedBox(height: 16),
                        Text(
                          selected.description,
                          style: theme.textTheme.titleMedium?.copyWith(
                            color: theme.colorScheme.onSurfaceVariant,
                            height: 1.6,
                          ),
                          textAlign: TextAlign.center,
                        ),
                        const SizedBox(height: 32),
                        FilledButton.icon(
                          onPressed: () => context.go(selected.route),
                          icon: const Icon(Icons.arrow_forward),
                          label: Text(context.l10n.getStartedAs(selected.name)),
                          style: FilledButton.styleFrom(
                            backgroundColor: selected.color,
                            padding: const EdgeInsets.symmetric(
                              horizontal: 32,
                              vertical: 16,
                            ),
                          ),
                        ),
                      ],
                    ),
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

/// Accessible tab widget for the "Built for Everyone" section.
/// Implements ARIA tab pattern with keyboard navigation and hover states.
class _AccessibleTab extends StatefulWidget {
  final String label;
  final IconData icon;
  final Color color;
  final bool isSelected;
  final bool showIcon;
  final FocusNode focusNode;
  final VoidCallback onTap;
  final KeyEventResult Function(KeyEvent) onKeyEvent;

  const _AccessibleTab({
    required this.label,
    required this.icon,
    required this.color,
    required this.isSelected,
    required this.showIcon,
    required this.focusNode,
    required this.onTap,
    required this.onKeyEvent,
  });

  @override
  State<_AccessibleTab> createState() => _AccessibleTabState();
}

class _AccessibleTabState extends State<_AccessibleTab> {
  bool _isHovered = false;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final colorScheme = theme.colorScheme;

    // Resolve visual state
    final Color bgColor;
    final Color textColor;
    final Color iconColor;
    final BorderSide borderSide;
    final FontWeight fontWeight;

    if (widget.isSelected) {
      bgColor = AppColors.secondary;
      textColor = Colors.white;
      iconColor = Colors.white;
      borderSide = BorderSide(color: AppColors.secondary);
      fontWeight = FontWeight.bold;
    } else if (_isHovered) {
      bgColor = colorScheme.primary.withValues(alpha: 0.08);
      textColor = colorScheme.primary;
      iconColor = colorScheme.primary;
      borderSide = BorderSide(
        color: colorScheme.primary.withValues(alpha: 0.3),
      );
      fontWeight = FontWeight.w500;
    } else {
      bgColor = Colors.transparent;
      textColor = colorScheme.onSurfaceVariant;
      iconColor = colorScheme.onSurfaceVariant;
      borderSide = BorderSide(color: colorScheme.outlineVariant);
      fontWeight = FontWeight.w500;
    }

    return MouseRegion(
      onEnter: (_) => setState(() => _isHovered = true),
      onExit: (_) => setState(() => _isHovered = false),
      child: Focus(
        focusNode: widget.focusNode,
        onKeyEvent: (_, event) => widget.onKeyEvent(event),
        child: Builder(
          builder: (context) {
            final isFocused = Focus.of(context).hasFocus;
            return AnimatedContainer(
              duration: const Duration(milliseconds: 200),
              curve: Curves.easeOut,
              decoration: BoxDecoration(
                color: bgColor,
                borderRadius: BorderRadius.circular(12),
                border: Border.all(
                  color: isFocused ? theme.focusColor : borderSide.color,
                  width: isFocused ? 2 : 1,
                ),
              ),
              child: GestureDetector(
                onTap: widget.onTap,
                behavior: HitTestBehavior.opaque,
                child: Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 20,
                    vertical: 12,
                  ),
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      if (widget.showIcon) ...[
                        Icon(widget.icon, size: 20, color: iconColor),
                        const SizedBox(width: 8),
                      ],
                      AnimatedDefaultTextStyle(
                        duration: const Duration(milliseconds: 200),
                        curve: Curves.easeOut,
                        style: theme.textTheme.labelLarge!.copyWith(
                          color: textColor,
                          fontWeight: fontWeight,
                        ),
                        child: Text(widget.label),
                      ),
                    ],
                  ),
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}

class _UserType {
  final IconData icon;
  final String name;
  final String description;
  final Color color;
  final String route;

  const _UserType({
    required this.icon,
    required this.name,
    required this.description,
    required this.color,
    required this.route,
  });
}

/// Renders children immediately in a Column.
///
/// Previously animated children with a staggered slide-up effect on scroll,
/// but the AnimationControllers (started via Future.delayed) would get stuck
/// when GoRouter re-created the widget during in-app navigation — leaving
/// content at offset (0, 20) permanently. Replaced with static rendering.
/// v20 DIAGNOSTIC: static stat placeholder (no AnimationController, no GlobalKey)
class _StaticStat extends StatelessWidget {
  final IconData icon;
  final String value;
  final String label;
  const _StaticStat({required this.icon, required this.value, required this.label});
  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Icon(icon, size: 28, color: theme.colorScheme.primary),
        const SizedBox(height: 8),
        Text(value, style: theme.textTheme.headlineMedium?.copyWith(fontWeight: FontWeight.bold, color: theme.colorScheme.onSurface)),
        const SizedBox(height: 4),
        Text(label, style: theme.textTheme.bodyMedium?.copyWith(color: theme.colorScheme.onSurfaceVariant)),
      ],
    );
  }
}

class _FadeInOnScroll extends StatelessWidget {
  final List<Widget> children;

  const _FadeInOnScroll({required this.children});

  @override
  Widget build(BuildContext context) {
    return Column(children: children);
  }
}

/// Navigation text button used in the homepage app bar.
class _NavTextButton extends StatelessWidget {
  final String label;
  final String path;
  final ThemeData theme;

  const _NavTextButton({
    required this.label,
    required this.path,
    required this.theme,
  });

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: () => context.go(path),
      style: TextButton.styleFrom(
        foregroundColor: theme.colorScheme.onSurface,
        padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
      ),
      child: Text(label),
    );
  }
}

/// Final CTA Section
class _FinalCTASection extends StatelessWidget {
  const _FinalCTASection();

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final size = MediaQuery.of(context).size;
    final isMobile = size.width < HomeConstants.mobileBreakpoint;

    return Container(
      padding: EdgeInsets.symmetric(
        vertical: HomeConstants.sectionSpacingLarge,
        horizontal: 24,
      ),
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
          colors: [
            theme.colorScheme.primaryContainer.withValues(alpha: 0.5),
            theme.colorScheme.tertiaryContainer.withValues(alpha: 0.3),
          ],
        ),
      ),
      child: Center(
        child: ConstrainedBox(
          constraints: const BoxConstraints(maxWidth: 900),
          child: Container(
            padding: EdgeInsets.all(isMobile ? 40 : 64),
            decoration: BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
                colors: [
                  AppColors.secondary,
                  AppColors.secondaryDark,
                ],
              ),
              borderRadius: BorderRadius.circular(32),
              boxShadow: [
                BoxShadow(
                  color: AppColors.secondaryDark.withValues(alpha: 0.3),
                  blurRadius: 40,
                  offset: const Offset(0, 20),
                ),
              ],
            ),
            child: Column(
              children: [
                Text(
                  context.l10n.ctaTitle,
                  style: theme.textTheme.displaySmall?.copyWith(
                    fontWeight: FontWeight.bold,
                    letterSpacing: -0.5,
                    color: Colors.white,
                    fontSize: isMobile ? 28 : 36,
                  ),
                  textAlign: TextAlign.center,
                ),
                const SizedBox(height: 20),
                Text(
                  context.l10n.ctaSubtitle,
                  style: theme.textTheme.titleMedium?.copyWith(
                    color: Colors.white,
                    fontSize: isMobile ? 14 : 16,
                  ),
                  textAlign: TextAlign.center,
                ),
                const SizedBox(height: 40),
                SizedBox(
                  height: HomeConstants.buttonMinHeight,
                  child: ElevatedButton.icon(
                    onPressed: () => context.go('/register'),
                    icon: const Icon(Icons.rocket_launch_rounded),
                    label: Text(context.l10n.ctaButton),
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.white,
                      foregroundColor: theme.colorScheme.primary,
                      padding: EdgeInsets.symmetric(
                        horizontal: isMobile ? 32 : 48,
                        vertical: 0,
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
                const SizedBox(height: 20),
                Container(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 16,
                    vertical: 8,
                  ),
                  decoration: BoxDecoration(
                    color: Colors.black.withValues(alpha: 0.15),
                    borderRadius: BorderRadius.circular(100),
                  ),
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Icon(
                        Icons.check_circle_outline,
                        size: 16,
                        color: Colors.white,
                      ),
                      const SizedBox(width: 6),
                      Text(
                        context.l10n.ctaNoCreditCard,
                        style: theme.textTheme.bodySmall?.copyWith(
                          color: Colors.white,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      const SizedBox(width: 16),
                      Icon(
                        Icons.check_circle_outline,
                        size: 16,
                        color: Colors.white,
                      ),
                      const SizedBox(width: 6),
                      Text(
                        context.l10n.cta14DayTrial,
                        style: theme.textTheme.bodySmall?.copyWith(
                          color: Colors.white,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ],
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

/// Find Your Path Feature Section
class _FindYourPathSection extends StatelessWidget {
  const _FindYourPathSection();

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Container(
      width: double.infinity,
      margin: const EdgeInsets.symmetric(horizontal: 24, vertical: 80),
      child: Center(
        child: ConstrainedBox(
          constraints: const BoxConstraints(maxWidth: 1200),
          child: Container(
            decoration: BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
                colors: [
                  AppColors.secondary,
                  AppColors.secondaryDark,
                  AppColors.primaryDark,
                ],
              ),
              borderRadius: BorderRadius.circular(28),
              boxShadow: [
                BoxShadow(
                  color: AppColors.secondaryDark.withValues(alpha: 0.4),
                  blurRadius: 30,
                  offset: const Offset(0, 12),
                ),
              ],
            ),
            child: Container(
              padding: const EdgeInsets.symmetric(vertical: 56, horizontal: 40),
              child: Column(
                children: [
                  // New Feature Badge
                  Container(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 16,
                      vertical: 8,
                    ),
                    decoration: BoxDecoration(
                      color: Colors.white.withValues(alpha: 0.2),
                      borderRadius: BorderRadius.circular(100),
                      border: Border.all(
                        color: Colors.white.withValues(alpha: 0.3),
                      ),
                    ),
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Icon(Icons.auto_awesome, size: 16, color: Colors.white),
                        const SizedBox(width: 8),
                        Text(
                          context.l10n.homeNewFeature,
                          style: theme.textTheme.labelSmall?.copyWith(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            letterSpacing: 1.2,
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 24),

                  // Icon
                  Container(
                    padding: const EdgeInsets.all(20),
                    decoration: BoxDecoration(
                      color: Colors.white.withValues(alpha: 0.15),
                      shape: BoxShape.circle,
                    ),
                    child: Icon(
                      Icons.explore_rounded,
                      size: 56,
                      color: Colors.white,
                    ),
                  ),
                  const SizedBox(height: 24),

                  // Title
                  Text(
                    context.l10n.homeFindYourPathTitle,
                    style: theme.textTheme.displayMedium?.copyWith(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 48,
                      letterSpacing: -1,
                    ),
                    textAlign: TextAlign.center,
                  ),
                  const SizedBox(height: 16),

                  // Description
                  Text(
                    context.l10n.homeFindYourPathDesc,
                    style: theme.textTheme.titleLarge?.copyWith(
                      color: Colors.white.withValues(alpha: 0.95),
                      height: 1.6,
                    ),
                    textAlign: TextAlign.center,
                  ),
                  const SizedBox(height: 40),

                  // Benefits
                  Wrap(
                    spacing: 32,
                    runSpacing: 24,
                    alignment: WrapAlignment.center,
                    children: [
                      _FindYourPathBenefit(
                        icon: Icons.lightbulb_outline,
                        text: context.l10n.homePersonalizedRecs,
                      ),
                      _FindYourPathBenefit(
                        icon: Icons.school_outlined,
                        text: context.l10n.homeTopUniversities,
                      ),
                      _FindYourPathBenefit(
                        icon: Icons.analytics_outlined,
                        text: context.l10n.homeSmartMatching,
                      ),
                    ],
                  ),
                  const SizedBox(height: 40),

                  // CTA Button
                  ElevatedButton.icon(
                    onPressed: () => context.go('/find-your-path'),
                    icon: const Icon(Icons.arrow_forward, size: 24),
                    label: Text(
                      context.l10n.homeStartYourJourney,
                      style: theme.textTheme.titleLarge?.copyWith(
                        fontWeight: FontWeight.bold,
                        letterSpacing: 0.5,
                      ),
                    ),
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.white,
                      foregroundColor: theme.colorScheme.primary,
                      padding: const EdgeInsets.symmetric(
                        horizontal: 48,
                        vertical: 20,
                      ),
                      elevation: 8,
                      shadowColor: Colors.black.withValues(alpha: 0.3),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(16),
                      ),
                    ),
                  ),
                  const SizedBox(height: 16),

                  // Subtext
                  Text(
                    context.l10n.homeNoAccountRequired,
                    style: theme.textTheme.labelLarge?.copyWith(
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

/// Helper Widget for Find Your Path Benefits
class _FindYourPathBenefit extends StatelessWidget {
  final IconData icon;
  final String text;

  const _FindYourPathBenefit({required this.icon, required this.text});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 12),
      decoration: BoxDecoration(
        color: Colors.white.withValues(alpha: 0.15),
        borderRadius: BorderRadius.circular(100),
        border: Border.all(color: Colors.white.withValues(alpha: 0.3)),
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Icon(icon, size: 20, color: Colors.white),
          const SizedBox(width: 10),
          Text(
            text,
            style: theme.textTheme.bodyMedium?.copyWith(
              color: Colors.white,
              fontWeight: FontWeight.w600,
            ),
          ),
        ],
      ),
    );
  }
}

/// University Search Section - Search universities worldwide
class _UniversitySearchSection extends StatelessWidget {
  const _UniversitySearchSection();

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Container(
      width: double.infinity,
      margin: const EdgeInsets.symmetric(horizontal: 24, vertical: 40),
      child: Center(
        child: ConstrainedBox(
          constraints: const BoxConstraints(maxWidth: 1200),
          child: Container(
            decoration: BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
                colors: [AppColors.secondary, AppColors.primaryDark],
              ),
              borderRadius: BorderRadius.circular(28),
              boxShadow: [
                BoxShadow(
                  color: AppColors.secondary.withValues(alpha: 0.3),
                  blurRadius: 30,
                  offset: const Offset(0, 12),
                ),
              ],
            ),
            child: Container(
              padding: const EdgeInsets.symmetric(vertical: 48, horizontal: 40),
              child: Column(
                children: [
                  // Icon
                  Container(
                    padding: const EdgeInsets.all(20),
                    decoration: BoxDecoration(
                      color: Colors.white.withValues(alpha: 0.15),
                      shape: BoxShape.circle,
                    ),
                    child: Icon(
                      Icons.school_rounded,
                      size: 48,
                      color: Colors.white,
                    ),
                  ),
                  const SizedBox(height: 24),

                  // Title
                  Text(
                    context.l10n.uniSearchTitle,
                    style: theme.textTheme.displayMedium?.copyWith(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      letterSpacing: -0.5,
                    ),
                    textAlign: TextAlign.center,
                  ),
                  const SizedBox(height: 12),

                  // Description
                  Text(
                    context.l10n.homeSearchUniversitiesDesc,
                    style: theme.textTheme.titleMedium?.copyWith(
                      color: Colors.white.withValues(alpha: 0.95),
                      height: 1.6,
                    ),
                    textAlign: TextAlign.center,
                  ),
                  const SizedBox(height: 32),

                  // Stats Row
                  Wrap(
                    spacing: 32,
                    runSpacing: 16,
                    alignment: WrapAlignment.center,
                    children: [
                      _UniversityStatChip(
                        icon: Icons.public,
                        value: '100+',
                        label: context.l10n.heroStatCountries,
                      ),
                      _UniversityStatChip(
                        icon: Icons.account_balance,
                        value: '18K+',
                        label: context.l10n.heroStatUniversities,
                      ),
                      _UniversityStatChip(
                        icon: Icons.filter_list,
                        value: '10+',
                        label: context.l10n.homeFilters,
                      ),
                    ],
                  ),
                  const SizedBox(height: 32),

                  // CTA Button
                  ElevatedButton.icon(
                    onPressed: () => context.go('/universities'),
                    icon: const Icon(Icons.search, size: 22),
                    label: Text(
                      context.l10n.homeBrowseUniversities,
                      style: theme.textTheme.titleMedium?.copyWith(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.white,
                      foregroundColor: theme.colorScheme.secondary,
                      padding: const EdgeInsets.symmetric(
                        horizontal: 40,
                        vertical: 18,
                      ),
                      elevation: 4,
                      shadowColor: Colors.black.withValues(alpha: 0.2),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(14),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

/// Helper widget for university search stats
class _UniversityStatChip extends StatelessWidget {
  final IconData icon;
  final String value;
  final String label;

  const _UniversityStatChip({
    required this.icon,
    required this.value,
    required this.label,
  });

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 10),
      decoration: BoxDecoration(
        color: Colors.white.withValues(alpha: 0.15),
        borderRadius: BorderRadius.circular(100),
        border: Border.all(color: Colors.white.withValues(alpha: 0.25)),
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Icon(icon, size: 18, color: Colors.white),
          const SizedBox(width: 8),
          Text(
            value,
            style: theme.textTheme.labelLarge?.copyWith(
              color: Colors.white,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(width: 4),
          Text(
            label,
            style: theme.textTheme.bodySmall?.copyWith(color: Colors.white),
          ),
        ],
      ),
    );
  }
}

class _DarkModeToggle extends ConsumerWidget {
  const _DarkModeToggle();

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final brightness = Theme.of(context).brightness;
    final isDark = brightness == Brightness.dark;

    // No IconButton/Tooltip — both trigger saveLayer compositing in
    // Skwasm/CanvasKit which causes rendering artifacts on route transitions.
    return Semantics(
      button: true,
      label: isDark ? 'Switch to light mode' : 'Switch to dark mode',
      child: GestureDetector(
        onTap: () {
          ref
              .read(appearanceProvider.notifier)
              .setThemeMode(isDark ? ThemeMode.light : ThemeMode.dark);
        },
        behavior: HitTestBehavior.opaque,
        child: Padding(
          padding: const EdgeInsets.all(8),
          child: Icon(isDark ? Icons.light_mode : Icons.dark_mode),
        ),
      ),
    );
  }
}

class _LanguageToggle extends ConsumerWidget {
  const _LanguageToggle();

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final locale = ref.watch(localeProvider);
    final isEnglish = locale.languageCode == 'en';
    final theme = Theme.of(context);

    // No Material/InkWell — both create compositing layers that cause
    // rendering artifacts on Skwasm/CanvasKit during route transitions.
    return DecoratedBox(
      decoration: BoxDecoration(
        color: theme.colorScheme.surfaceContainerHighest,
        borderRadius: BorderRadius.circular(20),
        border: Border.all(
          color: theme.colorScheme.outline.withValues(alpha: 0.3),
        ),
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Semantics(
            button: true,
            label: 'English',
            selected: isEnglish,
            child: GestureDetector(
              onTap: () => ref
                  .read(localeProvider.notifier)
                  .setLocale(const Locale('en')),
              behavior: HitTestBehavior.opaque,
              child: DecoratedBox(
                decoration: BoxDecoration(
                  color: isEnglish
                      ? theme.colorScheme.primary
                      : Colors.transparent,
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 10,
                    vertical: 6,
                  ),
                  child: Text(
                    'EN',
                    style: theme.textTheme.labelMedium?.copyWith(
                      fontWeight: FontWeight.bold,
                      color: isEnglish
                          ? theme.colorScheme.onPrimary
                          : theme.colorScheme.onSurfaceVariant,
                    ),
                  ),
                ),
              ),
            ),
          ),
          Semantics(
            button: true,
            label: 'French',
            selected: !isEnglish,
            child: GestureDetector(
              onTap: () => ref
                  .read(localeProvider.notifier)
                  .setLocale(const Locale('fr')),
              behavior: HitTestBehavior.opaque,
              child: DecoratedBox(
                decoration: BoxDecoration(
                  color: !isEnglish
                      ? theme.colorScheme.primary
                      : Colors.transparent,
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 10,
                    vertical: 6,
                  ),
                  child: Text(
                    'FR',
                    style: theme.textTheme.labelMedium?.copyWith(
                      fontWeight: FontWeight.bold,
                      color: !isEnglish
                          ? theme.colorScheme.onPrimary
                          : theme.colorScheme.onSurfaceVariant,
                    ),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
