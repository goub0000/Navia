import 'package:go_router/go_router.dart';
import '../../features/university_search/presentation/university_search_screen.dart';
import '../../features/university_search/presentation/university_detail_screen.dart';
import '../../features/shared/widgets/public_shell.dart';
import '../../core/models/university_model.dart';

/// Routes for university search feature (public, no auth required).
///
/// IMPORTANT: These are top-level GoRoutes wrapping PublicShell directly
/// instead of using ShellRoute. go_router's ShellRoute creates a
/// separate page in the parent Navigator whose exit animation gets stuck
/// during shell→non-shell navigation, leaving a ghost layer over the
/// destination page. Wrapping PublicShell inline avoids this entirely.
List<RouteBase> universityRoutes = [
  GoRoute(
    path: '/universities',
    name: 'university-search',
    pageBuilder: (context, state) => NoTransitionPage(
      key: state.pageKey,
      child: const PublicShell(child: UniversitySearchScreen()),
    ),
  ),
  GoRoute(
    path: '/universities/:id',
    name: 'university-detail',
    pageBuilder: (context, state) {
      final idStr = state.pathParameters['id']!;
      final id = int.tryParse(idStr) ?? 0;
      final university = state.extra as University?;
      return NoTransitionPage(
        key: state.pageKey,
        child: PublicShell(
          child: UniversityDetailScreen(
            universityId: id,
            university: university,
          ),
        ),
      );
    },
  ),
];
