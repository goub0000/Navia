import 'package:go_router/go_router.dart';
import '../../core/models/recommendation_letter_models.dart';
import '../../features/recommender/dashboard/presentation/recommender_dashboard_screen.dart';
import '../../features/recommender/requests/presentation/requests_list_screen.dart';
import '../../features/recommender/requests/presentation/write_recommendation_screen.dart';
import '../transitions/shared_axis_page.dart';

/// Recommender-specific routes
List<RouteBase> recommenderRoutes = [
  GoRoute(
    path: '/recommender/dashboard',
    name: 'recommender-dashboard',
    pageBuilder: (context, state) => SharedAxisPage(
      key: state.pageKey,
      child: const RecommenderDashboardScreen(),
    ),
  ),
  GoRoute(
    path: '/recommender/requests',
    name: 'recommender-requests',
    pageBuilder: (context, state) => SharedAxisPage(
      key: state.pageKey,
      child: const RequestsListScreen(),
    ),
  ),
  GoRoute(
    path: '/recommender/requests/:id',
    name: 'recommender-write-recommendation',
    pageBuilder: (context, state) {
      // Get recommendation request from state.extra
      final request = state.extra as RecommendationRequest;
      return SharedAxisPage(
        key: state.pageKey,
        child: WriteRecommendationScreen(request: request),
      );
    },
  ),
];
