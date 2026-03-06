import 'package:go_router/go_router.dart';
import '../../features/authentication/presentation/screens/login_screen.dart';
import '../../features/authentication/presentation/screens/register_screen.dart';
import '../../features/authentication/presentation/screens/forgot_password_screen.dart';
import '../../features/authentication/presentation/screens/email_verification_screen.dart';
import '../../features/authentication/presentation/screens/onboarding_screen.dart';
import '../../features/authentication/presentation/screens/biometric_setup_screen.dart';
import '../../features/home/presentation/modern_home_screen.dart';
import '../../features/shared/widgets/public_shell.dart';
// Footer pages
import '../../features/home/presentation/pages/about_page.dart';
import '../../features/home/presentation/pages/contact_page.dart';
import '../../features/home/presentation/pages/privacy_page.dart';
import '../../features/home/presentation/pages/terms_page.dart';
import '../../features/home/presentation/pages/careers_page.dart';
import '../../features/home/presentation/pages/press_page.dart';
import '../../features/home/presentation/pages/partners_page.dart';
import '../../features/home/presentation/pages/help_center_page.dart';
import '../../features/home/presentation/pages/docs_page.dart';
import '../../features/home/presentation/pages/api_docs_page.dart';
import '../../features/home/presentation/pages/community_page.dart';
import '../../features/home/presentation/pages/blog_page.dart';
import '../../features/home/presentation/pages/compliance_page.dart';
import '../../features/home/presentation/pages/cookies_page.dart';
import '../../features/home/presentation/pages/data_protection_page.dart';
import '../../features/home/presentation/pages/mobile_apps_page.dart';
import '../transitions/instant_page.dart';
import '../transitions/shared_axis_page.dart';

/// Authentication and public routes
List<RouteBase> authRoutes = [
  // Home route — uses NoTransitionPage (zero-duration, no compositing).
  // InstantPage was replaced because its `animation.isDismissed` check
  // returns SizedBox.shrink() on the first frame, delaying the child's
  // mount by one frame and causing rendering artifacts on CanvasKit.
  GoRoute(
    path: '/',
    name: 'home',
    pageBuilder: (context, state) => NoTransitionPage(
      key: state.pageKey,
      child: const ModernHomeScreen(),
    ),
  ),

  // Authentication routes — no navbar needed
  GoRoute(
    path: '/login',
    name: 'login',
    pageBuilder: (context, state) => SharedAxisPage(
      key: state.pageKey,
      child: const LoginScreen(),
    ),
  ),
  GoRoute(
    path: '/register',
    name: 'register',
    pageBuilder: (context, state) => SharedAxisPage(
      key: state.pageKey,
      child: const RegisterScreen(),
    ),
  ),
  GoRoute(
    path: '/forgot-password',
    name: 'forgot-password',
    pageBuilder: (context, state) => SharedAxisPage(
      key: state.pageKey,
      child: const ForgotPasswordScreen(),
    ),
  ),
  GoRoute(
    path: '/email-verification',
    name: 'email-verification',
    pageBuilder: (context, state) {
      final email = state.uri.queryParameters['email'] ?? '';
      return SharedAxisPage(
        key: state.pageKey,
        child: EmailVerificationScreen(
          email: email,
          onVerified: () {
            // Navigate to onboarding after verification
            context.go('/onboarding');
          },
        ),
      );
    },
  ),
  GoRoute(
    path: '/onboarding',
    name: 'onboarding',
    pageBuilder: (context, state) => SharedAxisPage(
      key: state.pageKey,
      child: const OnboardingScreen(),
    ),
  ),
  GoRoute(
    path: '/biometric-setup',
    name: 'biometric-setup',
    pageBuilder: (context, state) {
      final isSetup = state.uri.queryParameters['setup'] == 'true';
      return SharedAxisPage(
        key: state.pageKey,
        child: BiometricSetupScreen(isSetup: isSetup),
      );
    },
  ),

  // Public sub-pages — InstantPage + inline PublicShell (no ShellRoute).
  GoRoute(
    path: '/about',
    name: 'about',
    pageBuilder: (context, state) => InstantPage(
      key: state.pageKey,
      child: const PublicShell(child: AboutPage()),
    ),
  ),
  GoRoute(
    path: '/contact',
    name: 'contact',
    pageBuilder: (context, state) => InstantPage(
      key: state.pageKey,
      child: const PublicShell(child: ContactPage()),
    ),
  ),
  GoRoute(
    path: '/privacy',
    name: 'privacy',
    pageBuilder: (context, state) => InstantPage(
      key: state.pageKey,
      child: const PublicShell(child: PrivacyPage()),
    ),
  ),
  GoRoute(
    path: '/terms',
    name: 'terms',
    pageBuilder: (context, state) => InstantPage(
      key: state.pageKey,
      child: const PublicShell(child: TermsPage()),
    ),
  ),
  GoRoute(
    path: '/careers',
    name: 'careers',
    pageBuilder: (context, state) => InstantPage(
      key: state.pageKey,
      child: const PublicShell(child: CareersPage()),
    ),
  ),
  GoRoute(
    path: '/press',
    name: 'press',
    pageBuilder: (context, state) => InstantPage(
      key: state.pageKey,
      child: const PublicShell(child: PressPage()),
    ),
  ),
  GoRoute(
    path: '/partners',
    name: 'partners',
    pageBuilder: (context, state) => InstantPage(
      key: state.pageKey,
      child: const PublicShell(child: PartnersPage()),
    ),
  ),
  GoRoute(
    path: '/help',
    name: 'help',
    pageBuilder: (context, state) => InstantPage(
      key: state.pageKey,
      child: const PublicShell(child: HelpCenterPage()),
    ),
  ),
  GoRoute(
    path: '/docs',
    name: 'docs',
    pageBuilder: (context, state) => InstantPage(
      key: state.pageKey,
      child: const PublicShell(child: DocsPage()),
    ),
  ),
  GoRoute(
    path: '/api-docs',
    name: 'api-docs',
    pageBuilder: (context, state) => InstantPage(
      key: state.pageKey,
      child: const PublicShell(child: ApiDocsPage()),
    ),
  ),
  GoRoute(
    path: '/community',
    name: 'community',
    pageBuilder: (context, state) => InstantPage(
      key: state.pageKey,
      child: const PublicShell(child: CommunityPage()),
    ),
  ),
  GoRoute(
    path: '/blog',
    name: 'blog',
    pageBuilder: (context, state) => InstantPage(
      key: state.pageKey,
      child: const PublicShell(child: BlogPage()),
    ),
  ),
  GoRoute(
    path: '/compliance',
    name: 'compliance',
    pageBuilder: (context, state) => InstantPage(
      key: state.pageKey,
      child: const PublicShell(child: CompliancePage()),
    ),
  ),
  GoRoute(
    path: '/cookies',
    name: 'cookies',
    pageBuilder: (context, state) => InstantPage(
      key: state.pageKey,
      child: const PublicShell(child: CookiesPage()),
    ),
  ),
  GoRoute(
    path: '/data-protection',
    name: 'data-protection',
    pageBuilder: (context, state) => InstantPage(
      key: state.pageKey,
      child: const PublicShell(child: DataProtectionPage()),
    ),
  ),
  GoRoute(
    path: '/mobile-apps',
    name: 'mobile-apps',
    pageBuilder: (context, state) => InstantPage(
      key: state.pageKey,
      child: const PublicShell(child: MobileAppsPage()),
    ),
  ),
];
