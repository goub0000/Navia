import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import '../../features/university_search/presentation/university_search_screen.dart';
import '../../features/university_search/presentation/university_detail_screen.dart';
import '../../features/shared/widgets/public_shell.dart';
import '../../core/models/university_model.dart';

/// Routes for university search feature (public, no auth required)
/// Wrapped in PublicShell for consistent navigation navbar.
///
/// Uses MaterialPage instead of SharedAxisPage to avoid
/// SharedAxisTransition exit animations getting stuck when navigating
/// out of the ShellRoute (e.g. to /), which leaves a partially
/// transparent ghost layer over the destination page.
List<RouteBase> universityRoutes = [
  ShellRoute(
    builder: (context, state, child) => PublicShell(child: child),
    routes: [
      // University search screen
      GoRoute(
        path: '/universities',
        name: 'university-search',
        pageBuilder: (context, state) => MaterialPage(
          key: state.pageKey,
          child: const UniversitySearchScreen(),
        ),
      ),
      // University detail screen
      GoRoute(
        path: '/universities/:id',
        name: 'university-detail',
        pageBuilder: (context, state) {
          final idStr = state.pathParameters['id']!;
          final id = int.tryParse(idStr) ?? 0;
          final university = state.extra as University?;
          return MaterialPage(
            key: state.pageKey,
            child: UniversityDetailScreen(
              universityId: id,
              university: university,
            ),
          );
        },
      ),
    ],
  ),
];
