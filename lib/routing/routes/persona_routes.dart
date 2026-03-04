import 'package:go_router/go_router.dart';
import '../../features/home/presentation/persona_landing_page.dart';
import '../../features/shared/widgets/public_shell.dart';
import '../transitions/instant_page.dart';

/// Routes for persona-specific landing pages (public, no auth required).
///
/// Uses plain GoRoutes with inline PublicShell wrapping instead of ShellRoute
/// to avoid the ghost-layer bug on Flutter web.
List<RouteBase> personaRoutes = [
  GoRoute(
    path: '/for-students',
    name: 'for-students',
    pageBuilder: (context, state) => InstantPage(
      key: state.pageKey,
      child: const PublicShell(
        child: PersonaLandingPage(personaType: PersonaType.student),
      ),
    ),
  ),
  GoRoute(
    path: '/for-institutions',
    name: 'for-institutions',
    pageBuilder: (context, state) => InstantPage(
      key: state.pageKey,
      child: const PublicShell(
        child: PersonaLandingPage(personaType: PersonaType.institution),
      ),
    ),
  ),
  GoRoute(
    path: '/for-parents',
    name: 'for-parents',
    pageBuilder: (context, state) => InstantPage(
      key: state.pageKey,
      child: const PublicShell(
        child: PersonaLandingPage(personaType: PersonaType.parent),
      ),
    ),
  ),
  GoRoute(
    path: '/for-counselors',
    name: 'for-counselors',
    pageBuilder: (context, state) => InstantPage(
      key: state.pageKey,
      child: const PublicShell(
        child: PersonaLandingPage(personaType: PersonaType.counselor),
      ),
    ),
  ),
];
