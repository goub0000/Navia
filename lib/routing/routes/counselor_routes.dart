import 'package:go_router/go_router.dart';
import '../../core/models/counseling_models.dart';
import '../../features/counselor/dashboard/presentation/counselor_dashboard_screen.dart';
import '../../features/counselor/students/presentation/students_list_screen.dart';
import '../../features/counselor/students/presentation/student_detail_screen.dart';
import '../../features/counselor/sessions/presentation/sessions_list_screen.dart';
import '../../features/counselor/sessions/presentation/create_session_screen.dart';
import '../transitions/shared_axis_page.dart';

/// Counselor-specific routes
List<RouteBase> counselorRoutes = [
  GoRoute(
    path: '/counselor/dashboard',
    name: 'counselor-dashboard',
    pageBuilder: (context, state) => SharedAxisPage(
      key: state.pageKey,
      child: const CounselorDashboardScreen(),
    ),
  ),
  GoRoute(
    path: '/counselor/students',
    name: 'counselor-students',
    pageBuilder: (context, state) => SharedAxisPage(
      key: state.pageKey,
      child: const StudentsListScreen(),
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
        child: StudentDetailScreen(student: student),
      );
    },
  ),
  GoRoute(
    path: '/counselor/sessions',
    name: 'counselor-sessions',
    pageBuilder: (context, state) => SharedAxisPage(
      key: state.pageKey,
      child: const SessionsListScreen(),
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
        child: CreateSessionScreen(student: student),
      );
    },
  ),
];
