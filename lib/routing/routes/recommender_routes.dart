import 'package:go_router/go_router.dart';
import '../../core/models/recommendation_letter_models.dart';
import '../../features/recommender/dashboard/presentation/recommender_dashboard_screen.dart' deferred as recommender_dashboard;
import '../../features/recommender/requests/presentation/requests_list_screen.dart' deferred as recommender_requests_list;
import '../../features/recommender/requests/presentation/write_recommendation_screen.dart' deferred as recommender_write;
import '../transitions/shared_axis_page.dart';
import '../deferred_route_loader.dart';

/// Recommender-specific routes
List<RouteBase> recommenderRoutes = [
  GoRoute(
    path: '/recommender/dashboard',
    name: 'recommender-dashboard',
    pageBuilder: (context, state) => SharedAxisPage(
      key: state.pageKey,
      child: DeferredRouteLoader(
        loader: recommender_dashboard.loadLibrary,
        childBuilder: () => recommender_dashboard.RecommenderDashboardScreen(),
      ),
    ),
  ),
  GoRoute(
    path: '/recommender/requests',
    name: 'recommender-requests',
    pageBuilder: (context, state) => SharedAxisPage(
      key: state.pageKey,
      child: DeferredRouteLoader(
        loader: recommender_requests_list.loadLibrary,
        childBuilder: () => recommender_requests_list.RequestsListScreen(),
      ),
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
        child: DeferredRouteLoader(
          loader: recommender_write.loadLibrary,
          childBuilder: () => recommender_write.WriteRecommendationScreen(request: request),
        ),
      );
    },
  ),
];
