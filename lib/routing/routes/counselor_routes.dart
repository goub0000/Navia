import 'package:go_router/go_router.dart';
import '../../core/models/counseling_models.dart';
import '../../features/counselor/dashboard/presentation/counselor_dashboard_screen.dart' deferred as counselor_dashboard;
import '../../features/counselor/students/presentation/students_list_screen.dart' deferred as counselor_students_list;
import '../../features/counselor/students/presentation/student_detail_screen.dart' deferred as counselor_student_detail;
import '../../features/counselor/sessions/presentation/sessions_list_screen.dart' deferred as counselor_sessions_list;
import '../../features/counselor/sessions/presentation/create_session_screen.dart' deferred as counselor_create_session;
import '../transitions/shared_axis_page.dart';
import '../deferred_route_loader.dart';

/// Counselor-specific routes
List<RouteBase> counselorRoutes = [
  GoRoute(
    path: '/counselor/dashboard',
    name: 'counselor-dashboard',
    pageBuilder: (context, state) => SharedAxisPage(
      key: state.pageKey,
      child: DeferredRouteLoader(
        loader: counselor_dashboard.loadLibrary,
        childBuilder: () => counselor_dashboard.CounselorDashboardScreen(),
      ),
    ),
  ),
  GoRoute(
    path: '/counselor/students',
    name: 'counselor-students',
    pageBuilder: (context, state) => SharedAxisPage(
      key: state.pageKey,
      child: DeferredRouteLoader(
        loader: counselor_students_list.loadLibrary,
        childBuilder: () => counselor_students_list.StudentsListScreen(),
      ),
    ),
  ),
  GoRoute(
    path: '/counselor/students/:id',
    name: 'counselor-student-detail',
    pageBuilder: (context, state) {
      // Get student from provider using state.extra
      final student = state.extra as StudentRecord;
      return SharedAxisPage(
        key: state.pageKey,
        child: DeferredRouteLoader(
          loader: counselor_student_detail.loadLibrary,
          childBuilder: () => counselor_student_detail.StudentDetailScreen(student: student),
        ),
      );
    },
  ),
  GoRoute(
    path: '/counselor/sessions',
    name: 'counselor-sessions',
    pageBuilder: (context, state) => SharedAxisPage(
      key: state.pageKey,
      child: DeferredRouteLoader(
        loader: counselor_sessions_list.loadLibrary,
        childBuilder: () => counselor_sessions_list.SessionsListScreen(),
      ),
    ),
  ),
  GoRoute(
    path: '/counselor/sessions/create',
    name: 'counselor-create-session',
    pageBuilder: (context, state) {
      final extra = state.extra as Map<String, dynamic>?;
      final student = extra?['student'] as StudentRecord?;
      return SharedAxisPage(
        key: state.pageKey,
        child: DeferredRouteLoader(
          loader: counselor_create_session.loadLibrary,
          childBuilder: () => counselor_create_session.CreateSessionScreen(student: student),
        ),
      );
    },
  ),
];
