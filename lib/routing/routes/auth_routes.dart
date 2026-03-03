import 'package:flutter/widgets.dart';
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
import '../transitions/shared_axis_page.dart';

/// Authentication and public routes
List<RouteBase> authRoutes = [
  // Home route — has its own custom AppBar, stays outside the shell.
  // Uses a simple fade (not SharedAxisTransition) to avoid the
  // secondaryAnimation getting stuck when navigating from a ShellRoute
  // child (e.g. /universities) back to this top-level route.
  GoRoute(
    path: '/',
    name: 'home',
    pageBuilder: (context, state) => CustomTransitionPage(
      key: state.pageKey,
      child: const ModernHomeScreen(),
      transitionDuration: const Duration(milliseconds: 300),
      reverseTransitionDuration: const Duration(milliseconds: 250),
      transitionsBuilder: (context, animation, secondaryAnimation, child) {
        return FadeTransition(
          opacity: CurveTween(curve: Curves.easeOutCubic).animate(animation),
          child: child,
        );
      },
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

  // Public sub-pages wrapped in PublicShell for consistent navigation
  ShellRoute(
    builder: (context, state, child) => PublicShell(child: child),
    routes: [
      GoRoute(
        path: '/about',
        name: 'about',
        pageBuilder: (context, state) => SharedAxisPage(
          key: state.pageKey,
          child: const AboutPage(),
        ),
      ),
      GoRoute(
        path: '/contact',
        name: 'contact',
        pageBuilder: (context, state) => SharedAxisPage(
          key: state.pageKey,
          child: const ContactPage(),
        ),
      ),
      GoRoute(
        path: '/privacy',
        name: 'privacy',
        pageBuilder: (context, state) => SharedAxisPage(
          key: state.pageKey,
          child: const PrivacyPage(),
        ),
      ),
      GoRoute(
        path: '/terms',
        name: 'terms',
        pageBuilder: (context, state) => SharedAxisPage(
          key: state.pageKey,
          child: const TermsPage(),
        ),
      ),
      GoRoute(
        path: '/careers',
        name: 'careers',
        pageBuilder: (context, state) => SharedAxisPage(
          key: state.pageKey,
          child: const CareersPage(),
        ),
      ),
      GoRoute(
        path: '/press',
        name: 'press',
        pageBuilder: (context, state) => SharedAxisPage(
          key: state.pageKey,
          child: const PressPage(),
        ),
      ),
      GoRoute(
        path: '/partners',
        name: 'partners',
        pageBuilder: (context, state) => SharedAxisPage(
          key: state.pageKey,
          child: const PartnersPage(),
        ),
      ),
      GoRoute(
        path: '/help',
        name: 'help',
        pageBuilder: (context, state) => SharedAxisPage(
          key: state.pageKey,
          child: const HelpCenterPage(),
        ),
      ),
      GoRoute(
        path: '/docs',
        name: 'docs',
        pageBuilder: (context, state) => SharedAxisPage(
          key: state.pageKey,
          child: const DocsPage(),
        ),
      ),
      GoRoute(
        path: '/api-docs',
        name: 'api-docs',
        pageBuilder: (context, state) => SharedAxisPage(
          key: state.pageKey,
          child: const ApiDocsPage(),
        ),
      ),
      GoRoute(
        path: '/community',
        name: 'community',
        pageBuilder: (context, state) => SharedAxisPage(
          key: state.pageKey,
          child: const CommunityPage(),
        ),
      ),
      GoRoute(
        path: '/blog',
        name: 'blog',
        pageBuilder: (context, state) => SharedAxisPage(
          key: state.pageKey,
          child: const BlogPage(),
        ),
      ),
      GoRoute(
        path: '/compliance',
        name: 'compliance',
        pageBuilder: (context, state) => SharedAxisPage(
          key: state.pageKey,
          child: const CompliancePage(),
        ),
      ),
      GoRoute(
        path: '/cookies',
        name: 'cookies',
        pageBuilder: (context, state) => SharedAxisPage(
          key: state.pageKey,
          child: const CookiesPage(),
        ),
      ),
      GoRoute(
        path: '/data-protection',
        name: 'data-protection',
        pageBuilder: (context, state) => SharedAxisPage(
          key: state.pageKey,
          child: const DataProtectionPage(),
        ),
      ),
      GoRoute(
        path: '/mobile-apps',
        name: 'mobile-apps',
        pageBuilder: (context, state) => SharedAxisPage(
          key: state.pageKey,
          child: const MobileAppsPage(),
        ),
      ),
    ],
  ),
];
