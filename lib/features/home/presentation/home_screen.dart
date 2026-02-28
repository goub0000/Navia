// ignore_for_file: sort_child_properties_last

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import '../../../core/theme/app_colors.dart';
import '../../../core/providers/locale_provider.dart';
import '../../../core/providers/appearance_provider.dart';
import '../../../core/l10n_extension.dart';
import 'dart:math' as math;
import 'widgets/animated_section.dart' show VisibilityDetector;
import '../data/testimonials_data.dart';

class HomeScreen extends ConsumerStatefulWidget {
  const HomeScreen({super.key});

  @override
  ConsumerState<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends ConsumerState<HomeScreen> with TickerProviderStateMixin {
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();
  final ScrollController _scrollController = ScrollController();

  // Hero entrance animation
  late final AnimationController _heroController;
  late final AnimationController _meshController;
  late final List<CurvedAnimation> _intervals;
  late final List<Animation<double>> _fadeAnimations;
  late final List<Animation<Offset>> _slideAnimations;

  @override
  void initState() {
    super.initState();

    _heroController = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 1200),
    );
    _meshController = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 10),
    );

    _intervals = [
      CurvedAnimation(parent: _heroController, curve: const Interval(0.0, 0.3, curve: Curves.easeOutCubic)),
      CurvedAnimation(parent: _heroController, curve: const Interval(0.2, 0.5, curve: Curves.easeOutCubic)),
      CurvedAnimation(parent: _heroController, curve: const Interval(0.3, 0.6, curve: Curves.easeOutCubic)),
      CurvedAnimation(parent: _heroController, curve: const Interval(0.4, 0.7, curve: Curves.easeOutCubic)),
      CurvedAnimation(parent: _heroController, curve: const Interval(0.5, 0.8, curve: Curves.easeOutCubic)),
    ];

    _fadeAnimations = _intervals
        .map((interval) => Tween<double>(begin: 0.0, end: 1.0).animate(interval))
        .toList();
    _slideAnimations = _intervals
        .map((interval) => Tween<Offset>(begin: const Offset(0, 30), end: Offset.zero).animate(interval))
        .toList();

    _heroController.forward();
    _meshController.repeat();
  }

  @override
  void dispose() {
    _heroController.dispose();
    _meshController.dispose();
    for (final interval in _intervals) {
      interval.dispose();
    }
    _scrollController.dispose();
    super.dispose();
  }

  Widget _heroAnimated(int index, Widget child) {
    return AnimatedBuilder(
      animation: _heroController,
      builder: (context, _) {
        return Transform.translate(
          offset: _slideAnimations[index].value,
          child: Opacity(
            opacity: _fadeAnimations[index].value,
            child: child,
          ),
        );
      },
    );
  }

  void _scrollToTop() {
    _scrollController.animateTo(
      0,
      duration: const Duration(milliseconds: 500),
      curve: Curves.easeInOut,
    );
  }

  Widget _buildNavigationDrawer(BuildContext context, ThemeData theme) {
    final drawerRoutes = ['/universities', '/about', '/contact'];
    return NavigationDrawer(
      onDestinationSelected: (index) {
        Navigator.pop(context);
        context.go(drawerRoutes[index]);
      },
      children: [
        const SizedBox(height: 16),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 28, vertical: 16),
          child: Row(
            children: [
              Container(
                width: 36,
                height: 36,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  border: Border.all(color: theme.colorScheme.primary, width: 2),
                ),
                child: ClipOval(
                  child: Padding(
                    padding: const EdgeInsets.all(4),
                    child: Image.asset('assets/images/logo.png', fit: BoxFit.contain),
                  ),
                ),
              ),
              const SizedBox(width: 12),
              Text(
                'Flow',
                style: theme.textTheme.titleLarge?.copyWith(
                  color: theme.colorScheme.primary,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
        ),
        NavigationDrawerDestination(
          icon: const Icon(Icons.school_outlined),
          selectedIcon: const Icon(Icons.school),
          label: Text(context.l10n.navUniversities),
        ),
        NavigationDrawerDestination(
          icon: const Icon(Icons.info_outlined),
          selectedIcon: const Icon(Icons.info),
          label: Text(context.l10n.homeNavAbout),
        ),
        NavigationDrawerDestination(
          icon: const Icon(Icons.contact_mail_outlined),
          selectedIcon: const Icon(Icons.contact_mail),
          label: Text(context.l10n.homeNavContact),
        ),
        const Divider(indent: 28, endIndent: 28),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 28, vertical: 8),
          child: Text(
            context.l10n.homeNavAccountTypes,
            style: theme.textTheme.labelSmall?.copyWith(
              color: theme.colorScheme.onSurfaceVariant,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        ListTile(
          leading: Icon(Icons.school, color: AppColors.studentRole),
          title: Text(context.l10n.homeNavStudents),
          contentPadding: const EdgeInsets.symmetric(horizontal: 28),
          onTap: () => Navigator.pop(context),
        ),
        ListTile(
          leading: Icon(Icons.business, color: AppColors.institutionRole),
          title: Text(context.l10n.homeNavInstitutions),
          contentPadding: const EdgeInsets.symmetric(horizontal: 28),
          onTap: () => Navigator.pop(context),
        ),
        ListTile(
          leading: Icon(Icons.family_restroom, color: AppColors.parentRole),
          title: Text(context.l10n.homeNavParents),
          contentPadding: const EdgeInsets.symmetric(horizontal: 28),
          onTap: () => Navigator.pop(context),
        ),
        ListTile(
          leading: Icon(Icons.psychology, color: AppColors.counselorRole),
          title: Text(context.l10n.homeNavCounselors),
          contentPadding: const EdgeInsets.symmetric(horizontal: 28),
          onTap: () => Navigator.pop(context),
        ),
        ListTile(
          leading: Icon(Icons.rate_review, color: AppColors.recommenderRole),
          title: Text(context.l10n.homeNavRecommenders),
          contentPadding: const EdgeInsets.symmetric(horizontal: 28),
          onTap: () => Navigator.pop(context),
        ),
        const Divider(indent: 28, endIndent: 28),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 28, vertical: 8),
          child: Row(
            children: [
              Expanded(
                child: TextButton(
                  onPressed: () {
                    Navigator.pop(context);
                    context.go('/login');
                  },
                  child: Text(context.l10n.homeNavSignIn),
                ),
              ),
              const SizedBox(width: 8),
              Expanded(
                child: FilledButton(
                  onPressed: () {
                    Navigator.pop(context);
                    context.go('/register');
                  },
                  child: Text(context.l10n.homeNavGetStarted),
                ),
              ),
            ],
          ),
        ),
        const SizedBox(height: 16),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Scaffold(
      key: _scaffoldKey,
      endDrawer: _buildNavigationDrawer(context, theme),
      body: CustomScrollView(
        controller: _scrollController,
        slivers: [
          // AppBar / Navigation Header
          SliverAppBar(
            expandedHeight: 80,
            floating: true,
            snap: true,
            pinned: true,
            backgroundColor: theme.colorScheme.surfaceContainerLow,
            surfaceTintColor: theme.colorScheme.surfaceTint,
            scrolledUnderElevation: 2,
            elevation: 0,
            flexibleSpace: FlexibleSpaceBar(
              background: Container(
                color: theme.colorScheme.surfaceContainerLow,
              ),
              titlePadding: const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
              title: LayoutBuilder(
                builder: (context, constraints) {
                  return Row(
                    children: [
                      // Logo
                      Container(
                        width: 40,
                        height: 40,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          border: Border.all(color: AppColors.primary, width: 2),
                        ),
                        child: ClipOval(
                          child: Container(
                            color: AppColors.surface,
                            padding: const EdgeInsets.all(4),
                            child: Image.asset(
                              'assets/images/logo.png',
                              fit: BoxFit.contain,
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(width: 12),
                      Text(
                        'Flow',
                        style: theme.textTheme.titleLarge?.copyWith(
                          color: AppColors.primary,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const Spacer(),
                      // Language Toggle + Navigation Links
                      _LanguageToggle(),
                      const SizedBox(width: 8),
                      const _ThemeToggle(),
                      const SizedBox(width: 8),
                      if (constraints.maxWidth > 900) ...[
                        TextButton(
                          onPressed: () => context.go('/universities'),
                          style: TextButton.styleFrom(
                            foregroundColor: theme.colorScheme.onSurface,
                            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                          ),
                          child: Text(context.l10n.navUniversities),
                        ),
                        TextButton(
                          onPressed: () => context.go('/about'),
                          style: TextButton.styleFrom(
                            foregroundColor: theme.colorScheme.onSurface,
                            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                          ),
                          child: Text(context.l10n.homeNavAbout),
                        ),
                        TextButton(
                          onPressed: () => context.go('/contact'),
                          style: TextButton.styleFrom(
                            foregroundColor: theme.colorScheme.onSurface,
                            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                          ),
                          child: Text(context.l10n.homeNavContact),
                        ),
                        const SizedBox(width: 16),
                        TextButton(
                          onPressed: () => context.go('/login'),
                          style: TextButton.styleFrom(
                            foregroundColor: theme.colorScheme.onSurface,
                            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                          ),
                          child: Text(context.l10n.homeNavSignIn),
                        ),
                        const SizedBox(width: 8),
                        FilledButton(
                          onPressed: () => context.go('/register'),
                          style: FilledButton.styleFrom(
                            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                          ),
                          child: Text(context.l10n.homeNavGetStarted),
                        ),
                      ] else ...[
                        // Mobile menu icon
                        IconButton(
                          icon: Icon(Icons.menu, color: theme.colorScheme.onSurface),
                          onPressed: () => _scaffoldKey.currentState?.openEndDrawer(),
                        ),
                      ],
                ],
              );
                },
              ),
            ),
          ),

          // Main Content
          SliverList(
            delegate: SliverChildListDelegate([
              // Hero Section — Mesh Gradient + Staggered Entrance
              ClipRect(
                child: SizedBox(
                  width: double.infinity,
                  child: Stack(
                    children: [
                      // Layer 1 — Mesh gradient background
                      Positioned.fill(
                        child: AnimatedBuilder(
                          animation: _meshController,
                          builder: (context, _) {
                            return CustomPaint(
                              painter: _MeshGradientPainter(
                                animationValue: _meshController.value,
                                primary: theme.colorScheme.primary,
                                secondary: theme.colorScheme.secondary,
                                tertiary: theme.colorScheme.tertiary,
                              ),
                            );
                          },
                        ),
                      ),

                      // Layer 2 — Hero content
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 16),
                        child: Column(
                          children: [
                            // Badge (not animated — always visible brand element)
                            Container(
                              padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 3),
                              decoration: BoxDecoration(
                                gradient: LinearGradient(
                                  colors: [AppColors.accent, AppColors.accentLight],
                                ),
                                borderRadius: BorderRadius.circular(16),
                              ),
                              child: Row(
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  Icon(Icons.rocket_launch, color: AppColors.textPrimary, size: 14),
                                  const SizedBox(width: 6),
                                  Text(
                                    context.l10n.homeNavBadge,
                                    style: theme.textTheme.labelSmall?.copyWith(
                                      fontWeight: FontWeight.bold,
                                      color: AppColors.textPrimary,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            const SizedBox(height: 6),

                            // [0] Heading
                            _heroAnimated(0, Text(
                              context.l10n.homeNavWelcome,
                              style: theme.textTheme.displayLarge?.copyWith(
                                fontWeight: FontWeight.bold,
                                color: theme.colorScheme.primary,
                                height: 1.2,
                              ),
                              textAlign: TextAlign.center,
                            )),
                            const SizedBox(height: 4),

                            // [1] Subtext
                            _heroAnimated(1, ConstrainedBox(
                              constraints: const BoxConstraints(maxWidth: 800),
                              child: Text(
                                context.l10n.homeNavSubtitle,
                                style: theme.textTheme.bodyMedium?.copyWith(
                                  color: theme.colorScheme.onSurfaceVariant,
                                  height: 1.4,
                                ),
                                textAlign: TextAlign.center,
                              ),
                            )),
                            const SizedBox(height: 16),

                            // [2] Search
                            _heroAnimated(2, ConstrainedBox(
                              constraints: const BoxConstraints(maxWidth: 600),
                              child: SearchAnchor(
                                builder: (context, controller) {
                                  return SearchBar(
                                    controller: controller,
                                    hintText: context.l10n.searchHint,
                                    leading: const Padding(
                                      padding: EdgeInsets.only(left: 8),
                                      child: Icon(Icons.search),
                                    ),
                                    elevation: const WidgetStatePropertyAll(0),
                                    shape: WidgetStatePropertyAll(
                                      RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(28),
                                        side: BorderSide(color: theme.colorScheme.outlineVariant),
                                      ),
                                    ),
                                    onTap: () => controller.openView(),
                                    onChanged: (_) => controller.openView(),
                                    onSubmitted: (_) => context.go('/universities'),
                                  );
                                },
                                suggestionsBuilder: (context, controller) {
                                  final suggestions = [
                                    (context.l10n.searchSuggestionGhana, context.l10n.searchSuggestionGhanaLocation),
                                    (context.l10n.searchSuggestionCapeTown, context.l10n.searchSuggestionCapeTownLocation),
                                    (context.l10n.searchSuggestionAshesi, context.l10n.searchSuggestionAshesiLocation),
                                  ];
                                  return [
                                    ...suggestions.map((s) => ListTile(
                                      leading: const Icon(Icons.school_outlined),
                                      title: Text(s.$1),
                                      subtitle: Text(s.$2),
                                      onTap: () {
                                        controller.closeView(s.$1);
                                        context.go('/universities');
                                      },
                                    )),
                                    ListTile(
                                      leading: const Icon(Icons.arrow_forward),
                                      title: Text(context.l10n.searchUniversitiesCount),
                                      onTap: () {
                                        controller.closeView('');
                                        context.go('/universities');
                                      },
                                    ),
                                  ];
                                },
                              ),
                            )),
                            const SizedBox(height: 16),

                            // [3] CTA Buttons
                            _heroAnimated(3, Wrap(
                              spacing: 12,
                              runSpacing: 8,
                              alignment: WrapAlignment.center,
                              children: [
                                FilledButton.icon(
                                  onPressed: () => context.go('/register'),
                                  icon: const Icon(Icons.rocket_launch, size: 18),
                                  label: Text(context.l10n.heroStartFreeTrial),
                                  style: FilledButton.styleFrom(
                                    minimumSize: const Size(0, 40),
                                    padding: const EdgeInsets.symmetric(horizontal: 24),
                                  ),
                                ),
                                OutlinedButton.icon(
                                  onPressed: () => context.go('/universities'),
                                  icon: const Icon(Icons.play_circle_outline, size: 18),
                                  label: Text(context.l10n.heroTakeATour),
                                  style: OutlinedButton.styleFrom(
                                    minimumSize: const Size(0, 40),
                                    padding: const EdgeInsets.symmetric(horizontal: 24),
                                  ),
                                ),
                              ],
                            )),
                            const SizedBox(height: 12),

                            // [4] Stats
                            _heroAnimated(4, Wrap(
                              spacing: 12,
                              runSpacing: 8,
                              alignment: WrapAlignment.center,
                              children: [
                                _HeroStatCard(
                                  icon: Icons.verified_user,
                                  targetValue: 50,
                                  suffix: 'K+',
                                  label: context.l10n.homeNavActiveUsers,
                                ),
                                _HeroStatCard(
                                  icon: Icons.business,
                                  targetValue: 200,
                                  suffix: '+',
                                  label: context.l10n.homeNavInstitutions,
                                ),
                                _HeroStatCard(
                                  icon: Icons.public,
                                  targetValue: 20,
                                  suffix: '+',
                                  label: context.l10n.homeNavCountries,
                                ),
                              ],
                            )),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),

            // Find Your Path Feature Highlight
            Container(
              width: double.infinity,
              margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                  colors: [
                    AppColors.accent.withValues(alpha: 0.95),
                    AppColors.accentDark,
                    AppColors.primary,
                  ],
                ),
                borderRadius: BorderRadius.circular(16),
              ),
              child: Container(
                padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 16),
                child: Column(
                  children: [
                    // Badge + Icon row
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(Icons.school, size: 28, color: Colors.white),
                        const SizedBox(width: 8),
                        Container(
                          padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 2),
                          decoration: BoxDecoration(
                            color: Colors.white.withValues(alpha: 0.2),
                            borderRadius: BorderRadius.circular(12),
                          ),
                          child: Text(context.l10n.homeNavNew, style: TextStyle(color: Colors.white, fontSize: 10, fontWeight: FontWeight.bold)),
                        ),
                      ],
                    ),
                    const SizedBox(height: 6),
                    Text(
                      context.l10n.homeNavFindYourPath,
                      style: theme.textTheme.headlineSmall?.copyWith(
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                      textAlign: TextAlign.center,
                    ),
                    const SizedBox(height: 4),
                    Text(
                      context.l10n.homeNavFindYourPathDesc,
                      style: theme.textTheme.bodySmall?.copyWith(
                        color: Colors.white.withValues(alpha: 0.9),
                      ),
                      textAlign: TextAlign.center,
                    ),
                    const SizedBox(height: 10),

                    // Benefits
                    Wrap(
                      spacing: 8,
                      runSpacing: 6,
                      alignment: WrapAlignment.center,
                      children: [
                        _FindYourPathBenefit(
                          icon: Icons.lightbulb_outline,
                          text: context.l10n.homeNavPersonalizedRec,
                        ),
                        _FindYourPathBenefit(
                          icon: Icons.school_outlined,
                          text: context.l10n.homeNavTopUniversities,
                        ),
                        _FindYourPathBenefit(
                          icon: Icons.analytics_outlined,
                          text: context.l10n.homeNavSmartMatching,
                        ),
                      ],
                    ),
                    const SizedBox(height: 10),

                    // CTA Button
                    ElevatedButton.icon(
                      onPressed: () => context.go('/find-your-path'),
                      icon: const Icon(Icons.arrow_forward, size: 16),
                      label: Text(context.l10n.homeNavStartNow),
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.white,
                        foregroundColor: AppColors.primary,
                        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                        textStyle: const TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
                        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
                      ),
                    ),
                  ],
                ),
              ),
            ),

            // Key Features Section
            Container(
              width: double.infinity,
              padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 16),
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [
                    AppColors.surface,
                    AppColors.surfaceContainerHighest,
                  ],
                ),
              ),
              child: Column(
                children: [
                  Text(
                    context.l10n.homeNavPlatformFeatures,
                    style: theme.textTheme.titleLarge?.copyWith(
                      fontWeight: FontWeight.bold,
                      color: AppColors.primary,
                    ),
                  ),
                  const SizedBox(height: 12),
                  Wrap(
                    spacing: 12,
                    runSpacing: 12,
                    alignment: WrapAlignment.center,
                    children: [
                      _PlatformFeature(
                        icon: Icons.offline_bolt,
                        title: context.l10n.homeNavOfflineFirst,
                        description: context.l10n.homeNavOfflineFirstDesc,
                      ),
                      _PlatformFeature(
                        icon: Icons.payment,
                        title: context.l10n.homeNavMobileMoney,
                        description: context.l10n.homeNavMobileMoneyDesc,
                      ),
                      _PlatformFeature(
                        icon: Icons.language,
                        title: context.l10n.homeNavMultiLang,
                        description: context.l10n.homeNavMultiLangDesc,
                      ),
                      _PlatformFeature(
                        icon: Icons.security,
                        title: context.l10n.homeNavSecure,
                        description: context.l10n.homeNavSecureDesc,
                      ),
                      _PlatformFeature(
                        icon: Icons.phone_android,
                        title: context.l10n.homeNavUssd,
                        description: context.l10n.homeNavUssdDesc,
                      ),
                      _PlatformFeature(
                        icon: Icons.cloud_sync,
                        title: context.l10n.homeNavCloudSync,
                        description: context.l10n.homeNavCloudSyncDesc,
                      ),
                    ],
                  ),
                ],
              ),
            ),

            // How It Works Section
            Container(
              width: double.infinity,
              padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 16),
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [
                    AppColors.surfaceContainerHighest,
                    AppColors.surface,
                  ],
                ),
              ),
              child: Column(
                children: [
                  Text(
                    context.l10n.homeNavHowItWorks,
                    style: theme.textTheme.titleLarge?.copyWith(
                      fontWeight: FontWeight.bold,
                      color: AppColors.primary,
                    ),
                  ),
                  const SizedBox(height: 12),
                  Wrap(
                    spacing: 12,
                    runSpacing: 12,
                    alignment: WrapAlignment.center,
                    children: [
                      _HowItWorksStep(
                        step: '1',
                        icon: Icons.person_add,
                        title: context.l10n.homeNavCreateAccount,
                        description: context.l10n.homeNavCreateAccountDesc,
                      ),
                      _HowItWorksStep(
                        step: '2',
                        icon: Icons.dashboard,
                        title: context.l10n.homeNavAccessDashboard,
                        description: context.l10n.homeNavAccessDashboardDesc,
                      ),
                      _HowItWorksStep(
                        step: '3',
                        icon: Icons.explore,
                        title: context.l10n.homeNavExploreFeatures,
                        description: context.l10n.homeNavExploreFeaturesDesc,
                      ),
                      _HowItWorksStep(
                        step: '4',
                        icon: Icons.rocket_launch,
                        title: context.l10n.homeNavAchieveGoals,
                        description: context.l10n.homeNavAchieveGoalsDesc,
                      ),
                    ],
                  ),
                ],
              ),
            ),

            // Trusted Institutions Carousel
            const _TrustedInstitutionsRow(),

            // Testimonials Section
            Container(
              width: double.infinity,
              padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 16),
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                  colors: [
                    AppColors.surface,
                    AppColors.surfaceContainerHighest,
                    AppColors.surface,
                  ],
                ),
              ),
              child: Column(
                children: [
                  Text(
                    context.l10n.homeNavTrustedAcrossAfrica,
                    style: theme.textTheme.titleLarge?.copyWith(
                      fontWeight: FontWeight.bold,
                      color: AppColors.primary,
                    ),
                  ),
                  const SizedBox(height: 12),
                  Wrap(
                    spacing: 12,
                    runSpacing: 12,
                    alignment: WrapAlignment.center,
                    children: [
                      _TestimonialCard(
                        name: 'Amina Mensah',
                        role: context.l10n.homeNavTestimonialRole1,
                        quote: context.l10n.homeNavTestimonialQuote1,
                        avatarColor: AppColors.studentRole,
                      ),
                      _TestimonialCard(
                        name: 'Dr. Kwame Nkrumah',
                        role: context.l10n.homeNavTestimonialRole2,
                        quote: context.l10n.homeNavTestimonialQuote2,
                        avatarColor: AppColors.institutionRole,
                      ),
                      _TestimonialCard(
                        name: 'Sarah Okonkwo',
                        role: context.l10n.homeNavTestimonialRole3,
                        quote: context.l10n.homeNavTestimonialQuote3,
                        avatarColor: AppColors.parentRole,
                      ),
                    ],
                  ),
                ],
              ),
            ),

            // Account Types Section
            _AccountTypesSection(),

            // Final CTA Section
            Container(
              width: double.infinity,
              padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 16),
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                  colors: [
                    AppColors.primary.withValues(alpha: 0.08),
                    AppColors.secondary.withValues(alpha: 0.05),
                    AppColors.accent.withValues(alpha: 0.08),
                  ],
                ),
              ),
              child: Column(
                children: [
                  Text(
                    context.l10n.homeNavReadyToStart,
                    style: theme.textTheme.titleLarge?.copyWith(
                      fontWeight: FontWeight.bold,
                      color: AppColors.primary,
                    ),
                  ),
                  const SizedBox(height: 4),
                  Text(
                    context.l10n.homeNavJoinThousands,
                    style: theme.textTheme.bodySmall?.copyWith(color: AppColors.textSecondary),
                    textAlign: TextAlign.center,
                  ),
                  const SizedBox(height: 12),
                  Wrap(
                    spacing: 12,
                    runSpacing: 8,
                    alignment: WrapAlignment.center,
                    children: [
                      ElevatedButton.icon(
                        onPressed: () => context.go('/register'),
                        icon: const Icon(Icons.person_add, size: 16),
                        label: Text(context.l10n.homeNavSignUp),
                        style: ElevatedButton.styleFrom(
                          backgroundColor: AppColors.primary,
                          foregroundColor: AppColors.textOnPrimary,
                          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                          textStyle: const TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
                          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
                        ),
                      ),
                      OutlinedButton.icon(
                        onPressed: () => context.go('/login'),
                        icon: const Icon(Icons.login, size: 16),
                        label: Text(context.l10n.homeNavLogin),
                        style: OutlinedButton.styleFrom(
                          foregroundColor: AppColors.secondary,
                          side: BorderSide(color: AppColors.secondary, width: 1.5),
                          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                          textStyle: const TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
                          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),

            // Footer
            Container(
              width: double.infinity,
              padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 16),
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  colors: [AppColors.primaryDark, AppColors.primary],
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                ),
              ),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(Icons.school, color: AppColors.accent, size: 20),
                      const SizedBox(width: 6),
                      Text(context.l10n.homeNavFlowEdTech, style: theme.textTheme.titleMedium?.copyWith(color: AppColors.textOnPrimary, fontWeight: FontWeight.bold)),
                    ],
                  ),
                  const SizedBox(height: 8),
                  // Quick Links
                  Wrap(
                    spacing: 12,
                    runSpacing: 4,
                    alignment: WrapAlignment.center,
                    children: [
                      _FooterLink(label: context.l10n.homeNavAbout, onTap: () {}),
                      _FooterLink(label: context.l10n.homeNavContact, onTap: () {}),
                      _FooterLink(label: context.l10n.homeNavPrivacy, onTap: () {}),
                      _FooterLink(label: context.l10n.homeNavTerms, onTap: () {}),
                    ],
                  ),
                  const SizedBox(height: 8),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(context.l10n.homeNavCopyright, style: TextStyle(color: AppColors.textSecondary, fontSize: 10)),
                      InkWell(
                        onTap: _scrollToTop,
                        child: Row(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Icon(Icons.arrow_upward, size: 12, color: AppColors.accent),
                            const SizedBox(width: 4),
                            Text(context.l10n.homeNavTop, style: TextStyle(color: AppColors.accent, fontSize: 10)),
                          ],
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            ]),
          ),
        ],
      ),
    );
  }
}

class _HeroStatCard extends StatefulWidget {
  final IconData icon;
  final int targetValue;
  final String suffix;
  final String label;

  const _HeroStatCard({
    required this.icon,
    required this.targetValue,
    required this.suffix,
    required this.label,
  });

  @override
  State<_HeroStatCard> createState() => _HeroStatCardState();
}

class _HeroStatCardState extends State<_HeroStatCard>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<double> _animation;
  bool _hasAnimated = false;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      duration: const Duration(milliseconds: 1500),
      vsync: this,
    );
    _animation = Tween<double>(
      begin: 0,
      end: widget.targetValue.toDouble(),
    ).animate(CurvedAnimation(
      parent: _controller,
      curve: Curves.easeOutCubic,
    ));
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  void _onVisibilityChanged(bool isVisible) {
    if (isVisible && !_hasAnimated) {
      _hasAnimated = true;
      final reduceMotion = MediaQuery.of(context).disableAnimations;
      if (reduceMotion) {
        _controller.value = 1.0;
      } else {
        _controller.forward();
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return VisibilityDetector(
      onVisibilityChanged: _onVisibilityChanged,
      child: Card.filled(
        color: theme.colorScheme.surfaceContainerHighest,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Icon(widget.icon, size: 28, color: theme.colorScheme.primary),
              const SizedBox(height: 8),
              AnimatedBuilder(
                animation: _animation,
                builder: (context, child) {
                  return Text(
                    '${_animation.value.toInt()}${widget.suffix}',
                    style: theme.textTheme.displaySmall?.copyWith(
                      fontWeight: FontWeight.bold,
                      color: theme.colorScheme.onSurface,
                    ),
                  );
                },
              ),
              const SizedBox(height: 2),
              Text(
                widget.label,
                style: theme.textTheme.labelLarge?.copyWith(
                  color: theme.colorScheme.onSurfaceVariant,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}


class _FooterLink extends StatelessWidget {
  final String label;
  final VoidCallback onTap;

  const _FooterLink({
    required this.label,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Text(
        label,
        style: TextStyle(
          color: AppColors.textOnPrimary.withValues(alpha: 0.9),
          fontSize: 14,
          decoration: TextDecoration.underline,
        ),
      ),
    );
  }
}




class _PlatformFeature extends StatefulWidget {
  final IconData icon;
  final String title;
  final String description;

  const _PlatformFeature({
    required this.icon,
    required this.title,
    required this.description,
  });

  @override
  State<_PlatformFeature> createState() => _PlatformFeatureState();
}

class _PlatformFeatureState extends State<_PlatformFeature> {
  bool _isHovered = false;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final colorScheme = theme.colorScheme;

    return MouseRegion(
      onEnter: (_) => setState(() => _isHovered = true),
      onExit: (_) => setState(() => _isHovered = false),
      child: AnimatedContainer(
        duration: const Duration(milliseconds: 200),
        curve: Curves.easeOutCubic,
        transform: Matrix4.translationValues(0, _isHovered ? -4 : 0, 0),
        child: Card.elevated(
          elevation: _isHovered ? 3 : 1,
          clipBehavior: Clip.antiAlias,
          color: _isHovered
              ? Color.alphaBlend(
                  colorScheme.primary.withValues(alpha: 0.08),
                  colorScheme.surface,
                )
              : colorScheme.surface,
          child: InkResponse(
            onTap: () {},
            splashFactory: InkSparkle.splashFactory,
            child: SizedBox(
              width: 160,
              child: Padding(
                padding: const EdgeInsets.all(12),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Container(
                      width: 56,
                      height: 56,
                      decoration: BoxDecoration(
                        color: colorScheme.primaryContainer,
                        shape: BoxShape.circle,
                      ),
                      child: Icon(
                        widget.icon,
                        size: 24,
                        color: colorScheme.onPrimaryContainer,
                      ),
                    ),
                    const SizedBox(height: 8),
                    Text(
                      widget.title,
                      style: theme.textTheme.titleMedium?.copyWith(
                        color: colorScheme.onSurface,
                      ),
                      textAlign: TextAlign.center,
                    ),
                    const SizedBox(height: 4),
                    Text(
                      widget.description,
                      style: theme.textTheme.bodyMedium?.copyWith(
                        color: colorScheme.onSurfaceVariant,
                      ),
                      textAlign: TextAlign.center,
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class _HowItWorksStep extends StatelessWidget {
  final String step;
  final IconData icon;
  final String title;
  final String description;

  const _HowItWorksStep({
    required this.step,
    required this.icon,
    required this.title,
    required this.description,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 150,
      padding: const EdgeInsets.all(10),
      decoration: BoxDecoration(
        color: AppColors.surface,
        borderRadius: BorderRadius.circular(12),
        border: Border.all(color: AppColors.primary.withValues(alpha: 0.2), width: 1),
      ),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                width: 24,
                height: 24,
                decoration: BoxDecoration(color: AppColors.accent, shape: BoxShape.circle),
                alignment: Alignment.center,
                child: Text(step, style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 12)),
              ),
              const SizedBox(width: 6),
              Icon(icon, size: 20, color: AppColors.primary),
            ],
          ),
          const SizedBox(height: 6),
          Text(title, style: TextStyle(fontWeight: FontWeight.bold, color: AppColors.primary, fontSize: 12), textAlign: TextAlign.center),
          const SizedBox(height: 2),
          Text(description, style: TextStyle(color: AppColors.textSecondary, fontSize: 10), textAlign: TextAlign.center, maxLines: 2, overflow: TextOverflow.ellipsis),
        ],
      ),
    );
  }
}

class _TestimonialCard extends StatelessWidget {
  final String name;
  final String role;
  final String quote;
  final Color avatarColor;

  const _TestimonialCard({
    required this.name,
    required this.role,
    required this.quote,
    required this.avatarColor,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 200,
      padding: const EdgeInsets.all(10),
      decoration: BoxDecoration(
        color: AppColors.surface,
        borderRadius: BorderRadius.circular(12),
        border: Border.all(color: avatarColor.withValues(alpha: 0.2), width: 1),
      ),
      child: Column(
        children: [
          Row(
            children: [
              CircleAvatar(
                radius: 16,
                backgroundColor: avatarColor,
                child: Text(name.split(' ').map((n) => n[0]).take(2).join(), style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 11)),
              ),
              const SizedBox(width: 8),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(name, style: TextStyle(fontWeight: FontWeight.bold, fontSize: 11)),
                    Text(role, style: TextStyle(color: avatarColor, fontSize: 9)),
                  ],
                ),
              ),
            ],
          ),
          const SizedBox(height: 6),
          Row(mainAxisAlignment: MainAxisAlignment.center, children: List.generate(5, (i) => Icon(Icons.star, size: 12, color: AppColors.accent))),
          const SizedBox(height: 6),
          Text('"$quote"', style: TextStyle(color: AppColors.textSecondary, fontStyle: FontStyle.italic, fontSize: 10), textAlign: TextAlign.center, maxLines: 3, overflow: TextOverflow.ellipsis),
        ],
      ),
    );
  }
}

class _AccountTypesSection extends StatefulWidget {
  const _AccountTypesSection();

  @override
  State<_AccountTypesSection> createState() => _AccountTypesSectionState();
}

class _AccountTypesSectionState extends State<_AccountTypesSection>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 5, vsync: this);
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Container(
      width: double.infinity,
      padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 16),
      child: Column(
        children: [
          Text(context.l10n.homeNavWhoCanUse, style: theme.textTheme.titleLarge?.copyWith(fontWeight: FontWeight.bold, color: AppColors.primary)),
          const SizedBox(height: 10),

          // Tab Navigation
          Container(
            decoration: BoxDecoration(color: AppColors.surfaceContainerHighest, borderRadius: BorderRadius.circular(8)),
            child: TabBar(
              controller: _tabController,
              isScrollable: true,
              labelColor: AppColors.textOnPrimary,
              unselectedLabelColor: AppColors.textSecondary,
              indicator: BoxDecoration(gradient: LinearGradient(colors: [AppColors.primary, AppColors.primaryDark]), borderRadius: BorderRadius.circular(6)),
              dividerColor: Colors.transparent,
              padding: const EdgeInsets.all(4),
              labelPadding: const EdgeInsets.symmetric(horizontal: 12),
              tabs: [
                Tab(icon: Icon(Icons.school, size: 16), text: context.l10n.homeNavStudents),
                Tab(icon: Icon(Icons.business, size: 16), text: context.l10n.homeNavInstitutions),
                Tab(icon: Icon(Icons.family_restroom, size: 16), text: context.l10n.homeNavParents),
                Tab(icon: Icon(Icons.psychology, size: 16), text: context.l10n.homeNavCounselors),
                Tab(icon: Icon(Icons.rate_review, size: 16), text: context.l10n.homeNavRecommenders),
              ],
            ),
          ),
          const SizedBox(height: 12),

          // Tab Content
          SizedBox(
            height: 350,
            child: TabBarView(
              controller: _tabController,
              children: [
                _AccountTypeDetails(
                  icon: Icons.school,
                  title: context.l10n.homeNavForStudents,
                  subtitle: context.l10n.homeNavForStudentsSubtitle,
                  color: AppColors.studentRole,
                  description: context.l10n.homeNavForStudentsDesc,
                  features: [
                    _FeatureItem(icon: Icons.book, title: context.l10n.homeNavCourseAccess, description: context.l10n.homeNavCourseAccessDesc),
                    _FeatureItem(icon: Icons.assignment, title: context.l10n.homeNavAppManagement, description: context.l10n.homeNavAppManagementDesc),
                    _FeatureItem(icon: Icons.bar_chart, title: context.l10n.homeNavProgressTracking, description: context.l10n.homeNavProgressTrackingDesc),
                    _FeatureItem(icon: Icons.description, title: context.l10n.homeNavDocManagement, description: context.l10n.homeNavDocManagementDesc),
                    _FeatureItem(icon: Icons.payment, title: context.l10n.homeNavEasyPayments, description: context.l10n.homeNavEasyPaymentsDesc),
                    _FeatureItem(icon: Icons.offline_bolt, title: context.l10n.homeNavOfflineAccess, description: context.l10n.homeNavOfflineAccessDesc),
                  ],
                ),
                _AccountTypeDetails(
                  icon: Icons.business,
                  title: context.l10n.homeNavForInstitutions,
                  subtitle: context.l10n.homeNavForInstitutionsSubtitle,
                  color: AppColors.institutionRole,
                  description: context.l10n.homeNavForInstitutionsDesc,
                  features: [
                    _FeatureItem(icon: Icons.people, title: context.l10n.homeNavApplicantMgmt, description: context.l10n.homeNavApplicantMgmtDesc),
                    _FeatureItem(icon: Icons.school, title: context.l10n.homeNavProgramMgmt, description: context.l10n.homeNavProgramMgmtDesc),
                    _FeatureItem(icon: Icons.analytics, title: context.l10n.homeNavAnalyticsDash, description: context.l10n.homeNavAnalyticsDashDesc),
                    _FeatureItem(icon: Icons.message, title: context.l10n.homeNavCommHub, description: context.l10n.homeNavCommHubDesc),
                    _FeatureItem(icon: Icons.verified, title: context.l10n.homeNavDocVerification, description: context.l10n.homeNavDocVerificationDesc),
                    _FeatureItem(icon: Icons.account_balance, title: context.l10n.homeNavFinancialMgmt, description: context.l10n.homeNavFinancialMgmtDesc),
                  ],
                ),
                _AccountTypeDetails(
                  icon: Icons.family_restroom,
                  title: context.l10n.homeNavForParents,
                  subtitle: context.l10n.homeNavForParentsSubtitle,
                  color: AppColors.parentRole,
                  description: context.l10n.homeNavForParentsDesc,
                  features: [
                    _FeatureItem(icon: Icons.bar_chart, title: context.l10n.homeNavProgressMonitoring, description: context.l10n.homeNavProgressMonitoringDesc),
                    _FeatureItem(icon: Icons.notifications, title: context.l10n.homeNavRealtimeUpdates, description: context.l10n.homeNavRealtimeUpdatesDesc),
                    _FeatureItem(icon: Icons.chat, title: context.l10n.homeNavTeacherComm, description: context.l10n.homeNavTeacherCommDesc),
                    _FeatureItem(icon: Icons.payment, title: context.l10n.homeNavFeeMgmt, description: context.l10n.homeNavFeeMgmtDesc),
                    _FeatureItem(icon: Icons.calendar_today, title: context.l10n.homeNavScheduleAccess, description: context.l10n.homeNavScheduleAccessDesc),
                    _FeatureItem(icon: Icons.report, title: context.l10n.homeNavReportCards, description: context.l10n.homeNavReportCardsDesc),
                  ],
                ),
                _AccountTypeDetails(
                  icon: Icons.psychology,
                  title: context.l10n.homeNavForCounselors,
                  subtitle: context.l10n.homeNavForCounselorsSubtitle,
                  color: AppColors.counselorRole,
                  description: context.l10n.homeNavForCounselorsDesc,
                  features: [
                    _FeatureItem(icon: Icons.calendar_month, title: context.l10n.homeNavSessionMgmt, description: context.l10n.homeNavSessionMgmtDesc),
                    _FeatureItem(icon: Icons.people, title: context.l10n.homeNavStudentPortfolio, description: context.l10n.homeNavStudentPortfolioDesc),
                    _FeatureItem(icon: Icons.task, title: context.l10n.homeNavActionPlans, description: context.l10n.homeNavActionPlansDesc),
                    _FeatureItem(icon: Icons.school, title: context.l10n.homeNavCollegeGuidance, description: context.l10n.homeNavCollegeGuidanceDesc),
                    _FeatureItem(icon: Icons.assessment, title: context.l10n.homeNavCareerAssessment, description: context.l10n.homeNavCareerAssessmentDesc),
                    _FeatureItem(icon: Icons.handshake, title: context.l10n.homeNavParentCollab, description: context.l10n.homeNavParentCollabDesc),
                  ],
                ),
                _AccountTypeDetails(
                  icon: Icons.rate_review,
                  title: context.l10n.homeNavForRecommenders,
                  subtitle: context.l10n.homeNavForRecommendersSubtitle,
                  color: AppColors.recommenderRole,
                  description: context.l10n.homeNavForRecommendersDesc,
                  features: [
                    _FeatureItem(icon: Icons.edit_document, title: context.l10n.homeNavLetterMgmt, description: context.l10n.homeNavLetterMgmtDesc),
                    _FeatureItem(icon: Icons.send, title: context.l10n.homeNavEasySubmission, description: context.l10n.homeNavEasySubmissionDesc),
                    _FeatureItem(icon: Icons.assignment_turned_in, title: context.l10n.homeNavRequestTracking, description: context.l10n.homeNavRequestTrackingDesc),
                    _FeatureItem(icon: Icons.history, title: context.l10n.homeNavLetterTemplates, description: context.l10n.homeNavLetterTemplatesDesc),
                    _FeatureItem(icon: Icons.verified_user, title: context.l10n.homeNavDigitalSignature, description: context.l10n.homeNavDigitalSignatureDesc),
                    _FeatureItem(icon: Icons.timeline, title: context.l10n.homeNavStudentHistory, description: context.l10n.homeNavStudentHistoryDesc),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class _AccountTypeDetails extends StatelessWidget {
  final IconData icon;
  final String title;
  final String subtitle;
  final Color color;
  final String description;
  final List<_FeatureItem> features;

  const _AccountTypeDetails({
    required this.icon,
    required this.title,
    required this.subtitle,
    required this.color,
    required this.description,
    required this.features,
  });

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          // Header
          Container(
            padding: const EdgeInsets.all(12),
            decoration: BoxDecoration(
              color: color.withValues(alpha: 0.1),
              borderRadius: BorderRadius.circular(10),
            ),
            child: Row(
              children: [
                Icon(icon, size: 28, color: color),
                const SizedBox(width: 10),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(title, style: TextStyle(fontWeight: FontWeight.bold, color: color, fontSize: 16)),
                      Text(subtitle, style: TextStyle(color: AppColors.textSecondary, fontSize: 11, fontStyle: FontStyle.italic)),
                    ],
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(height: 10),

          // Features Grid
          Wrap(
            spacing: 8,
            runSpacing: 8,
            alignment: WrapAlignment.center,
            children: features.take(4).map((feature) {
              return Container(
                width: 150,
                padding: const EdgeInsets.all(8),
                decoration: BoxDecoration(
                  color: AppColors.surface,
                  borderRadius: BorderRadius.circular(8),
                  border: Border.all(color: color.withValues(alpha: 0.2)),
                ),
                child: Row(
                  children: [
                    Icon(feature.icon, color: color, size: 16),
                    const SizedBox(width: 6),
                    Expanded(child: Text(feature.title, style: TextStyle(fontSize: 10, fontWeight: FontWeight.w500), maxLines: 1, overflow: TextOverflow.ellipsis)),
                  ],
                ),
              );
            }).toList(),
          ),
          const SizedBox(height: 12),

          // CTA Button
          ElevatedButton(
            onPressed: () => context.go('/register'),
            child: Text(context.l10n.homeNavGetStartedAs(title.replaceAll(context.l10n.homeNavForPrefix, ''))),
            style: ElevatedButton.styleFrom(
              backgroundColor: color,
              foregroundColor: AppColors.textOnPrimary,
              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
              textStyle: const TextStyle(fontSize: 12, fontWeight: FontWeight.bold),
            ),
          ),
        ],
      ),
    );
  }
}

class _FeatureItem {
  final IconData icon;
  final String title;
  final String description;

  const _FeatureItem({
    required this.icon,
    required this.title,
    required this.description,
  });
}


class _LanguageToggle extends ConsumerWidget {
  const _LanguageToggle();

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final locale = ref.watch(localeProvider);

    return SegmentedButton<String>(
      segments: const [
        ButtonSegment(value: 'en', label: Text('EN')),
        ButtonSegment(value: 'fr', label: Text('FR')),
      ],
      selected: {locale.languageCode},
      onSelectionChanged: (selected) {
        ref.read(localeProvider.notifier).setLocale(Locale(selected.first));
      },
      showSelectedIcon: true,
      style: const ButtonStyle(
        visualDensity: VisualDensity.compact,
        tapTargetSize: MaterialTapTargetSize.shrinkWrap,
      ),
    );
  }
}

class _ThemeToggle extends ConsumerWidget {
  const _ThemeToggle();

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final themeMode = ref.watch(appearanceProvider).themeMode;
    final platformBrightness = MediaQuery.platformBrightnessOf(context);
    final effectivelyDark = themeMode == ThemeMode.dark ||
        (themeMode == ThemeMode.system && platformBrightness == Brightness.dark);

    return Container(
      decoration: BoxDecoration(
        color: Theme.of(context).colorScheme.surfaceContainerHighest,
        shape: BoxShape.circle,
      ),
      child: IconButton(
        icon: AnimatedSwitcher(
          duration: const Duration(milliseconds: 300),
          transitionBuilder: (child, animation) {
            return RotationTransition(
              turns: Tween(begin: 0.75, end: 1.0).animate(animation),
              child: FadeTransition(opacity: animation, child: child),
            );
          },
          child: Icon(
            effectivelyDark ? Icons.light_mode_rounded : Icons.dark_mode_rounded,
            key: ValueKey(effectivelyDark),
            size: 20,
            color: Theme.of(context).colorScheme.onSurfaceVariant,
          ),
        ),
        onPressed: () {
          ref.read(appearanceProvider.notifier).setThemeMode(
            effectivelyDark ? ThemeMode.light : ThemeMode.dark,
          );
        },
        tooltip: effectivelyDark ? 'Switch to light mode' : 'Switch to dark mode',
        padding: const EdgeInsets.all(8),
        constraints: const BoxConstraints(),
      ),
    );
  }
}

class _FindYourPathBenefit extends StatelessWidget {
  final IconData icon;
  final String text;

  const _FindYourPathBenefit({
    required this.icon,
    required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
      decoration: BoxDecoration(
        color: Colors.white.withValues(alpha: 0.15),
        borderRadius: BorderRadius.circular(8),
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Icon(icon, color: Colors.white, size: 12),
          const SizedBox(width: 4),
          Text(text, style: TextStyle(color: Colors.white, fontWeight: FontWeight.w500, fontSize: 10)),
        ],
      ),
    );
  }
}

class _CircleSpec {
  final Offset center;
  final double radius;
  final Color color;

  const _CircleSpec({required this.center, required this.radius, required this.color});
}

class _MeshGradientPainter extends CustomPainter {
  final double animationValue;
  final Color primary;
  final Color secondary;
  final Color tertiary;

  _MeshGradientPainter({
    required this.animationValue,
    required this.primary,
    required this.secondary,
    required this.tertiary,
  });

  @override
  void paint(Canvas canvas, Size size) {
    final double t = animationValue * 2 * math.pi;

    final circles = [
      _CircleSpec(
        center: Offset(
          size.width * (0.2 + 0.1 * math.sin(t)),
          size.height * (0.3 + 0.1 * math.cos(t * 0.7)),
        ),
        radius: size.width * 0.35,
        color: primary.withValues(alpha: 0.1),
      ),
      _CircleSpec(
        center: Offset(
          size.width * (0.8 + 0.1 * math.cos(t * 1.3)),
          size.height * (0.2 + 0.1 * math.sin(t * 0.9)),
        ),
        radius: size.width * 0.3,
        color: secondary.withValues(alpha: 0.1),
      ),
      _CircleSpec(
        center: Offset(
          size.width * (0.5 + 0.15 * math.sin(t * 0.6)),
          size.height * (0.7 + 0.1 * math.cos(t * 1.1)),
        ),
        radius: size.width * 0.4,
        color: tertiary.withValues(alpha: 0.1),
      ),
      _CircleSpec(
        center: Offset(
          size.width * (0.7 + 0.1 * math.cos(t * 0.8)),
          size.height * (0.6 + 0.1 * math.sin(t * 1.4)),
        ),
        radius: size.width * 0.25,
        color: primary.withValues(alpha: 0.08),
      ),
    ];

    for (final circle in circles) {
      final paint = Paint()
        ..shader = RadialGradient(
          colors: [circle.color, circle.color.withValues(alpha: 0)],
          stops: const [0.0, 1.0],
        ).createShader(
          Rect.fromCircle(center: circle.center, radius: circle.radius),
        );
      canvas.drawCircle(circle.center, circle.radius, paint);
    }
  }

  @override
  bool shouldRepaint(_MeshGradientPainter oldDelegate) {
    return oldDelegate.animationValue != animationValue;
  }
}

class _TrustedInstitutionsRow extends StatefulWidget {
  const _TrustedInstitutionsRow();

  @override
  State<_TrustedInstitutionsRow> createState() =>
      _TrustedInstitutionsRowState();
}

class _TrustedInstitutionsRowState extends State<_TrustedInstitutionsRow>
    with SingleTickerProviderStateMixin {
  late AnimationController _shimmerController;
  bool _loaded = false;

  @override
  void initState() {
    super.initState();
    _shimmerController = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 1500),
    )..repeat();
    // Simulate brief data-load delay, then reveal real tiles
    Future.delayed(const Duration(milliseconds: 800), () {
      if (mounted) {
        setState(() => _loaded = true);
        _shimmerController.stop();
      }
    });
  }

  @override
  void dispose() {
    _shimmerController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final partners = PartnerUniversities.all;

    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            context.l10n.socialProofTitle,
            style: theme.textTheme.titleSmall?.copyWith(
              color: theme.colorScheme.onSurfaceVariant,
            ),
          ),
          const SizedBox(height: 12),
          SizedBox(
            height: 100,
            child: _loaded
                ? ListView.separated(
                    scrollDirection: Axis.horizontal,
                    clipBehavior: Clip.none,
                    itemCount: partners.length,
                    separatorBuilder: (_, __) => const SizedBox(width: 12),
                    itemBuilder: (context, index) {
                      final partner = partners[index];
                      return _InstitutionTile(partner: partner);
                    },
                  )
                : AnimatedBuilder(
                    animation: _shimmerController,
                    builder: (context, _) {
                      return ListView.separated(
                        scrollDirection: Axis.horizontal,
                        clipBehavior: Clip.none,
                        physics: const NeverScrollableScrollPhysics(),
                        itemCount: 4,
                        separatorBuilder: (_, __) =>
                            const SizedBox(width: 12),
                        itemBuilder: (context, index) {
                          return _ShimmerTile(
                            animationValue: _shimmerController.value,
                          );
                        },
                      );
                    },
                  ),
          ),
        ],
      ),
    );
  }
}

class _InstitutionTile extends StatelessWidget {
  final UniversityPartner partner;

  const _InstitutionTile({required this.partner});

  String _countryFlag(String country) {
    const flags = {
      'Ghana': '🇬🇭',
      'Kenya': '🇰🇪',
      'Nigeria': '🇳🇬',
      'South Africa': '🇿🇦',
      'Uganda': '🇺🇬',
    };
    return flags[country] ?? '🌍';
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final colorScheme = theme.colorScheme;
    final initials = partner.name
        .split(' ')
        .where((w) => w.isNotEmpty && w[0] == w[0].toUpperCase())
        .map((w) => w[0])
        .take(2)
        .join();

    return Card.outlined(
      clipBehavior: Clip.antiAlias,
      child: InkResponse(
        onTap: () {},
        splashFactory: InkSparkle.splashFactory,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
          child: Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              // Avatar with flag overlay
              SizedBox(
                width: 48,
                height: 48,
                child: Stack(
                  clipBehavior: Clip.none,
                  children: [
                    CircleAvatar(
                      radius: 24,
                      backgroundColor: colorScheme.tertiaryContainer,
                      child: Text(
                        initials,
                        style: theme.textTheme.titleMedium?.copyWith(
                          color: colorScheme.onTertiaryContainer,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    Positioned(
                      bottom: -2,
                      right: -2,
                      child: Text(
                        _countryFlag(partner.country),
                        style: const TextStyle(fontSize: 16),
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(width: 12),
              Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    partner.name,
                    style: theme.textTheme.labelLarge?.copyWith(
                      color: colorScheme.onSurface,
                    ),
                  ),
                  Text(
                    partner.country,
                    style: theme.textTheme.bodySmall?.copyWith(
                      color: colorScheme.onSurfaceVariant,
                    ),
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

class _ShimmerTile extends StatelessWidget {
  final double animationValue;

  const _ShimmerTile({required this.animationValue});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final colorScheme = theme.colorScheme;
    final baseColor = colorScheme.surfaceContainerHighest;
    final highlightColor = colorScheme.surfaceContainerLow;

    return SizedBox(
      width: 200,
      child: Card.outlined(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
          child: Row(
            children: [
              // Shimmer circle
              Container(
                width: 48,
                height: 48,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  gradient: LinearGradient(
                    begin: Alignment(-1.0 + 2.0 * animationValue, 0),
                    end: Alignment(-0.5 + 2.0 * animationValue, 0),
                    colors: [baseColor, highlightColor, baseColor],
                  ),
                ),
              ),
              const SizedBox(width: 12),
              Expanded(
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      height: 14,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(4),
                        gradient: LinearGradient(
                          begin: Alignment(-1.0 + 2.0 * animationValue, 0),
                          end: Alignment(-0.5 + 2.0 * animationValue, 0),
                          colors: [baseColor, highlightColor, baseColor],
                        ),
                      ),
                    ),
                    const SizedBox(height: 6),
                    Container(
                      height: 10,
                      width: 60,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(4),
                        gradient: LinearGradient(
                          begin: Alignment(-1.0 + 2.0 * animationValue, 0),
                          end: Alignment(-0.5 + 2.0 * animationValue, 0),
                          colors: [baseColor, highlightColor, baseColor],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
