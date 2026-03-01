import 'package:go_router/go_router.dart';
import '../../features/home/presentation/persona_landing_page.dart';
import '../../features/shared/widgets/public_shell.dart';
import '../transitions/shared_axis_page.dart';

/// Routes for persona-specific landing pages (public, no auth required).
/// Wrapped in PublicShell for consistent navigation navbar.
List<RouteBase> personaRoutes = [
  ShellRoute(
    builder: (context, state, child) => PublicShell(child: child),
    routes: [
      GoRoute(
        path: '/for-students',
        name: 'for-students',
        pageBuilder: (context, state) => SharedAxisPage(
          key: state.pageKey,
          child: const PersonaLandingPage(personaType: PersonaType.student),
        ),
      ),
      GoRoute(
        path: '/for-institutions',
        name: 'for-institutions',
        pageBuilder: (context, state) => SharedAxisPage(
          key: state.pageKey,
          child: const PersonaLandingPage(
              personaType: PersonaType.institution),
        ),
      ),
      GoRoute(
        path: '/for-parents',
        name: 'for-parents',
        pageBuilder: (context, state) => SharedAxisPage(
          key: state.pageKey,
          child: const PersonaLandingPage(personaType: PersonaType.parent),
        ),
      ),
      GoRoute(
        path: '/for-counselors',
        name: 'for-counselors',
        pageBuilder: (context, state) => SharedAxisPage(
          key: state.pageKey,
          child: const PersonaLandingPage(
              personaType: PersonaType.counselor),
        ),
      ),
    ],
  ),
];
