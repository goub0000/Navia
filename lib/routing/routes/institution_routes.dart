import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../../core/models/applicant_model.dart';
import '../../core/models/program_model.dart';
import '../../core/models/course_model.dart';
import '../../features/institution/dashboard/presentation/institution_dashboard_screen.dart';
import '../../features/institution/applicants/presentation/applicants_list_screen.dart';
import '../../features/institution/applicants/presentation/applicant_detail_screen.dart';
import '../../features/institution/programs/presentation/programs_list_screen.dart';
import '../../features/institution/programs/presentation/create_program_screen.dart';
import '../../features/institution/programs/presentation/program_detail_screen.dart';
import '../../features/institution/courses/presentation/institution_courses_screen.dart';
import '../../features/institution/courses/presentation/create_course_screen.dart';
import '../../features/institution/courses/presentation/course_permissions_screen.dart';
import '../../features/institution/courses/presentation/course_enrollments_screen.dart';
import '../../features/institution/courses/presentation/institution_course_detail_screen.dart';
import '../../features/institution/courses/presentation/course_content_builder_screen.dart';
import '../../features/institution/counselors/presentation/counselors_management_screen.dart';
import '../../features/institution/providers/institution_applicants_provider.dart';
import '../transitions/shared_axis_page.dart';

/// Institution-specific routes
List<RouteBase> institutionRoutes = [
  GoRoute(
    path: '/institution/dashboard',
    name: 'institution-dashboard',
    pageBuilder: (context, state) => SharedAxisPage(
      key: state.pageKey,
      child: const InstitutionDashboardScreen(),
    ),
  ),
  GoRoute(
    path: '/institution/applicants',
    name: 'institution-applicants',
    pageBuilder: (context, state) => SharedAxisPage(
      key: state.pageKey,
      child: const ApplicantsListScreen(),
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
      child: const ProgramsListScreen(),
    ),
  ),
  GoRoute(
    path: '/institution/programs/create',
    name: 'institution-create-program',
    pageBuilder: (context, state) => SharedAxisPage(
      key: state.pageKey,
      child: const CreateProgramScreen(),
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
            body: Center(child: CircularProgressIndicator()),
          ),
        );
      }
      return SharedAxisPage(
        key: state.pageKey,
        child: ProgramDetailScreen(program: program),
      );
    },
  ),
  GoRoute(
    path: '/institution/courses',
    name: 'institution-courses',
    pageBuilder: (context, state) => SharedAxisPage(
      key: state.pageKey,
      child: const InstitutionCoursesScreen(),
    ),
  ),
  GoRoute(
    path: '/institution/courses/create',
    name: 'institution-create-course',
    pageBuilder: (context, state) => SharedAxisPage(
      key: state.pageKey,
      child: const CreateCourseScreen(),
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
            body: Center(child: CircularProgressIndicator()),
          ),
        );
      }
      return SharedAxisPage(
        key: state.pageKey,
        child: InstitutionCourseDetailScreen(course: course),
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
            body: Center(child: CircularProgressIndicator()),
          ),
        );
      }
      return SharedAxisPage(
        key: state.pageKey,
        child: CreateCourseScreen(course: course),
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
            body: Center(child: CircularProgressIndicator()),
          ),
        );
      }
      return SharedAxisPage(
        key: state.pageKey,
        child: CoursePermissionsScreen(course: course),
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
            body: Center(child: CircularProgressIndicator()),
          ),
        );
      }
      return SharedAxisPage(
        key: state.pageKey,
        child: CourseEnrollmentsScreen(course: course),
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
        child: CourseContentBuilderScreen(
          courseId: courseId,
          course: course,
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
      child: const CounselorsManagementScreen(),
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
            body: Center(child: CircularProgressIndicator()),
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
            body: Center(child: CircularProgressIndicator()),
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
