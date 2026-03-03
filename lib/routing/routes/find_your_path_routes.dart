import 'package:go_router/go_router.dart';
import '../../features/find_your_path/presentation/screens/find_your_path_landing_screen.dart';
import '../../features/find_your_path/presentation/screens/questionnaire_screen.dart';
import '../../features/find_your_path/presentation/screens/results_screen.dart';
import '../../features/find_your_path/presentation/screens/university_detail_screen.dart';
import '../../features/shared/widgets/public_shell.dart';
import '../transitions/shared_axis_page.dart';

/// Find Your Path feature routes (public access)
List<RouteBase> findYourPathRoutes = [
  ShellRoute(
    builder: (context, state, child) => PublicShell(child: child),
    routes: [
      GoRoute(
        path: '/find-your-path',
        name: 'find-your-path',
        pageBuilder: (context, state) => SharedAxisPage(
          key: state.pageKey,
          child: const FindYourPathLandingScreen(),
        ),
      ),
      GoRoute(
        path: '/find-your-path/questionnaire',
        name: 'find-your-path-questionnaire',
        pageBuilder: (context, state) => SharedAxisPage(
          key: state.pageKey,
          child: const QuestionnaireScreen(),
        ),
      ),
      GoRoute(
        path: '/find-your-path/results',
        name: 'find-your-path-results',
        pageBuilder: (context, state) => SharedAxisPage(
          key: state.pageKey,
          child: const ResultsScreen(),
        ),
      ),
      GoRoute(
        path: '/find-your-path/university/:id',
        name: 'find-your-path-university-detail',
        pageBuilder: (context, state) {
          final id = state.pathParameters['id']!;
          return SharedAxisPage(
            key: state.pageKey,
            child: UniversityDetailScreen(universityId: id),
          );
        },
      ),
    ],
  ),
];
