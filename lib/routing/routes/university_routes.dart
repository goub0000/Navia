import 'package:go_router/go_router.dart';
import '../../features/university_search/presentation/university_search_screen.dart';
import '../../features/university_search/presentation/university_detail_screen.dart';
import '../../features/shared/widgets/public_shell.dart';
import '../../core/models/university_model.dart';
import '../transitions/instant_page.dart';

/// Routes for university search feature (public, no auth required).
///
/// Uses [InstantPage] (fade-aware zero-duration transition) instead of
/// [NoTransitionPage] to prevent the outgoing page from rendering at full
/// opacity during the one-frame OverlayEntry removal delay on Flutter web.
List<RouteBase> universityRoutes = [
  GoRoute(
    path: '/universities',
    name: 'university-search',
    pageBuilder: (context, state) => InstantPage(
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
      return InstantPage(
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
