import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../../core/models/applicant_model.dart';
import '../../core/models/program_model.dart';
import '../../core/models/course_model.dart';
import '../../features/institution/dashboard/presentation/institution_dashboard_screen.dart' deferred as inst_dashboard;
import '../../features/institution/applicants/presentation/applicants_list_screen.dart' deferred as inst_applicants_list;
import '../../features/institution/applicants/presentation/applicant_detail_screen.dart';
import '../../features/institution/programs/presentation/programs_list_screen.dart' deferred as inst_programs_list;
import '../../features/institution/programs/presentation/create_program_screen.dart' deferred as inst_create_program;
import '../../features/institution/programs/presentation/program_detail_screen.dart' deferred as inst_program_detail;
import '../../features/institution/courses/presentation/institution_courses_screen.dart' deferred as inst_courses;
import '../../features/institution/courses/presentation/create_course_screen.dart' deferred as inst_create_course;
import '../../features/institution/courses/presentation/course_permissions_screen.dart' deferred as inst_course_permissions;
import '../../features/institution/courses/presentation/course_enrollments_screen.dart' deferred as inst_course_enrollments;
import '../../features/institution/courses/presentation/institution_course_detail_screen.dart' deferred as inst_course_detail;
import '../../features/institution/courses/presentation/course_content_builder_screen.dart' deferred as inst_course_builder;
import '../../features/institution/counselors/presentation/counselors_management_screen.dart' deferred as inst_counselors;
import '../../features/institution/providers/institution_applicants_provider.dart';
import '../../core/widgets/navia_loading_indicator.dart';
import '../transitions/shared_axis_page.dart';
import '../deferred_route_loader.dart';

/// Institution-specific routes
List<RouteBase> institutionRoutes = [
  GoRoute(
    path: '/institution/dashboard',
    name: 'institution-dashboard',
    pageBuilder: (context, state) => SharedAxisPage(
      key: state.pageKey,
      child: DeferredRouteLoader(
        loader: inst_dashboard.loadLibrary,
        childBuilder: () => inst_dashboard.InstitutionDashboardScreen(),
      ),
    ),
  ),
  GoRoute(
    path: '/institution/applicants',
    name: 'institution-applicants',
    pageBuilder: (context, state) => SharedAxisPage(
      key: state.pageKey,
      child: DeferredRouteLoader(
        loader: inst_applicants_list.loadLibrary,
        childBuilder: () => inst_applicants_list.ApplicantsListScreen(),
      ),
    ),
  ),
  GoRoute(
    path: '/institution/applicants/:id',
    name: 'institution-applicant-detail',
    pageBuilder: (context, state) {
      final applicantId = state.pathParameters['id']!;
      // Get applicant from provider or passed via state.extra
      final applicant = state.extra as Applicant?;

      if (applicant != null) {
        return SharedAxisPage(
          key: state.pageKey,
          child: ApplicantDetailScreen(applicant: applicant),
        );
      }

      // If no applicant passed, create a wrapper widget to fetch it
      return SharedAxisPage(
        key: state.pageKey,
        child: _ApplicantDetailWrapper(applicantId: applicantId),
      );
    },
  ),
  GoRoute(
    path: '/institution/programs',
    name: 'institution-programs',
    pageBuilder: (context, state) => SharedAxisPage(
      key: state.pageKey,
      child: DeferredRouteLoader(
        loader: inst_programs_list.loadLibrary,
        childBuilder: () => inst_programs_list.ProgramsListScreen(),
      ),
    ),
  ),
  GoRoute(
    path: '/institution/programs/create',
    name: 'institution-create-program',
    pageBuilder: (context, state) => SharedAxisPage(
      key: state.pageKey,
      child: DeferredRouteLoader(
        loader: inst_create_program.loadLibrary,
        childBuilder: () => inst_create_program.CreateProgramScreen(),
      ),
    ),
  ),
  GoRoute(
    path: '/institution/programs/:id',
    name: 'institution-program-detail',
    pageBuilder: (context, state) {
      // final programId = state.pathParameters['id']!;
      // Program should be passed via state.extra
      final program = state.extra as Program?;
      if (program == null) {
        // If no program provided, redirect back to programs list
        WidgetsBinding.instance.addPostFrameCallback((_) {
          context.go('/institution/programs');
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
          loader: inst_program_detail.loadLibrary,
          childBuilder: () => inst_program_detail.ProgramDetailScreen(program: program),
        ),
      );
    },
  ),
  GoRoute(
    path: '/institution/courses',
    name: 'institution-courses',
    pageBuilder: (context, state) => SharedAxisPage(
      key: state.pageKey,
      child: DeferredRouteLoader(
        loader: inst_courses.loadLibrary,
        childBuilder: () => inst_courses.InstitutionCoursesScreen(),
      ),
    ),
  ),
  GoRoute(
    path: '/institution/courses/create',
    name: 'institution-create-course',
    pageBuilder: (context, state) => SharedAxisPage(
      key: state.pageKey,
      child: DeferredRouteLoader(
        loader: inst_create_course.loadLibrary,
        childBuilder: () => inst_create_course.CreateCourseScreen(),
      ),
    ),
  ),
  GoRoute(
    path: '/institution/courses/:id',
    name: 'institution-course-detail',
    pageBuilder: (context, state) {
      // final courseId = state.pathParameters['id']!;
      final course = state.extra as Course?;
      if (course == null) {
        WidgetsBinding.instance.addPostFrameCallback((_) {
          context.go('/institution/courses');
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
          loader: inst_course_detail.loadLibrary,
          childBuilder: () => inst_course_detail.InstitutionCourseDetailScreen(course: course),
        ),
      );
    },
  ),
  GoRoute(
    path: '/institution/courses/:id/edit',
    name: 'institution-edit-course',
    pageBuilder: (context, state) {
      // final courseId = state.pathParameters['id']!;
      final course = state.extra as Course?;
      if (course == null) {
        WidgetsBinding.instance.addPostFrameCallback((_) {
          context.go('/institution/courses');
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
          loader: inst_create_course.loadLibrary,
          childBuilder: () => inst_create_course.CreateCourseScreen(course: course),
        ),
      );
    },
  ),
  GoRoute(
    path: '/institution/courses/:id/permissions',
    name: 'institution-course-permissions',
    pageBuilder: (context, state) {
      // final courseId = state.pathParameters['id']!;
      final course = state.extra as Course?;
      if (course == null) {
        WidgetsBinding.instance.addPostFrameCallback((_) {
          context.go('/institution/courses');
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
          loader: inst_course_permissions.loadLibrary,
          childBuilder: () => inst_course_permissions.CoursePermissionsScreen(course: course),
        ),
      );
    },
  ),
  GoRoute(
    path: '/institution/courses/:id/enrollments',
    name: 'institution-course-enrollments',
    pageBuilder: (context, state) {
      final course = state.extra as Course?;
      if (course == null) {
        WidgetsBinding.instance.addPostFrameCallback((_) {
          context.go('/institution/courses');
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
          loader: inst_course_enrollments.loadLibrary,
          childBuilder: () => inst_course_enrollments.CourseEnrollmentsScreen(course: course),
        ),
      );
    },
  ),
  GoRoute(
    path: '/institution/courses/:id/content',
    name: 'institution-course-content',
    pageBuilder: (context, state) {
      final courseId = state.pathParameters['id']!;
      final course = state.extra as Course?;
      return SharedAxisPage(
        key: state.pageKey,
        child: DeferredRouteLoader(
          loader: inst_course_builder.loadLibrary,
          childBuilder: () => inst_course_builder.CourseContentBuilderScreen(
            courseId: courseId,
            course: course,
          ),
        ),
      );
    },
  ),
  // Counselors management
  GoRoute(
    path: '/institution/counselors',
    name: 'institution-counselors',
    pageBuilder: (context, state) => SharedAxisPage(
      key: state.pageKey,
      child: DeferredRouteLoader(
        loader: inst_counselors.loadLibrary,
        childBuilder: () => inst_counselors.CounselorsManagementScreen(),
      ),
    ),
  ),
];

/// Wrapper widget to fetch applicant by ID
class _ApplicantDetailWrapper extends ConsumerWidget {
  final String applicantId;

  const _ApplicantDetailWrapper({required this.applicantId});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    // Try to get applicant from provider's cache
    final state = ref.watch(institutionApplicantsProvider);
    final applicant = state.applicants.cast<Applicant?>().firstWhere(
      (a) => a?.id == applicantId,
      orElse: () => null,
    );

    if (applicant != null) {
      return ApplicantDetailScreen(applicant: applicant);
    }

    // If not in cache, fetch from backend
    return FutureBuilder<Applicant?>(
      future: _fetchApplicantFromBackend(ref, applicantId),
      builder: (context, snapshot) {
        if (snapshot.connectionState == ConnectionState.waiting) {
          return const Scaffold(
            body: NaviaLoadingIndicator(),
          );
        }

        if (snapshot.hasError || snapshot.data == null) {
          // Redirect back to applicants list if applicant not found
          WidgetsBinding.instance.addPostFrameCallback((_) {
            context.go('/institution/applicants');
            ScaffoldMessenger.of(context).showSnackBar(
              const SnackBar(
                content: Text('Applicant not found'),
                backgroundColor: Colors.red,
              ),
            );
          });
          return const Scaffold(
            body: NaviaLoadingIndicator(),
          );
        }

        return ApplicantDetailScreen(applicant: snapshot.data!);
      },
    );
  }

  Future<Applicant?> _fetchApplicantFromBackend(WidgetRef ref, String applicantId) async {
    try {
      final apiService = ref.read(applicationsApiServiceProvider);
      return await apiService.getApplication(applicantId);
    } catch (e) {
      return null;
    }
  }
}
