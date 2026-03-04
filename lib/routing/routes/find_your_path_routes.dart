import 'package:go_router/go_router.dart';
import '../../features/find_your_path/presentation/screens/find_your_path_landing_screen.dart';
import '../../features/find_your_path/presentation/screens/questionnaire_screen.dart';
import '../../features/find_your_path/presentation/screens/results_screen.dart';
import '../../features/find_your_path/presentation/screens/university_detail_screen.dart';
import '../../features/shared/widgets/public_shell.dart';
import '../transitions/instant_page.dart';

/// Find Your Path feature routes (public access).
///
/// Uses plain GoRoutes with inline PublicShell wrapping instead of ShellRoute
/// to avoid the ghost-layer bug on Flutter web.
List<RouteBase> findYourPathRoutes = [
  GoRoute(
    path: '/find-your-path',
    name: 'find-your-path',
    pageBuilder: (context, state) => InstantPage(
      key: state.pageKey,
      child: const PublicShell(child: FindYourPathLandingScreen()),
    ),
  ),
  GoRoute(
    path: '/find-your-path/questionnaire',
    name: 'find-your-path-questionnaire',
    pageBuilder: (context, state) => InstantPage(
      key: state.pageKey,
      child: const PublicShell(child: QuestionnaireScreen()),
    ),
  ),
  GoRoute(
    path: '/find-your-path/results',
    name: 'find-your-path-results',
    pageBuilder: (context, state) => InstantPage(
      key: state.pageKey,
      child: const PublicShell(child: ResultsScreen()),
    ),
  ),
  GoRoute(
    path: '/find-your-path/university/:id',
    name: 'find-your-path-university-detail',
    pageBuilder: (context, state) {
      final id = state.pathParameters['id']!;
      return InstantPage(
        key: state.pageKey,
        child: PublicShell(
          child: UniversityDetailScreen(universityId: id),
        ),
      );
    },
  ),
];
