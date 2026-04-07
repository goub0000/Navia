import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import '../../core/models/application_model.dart';
import '../../core/models/course_model.dart';
import '../../features/shared/counseling/models/counseling_models.dart';
import '../../features/student/dashboard/presentation/student_dashboard_screen.dart' deferred as student_dashboard;
import '../../features/student/applications/presentation/applications_list_screen.dart' deferred as student_applications_list;
import '../../features/student/applications/presentation/application_detail_screen.dart' deferred as student_application_detail;
import '../../features/student/applications/presentation/create_application_screen.dart' deferred as student_create_application;
import '../../features/student/progress/presentation/progress_screen.dart' deferred as student_progress;
import '../../features/student/courses/presentation/courses_list_screen.dart' deferred as student_courses_list;
import '../../features/student/courses/presentation/course_detail_screen.dart' deferred as student_course_detail;
import '../../features/student/courses/presentation/my_courses_screen.dart' deferred as student_my_courses;
import '../../features/student/courses/presentation/course_learning_screen.dart' deferred as student_course_learning;
import '../../features/student/recommendations/presentation/recommendation_requests_screen.dart' deferred as student_recommendations;
import '../../features/student/parent_linking/presentation/parent_linking_screen.dart' deferred as student_parent_linking;
import '../../features/student/counseling/presentation/student_counseling_tab.dart' deferred as student_counseling;
import '../../features/student/counseling/presentation/book_counseling_session_screen.dart' deferred as student_book_counseling;
import '../../features/student/schedule/presentation/schedule_screen.dart' deferred as student_schedule;
import '../../features/student/resources/presentation/resources_screen.dart' deferred as student_resources;
import '../../features/student/help/presentation/help_screen.dart' deferred as student_help;
import '../../core/widgets/navia_loading_indicator.dart';
import '../transitions/shared_axis_page.dart';
import '../deferred_route_loader.dart';

/// Student-specific routes
List<RouteBase> studentRoutes = [
  GoRoute(
    path: '/student/dashboard',
    name: 'student-dashboard',
    pageBuilder: (context, state) => SharedAxisPage(
      key: state.pageKey,
      child: DeferredRouteLoader(
        loader: student_dashboard.loadLibrary,
        childBuilder: () => student_dashboard.StudentDashboardScreen(),
      ),
    ),
  ),
  GoRoute(
    path: '/student/applications',
    name: 'student-applications',
    pageBuilder: (context, state) => SharedAxisPage(
      key: state.pageKey,
      child: DeferredRouteLoader(
        loader: student_applications_list.loadLibrary,
        childBuilder: () => student_applications_list.ApplicationsListScreen(),
      ),
    ),
  ),
  GoRoute(
    path: '/student/applications/create',
    name: 'student-create-application',
    pageBuilder: (context, state) => SharedAxisPage(
      key: state.pageKey,
      child: DeferredRouteLoader(
        loader: student_create_application.loadLibrary,
        childBuilder: () => student_create_application.CreateApplicationScreen(),
      ),
    ),
  ),
  GoRoute(
    path: '/student/applications/:id',
    name: 'student-application-detail',
    pageBuilder: (context, state) {
      // Application object should be passed via state.extra
      final application = state.extra as Application?;
      if (application == null) {
        // If no application provided, redirect back to applications list
        WidgetsBinding.instance.addPostFrameCallback((_) {
          context.go('/student/applications');
        });
        return SharedAxisPage(
          key: state.pageKey,
          child: const Scaffold(
            body: NaviaLoadingIndicator(),
          ),
        );
      }
      return SharedAxisPage(
        key: state.pageKey,
        child: DeferredRouteLoader(
          loader: student_application_detail.loadLibrary,
          childBuilder: () => student_application_detail.ApplicationDetailScreen(application: application),
        ),
      );
    },
  ),
  GoRoute(
    path: '/student/progress',
    name: 'student-progress',
    pageBuilder: (context, state) => SharedAxisPage(
      key: state.pageKey,
      child: DeferredRouteLoader(
        loader: student_progress.loadLibrary,
        childBuilder: () => student_progress.ProgressScreen(),
      ),
    ),
  ),
  GoRoute(
    path: '/student/courses',
    name: 'student-courses',
    pageBuilder: (context, state) => SharedAxisPage(
      key: state.pageKey,
      child: DeferredRouteLoader(
        loader: student_courses_list.loadLibrary,
        childBuilder: () => student_courses_list.CoursesListScreen(),
      ),
    ),
  ),
  GoRoute(
    path: '/student/courses/:id',
    name: 'student-course-detail',
    pageBuilder: (context, state) {
      // final courseId = state.pathParameters['id']!;
      final course = state.extra as Course?;
      if (course == null) {
        WidgetsBinding.instance.addPostFrameCallback((_) {
          context.go('/student/courses');
        });
        return SharedAxisPage(
          key: state.pageKey,
          child: const Scaffold(
            body: NaviaLoadingIndicator(),
          ),
        );
      }
      return SharedAxisPage(
        key: state.pageKey,
        child: DeferredRouteLoader(
          loader: student_course_detail.loadLibrary,
          childBuilder: () => student_course_detail.CourseDetailScreen(course: course),
        ),
      );
    },
  ),
  GoRoute(
    path: '/student/my-courses',
    name: 'student-my-courses',
    pageBuilder: (context, state) => SharedAxisPage(
      key: state.pageKey,
      child: DeferredRouteLoader(
        loader: student_my_courses.loadLibrary,
        childBuilder: () => student_my_courses.MyCoursesScreen(),
      ),
    ),
  ),
  GoRoute(
    path: '/student/courses/:id/learn',
    name: 'student-course-learn',
    pageBuilder: (context, state) {
      final course = state.extra as Course?;
      if (course == null) {
        WidgetsBinding.instance.addPostFrameCallback((_) {
          context.go('/student/my-courses');
        });
        return SharedAxisPage(
          key: state.pageKey,
          child: const Scaffold(
            body: NaviaLoadingIndicator(),
          ),
        );
      }
      return SharedAxisPage(
        key: state.pageKey,
        child: DeferredRouteLoader(
          loader: student_course_learning.loadLibrary,
          childBuilder: () => student_course_learning.CourseLearningScreen(course: course),
        ),
      );
    },
  ),
  GoRoute(
    path: '/student/recommendations',
    name: 'student-recommendations',
    pageBuilder: (context, state) => SharedAxisPage(
      key: state.pageKey,
      child: DeferredRouteLoader(
        loader: student_recommendations.loadLibrary,
        childBuilder: () => student_recommendations.RecommendationRequestsScreen(),
      ),
    ),
  ),
  GoRoute(
    path: '/student/parent-linking',
    name: 'student-parent-linking',
    pageBuilder: (context, state) => SharedAxisPage(
      key: state.pageKey,
      child: DeferredRouteLoader(
        loader: student_parent_linking.loadLibrary,
        childBuilder: () => student_parent_linking.ParentLinkingScreen(),
      ),
    ),
  ),
  // Counseling routes
  GoRoute(
    path: '/student/counseling',
    name: 'student-counseling',
    pageBuilder: (context, state) => SharedAxisPage(
      key: state.pageKey,
      child: DeferredRouteLoader(
        loader: student_counseling.loadLibrary,
        childBuilder: () => Scaffold(
          appBar: AppBar(
            title: const Text('My Counselor'),
          ),
          body: student_counseling.StudentCounselingTab(),
        ),
      ),
    ),
  ),
  GoRoute(
    path: '/student/counseling/book',
    name: 'student-counseling-book',
    pageBuilder: (context, state) {
      final counselor = state.extra as CounselorInfo?;
      if (counselor == null) {
        WidgetsBinding.instance.addPostFrameCallback((_) {
          context.go('/student/counseling');
        });
        return SharedAxisPage(
          key: state.pageKey,
          child: const Scaffold(
            body: NaviaLoadingIndicator(),
          ),
        );
      }
      return SharedAxisPage(
        key: state.pageKey,
        child: DeferredRouteLoader(
          loader: student_book_counseling.loadLibrary,
          childBuilder: () => student_book_counseling.BookCounselingSessionScreen(counselor: counselor),
        ),
      );
    },
  ),
  // Schedule, Resources, Help routes
  GoRoute(
    path: '/student/schedule',
    name: 'student-schedule',
    pageBuilder: (context, state) => SharedAxisPage(
      key: state.pageKey,
      child: DeferredRouteLoader(
        loader: student_schedule.loadLibrary,
        childBuilder: () => student_schedule.ScheduleScreen(),
      ),
    ),
  ),
  GoRoute(
    path: '/student/resources',
    name: 'student-resources',
    pageBuilder: (context, state) => SharedAxisPage(
      key: state.pageKey,
      child: DeferredRouteLoader(
        loader: student_resources.loadLibrary,
        childBuilder: () => student_resources.ResourcesScreen(),
      ),
    ),
  ),
  GoRoute(
    path: '/student/help',
    name: 'student-help',
    pageBuilder: (context, state) => SharedAxisPage(
      key: state.pageKey,
      child: DeferredRouteLoader(
        loader: student_help.loadLibrary,
        childBuilder: () => student_help.HelpScreen(),
      ),
    ),
  ),
];
