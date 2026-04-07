import 'package:go_router/go_router.dart';
import '../../features/home/presentation/persona_landing_page.dart' deferred as persona_landing;
import '../../features/shared/widgets/public_shell.dart';
import '../transitions/instant_page.dart';
import '../deferred_route_loader.dart';

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
      child: PublicShell(
        child: DeferredRouteLoader(
          loader: persona_landing.loadLibrary,
          childBuilder: () => persona_landing.PersonaLandingPage(personaType: persona_landing.PersonaType.student),
        ),
      ),
    ),
  ),
  GoRoute(
    path: '/for-institutions',
    name: 'for-institutions',
    pageBuilder: (context, state) => InstantPage(
      key: state.pageKey,
      child: PublicShell(
        child: DeferredRouteLoader(
          loader: persona_landing.loadLibrary,
          childBuilder: () => persona_landing.PersonaLandingPage(personaType: persona_landing.PersonaType.institution),
        ),
      ),
    ),
  ),
  GoRoute(
    path: '/for-parents',
    name: 'for-parents',
    pageBuilder: (context, state) => InstantPage(
      key: state.pageKey,
      child: PublicShell(
        child: DeferredRouteLoader(
          loader: persona_landing.loadLibrary,
          childBuilder: () => persona_landing.PersonaLandingPage(personaType: persona_landing.PersonaType.parent),
        ),
      ),
    ),
  ),
  GoRoute(
    path: '/for-counselors',
    name: 'for-counselors',
    pageBuilder: (context, state) => InstantPage(
      key: state.pageKey,
      child: PublicShell(
        child: DeferredRouteLoader(
          loader: persona_landing.loadLibrary,
          childBuilder: () => persona_landing.PersonaLandingPage(personaType: persona_landing.PersonaType.counselor),
        ),
      ),
    ),
  ),
];
