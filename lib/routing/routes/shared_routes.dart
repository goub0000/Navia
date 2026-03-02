import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import '../../features/shared/profile/profile_screen.dart';
import '../../features/shared/profile/edit_profile_screen.dart';
import '../../features/shared/profile/change_password_screen.dart';
import '../../features/shared/settings/settings_screen.dart';
import '../../features/shared/settings/notification_preferences_screen.dart';
import '../../features/shared/cookies/presentation/cookie_settings_screen.dart';
import '../../features/shared/notifications/notifications_screen.dart';
import '../../features/shared/messages/presentation/messages_list_screen.dart';
import '../../features/shared/messages/presentation/conversation_detail_screen.dart';
import '../../features/shared/documents/documents_screen.dart';
import '../../features/shared/documents/document_viewer_screen.dart';
import '../../features/shared/payments/payment_method_screen.dart';
import '../../features/shared/payments/payment_history_screen.dart';
import '../../features/shared/resources/resource_viewer_screen.dart';
import '../../features/shared/schedule/add_event_screen.dart';
import '../../features/shared/schedule/event_details_screen.dart';
import '../../features/shared/exams/exam_results_screen.dart';
import '../../features/shared/exams/take_exam_screen.dart';
import '../../features/shared/quizzes/quiz_taking_screen.dart';
import '../../features/shared/quizzes/quiz_results_screen.dart';
import '../../features/shared/tasks/add_task_screen.dart';
import '../../features/shared/tasks/task_details_screen.dart';
import '../../features/shared/collaboration/study_groups_screen.dart';

// Model imports for type safety
import '../../features/shared/widgets/schedule_widgets.dart'; // EventModel
import '../../features/shared/widgets/quiz_widgets.dart'; // QuizModel
import '../../features/shared/widgets/task_widgets.dart'; // TaskModel
import '../../features/shared/widgets/exam_widgets.dart'; // ExamModel
import '../../features/shared/widgets/resource_widgets.dart'; // ResourceModel
import '../../core/models/document_model.dart' as doc_model; // Document
import '../../core/widgets/navia_loading_indicator.dart';
import '../transitions/shared_axis_page.dart';

/// Shared routes available to all authenticated users
List<RouteBase> sharedRoutes = [
  // Profile routes
  GoRoute(
    path: '/profile',
    name: 'profile',
    pageBuilder: (context, state) => SharedAxisPage(
      key: state.pageKey,
      child: const ProfileScreen(),
    ),
  ),
  GoRoute(
    path: '/profile/edit',
    name: 'edit-profile',
    pageBuilder: (context, state) => SharedAxisPage(
      key: state.pageKey,
      child: const EditProfileScreen(),
    ),
  ),
  GoRoute(
    path: '/profile/change-password',
    name: 'change-password',
    pageBuilder: (context, state) => SharedAxisPage(
      key: state.pageKey,
      child: const ChangePasswordScreen(),
    ),
  ),

  // Settings routes
  GoRoute(
    path: '/settings',
    name: 'settings',
    pageBuilder: (context, state) => SharedAxisPage(
      key: state.pageKey,
      child: const SettingsScreen(),
    ),
  ),
  GoRoute(
    path: '/settings/notifications',
    name: 'notification-preferences',
    pageBuilder: (context, state) => SharedAxisPage(
      key: state.pageKey,
      child: const NotificationPreferencesScreen(),
    ),
  ),
  GoRoute(
    path: '/settings/cookies',
    name: 'cookie-settings',
    pageBuilder: (context, state) {
      // Get userId from query parameter or use a default for demo
      final userId = state.uri.queryParameters['userId'] ?? 'demo-user';
      return SharedAxisPage(
        key: state.pageKey,
        child: CookieSettingsScreen(userId: userId),
      );
    },
  ),

  // Notifications
  GoRoute(
    path: '/notifications',
    name: 'notifications',
    pageBuilder: (context, state) => SharedAxisPage(
      key: state.pageKey,
      child: const NotificationsScreen(),
    ),
  ),

  // Messages
  GoRoute(
    path: '/messages',
    name: 'messages',
    pageBuilder: (context, state) => SharedAxisPage(
      key: state.pageKey,
      child: const MessagesListScreen(),
    ),
  ),
  GoRoute(
    path: '/messages/:id',
    name: 'chat',
    pageBuilder: (context, state) {
      final conversationId = state.pathParameters['id']!;
      return SharedAxisPage(
        key: state.pageKey,
        child: ConversationDetailScreen(
          conversationId: conversationId,
        ),
      );
    },
  ),

  // Documents
  GoRoute(
    path: '/documents',
    name: 'documents',
    pageBuilder: (context, state) => SharedAxisPage(
      key: state.pageKey,
      child: const DocumentsScreen(),
    ),
  ),
  GoRoute(
    path: '/documents/:id',
    name: 'document-viewer',
    pageBuilder: (context, state) {
      // Document should be passed via state.extra
      final document = state.extra as doc_model.Document?;
      if (document == null) {
        // If no document provided, redirect back to documents list
        WidgetsBinding.instance.addPostFrameCallback((_) {
          context.go('/documents');
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
        child: DocumentViewerScreen(document: document),
      );
    },
  ),

  // Payment routes
  GoRoute(
    path: '/payments/method',
    name: 'payment-method',
    pageBuilder: (context, state) {
      final extra = state.extra as Map<String, dynamic>?;
      return SharedAxisPage(
        key: state.pageKey,
        child: PaymentMethodScreen(
          itemId: extra?['itemId'] ?? '',
          itemName: extra?['itemName'] ?? '',
          itemType: extra?['itemType'] ?? '',
          amount: extra?['amount'] ?? 0.0,
          currency: extra?['currency'] ?? 'USD',
        ),
      );
    },
  ),
  GoRoute(
    path: '/payments/history',
    name: 'payment-history',
    pageBuilder: (context, state) => SharedAxisPage(
      key: state.pageKey,
      child: const PaymentHistoryScreen(),
    ),
  ),

  // Resources routes
  GoRoute(
    path: '/resources/view',
    name: 'resource-viewer',
    pageBuilder: (context, state) {
      final resource = state.extra as ResourceModel;
      return SharedAxisPage(
        key: state.pageKey,
        child: ResourceViewerScreen(resource: resource),
      );
    },
  ),

  // Schedule/Calendar routes
  GoRoute(
    path: '/schedule/add-event',
    name: 'add-event',
    pageBuilder: (context, state) {
      final date = state.extra as DateTime?;
      return SharedAxisPage(
        key: state.pageKey,
        child: AddEventScreen(initialDate: date),
      );
    },
  ),
  GoRoute(
    path: '/schedule/event-details',
    name: 'event-details',
    pageBuilder: (context, state) {
      final event = state.extra as EventModel;
      return SharedAxisPage(
        key: state.pageKey,
        child: EventDetailsScreen(event: event),
      );
    },
  ),
  GoRoute(
    path: '/schedule/edit-event',
    name: 'edit-event',
    pageBuilder: (context, state) {
      final event = state.extra as EventModel;
      return SharedAxisPage(
        key: state.pageKey,
        child: EventDetailsScreen(event: event),
      );
    },
  ),

  // Exam routes
  GoRoute(
    path: '/exams/results',
    name: 'exam-results',
    pageBuilder: (context, state) {
      final exam = state.extra as ExamModel;
      return SharedAxisPage(
        key: state.pageKey,
        child: ExamResultsScreen(exam: exam),
      );
    },
  ),
  GoRoute(
    path: '/exams/details',
    name: 'exam-details',
    pageBuilder: (context, state) {
      final exam = state.extra as ExamModel;
      return SharedAxisPage(
        key: state.pageKey,
        child: TakeExamScreen(exam: exam),
      );
    },
  ),
  GoRoute(
    path: '/exams/take',
    name: 'take-exam',
    pageBuilder: (context, state) {
      final exam = state.extra as ExamModel;
      return SharedAxisPage(
        key: state.pageKey,
        child: TakeExamScreen(exam: exam),
      );
    },
  ),

  // Quiz routes
  GoRoute(
    path: '/quiz/take',
    name: 'take-quiz',
    pageBuilder: (context, state) {
      final quiz = state.extra as QuizModel;
      return SharedAxisPage(
        key: state.pageKey,
        child: QuizTakingScreen(quiz: quiz),
      );
    },
  ),
  GoRoute(
    path: '/quiz/results',
    name: 'quiz-results',
    pageBuilder: (context, state) {
      final extraData = state.extra as Map<String, dynamic>;
      final quiz = extraData['quiz'] as QuizModel;
      final score = extraData['score'] as int;
      final totalPoints = extraData['totalPoints'] as int;
      final timeTaken = extraData['timeTaken'] as Duration;
      final passed = extraData['passed'] as bool;
      final answers = extraData['answers'] as Map<String, dynamic>;
      return SharedAxisPage(
        key: state.pageKey,
        child: QuizResultsScreen(
          quiz: quiz,
          score: score,
          totalPoints: totalPoints,
          timeTaken: timeTaken,
          passed: passed,
          answers: answers,
        ),
      );
    },
  ),

  // Task routes
  GoRoute(
    path: '/tasks/add',
    name: 'add-task',
    pageBuilder: (context, state) => SharedAxisPage(
      key: state.pageKey,
      child: const AddTaskScreen(),
    ),
  ),
  GoRoute(
    path: '/tasks/details',
    name: 'task-details',
    pageBuilder: (context, state) {
      final task = state.extra as TaskModel;
      return SharedAxisPage(
        key: state.pageKey,
        child: TaskDetailsScreen(task: task),
      );
    },
  ),
  GoRoute(
    path: '/tasks/edit',
    name: 'edit-task',
    pageBuilder: (context, state) {
      final task = state.extra as TaskModel;
      return SharedAxisPage(
        key: state.pageKey,
        child: TaskDetailsScreen(task: task),
      );
    },
  ),

  // Collaboration routes
  GoRoute(
    path: '/collaboration/group',
    name: 'study-group',
    pageBuilder: (context, state) => SharedAxisPage(
      key: state.pageKey,
      child: const StudyGroupsScreen(),
    ),
  ),
];
