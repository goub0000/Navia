import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import '../../features/shared/profile/profile_screen.dart' deferred as shared_profile;
import '../../features/shared/profile/edit_profile_screen.dart' deferred as shared_edit_profile;
import '../../features/shared/profile/change_password_screen.dart' deferred as shared_change_password;
import '../../features/shared/settings/settings_screen.dart' deferred as shared_settings;
import '../../features/shared/settings/notification_preferences_screen.dart' deferred as shared_notif_prefs;
import '../../features/shared/cookies/presentation/cookie_settings_screen.dart' deferred as shared_cookie_settings;
import '../../features/shared/notifications/notifications_screen.dart' deferred as shared_notifications;
import '../../features/shared/messages/presentation/messages_list_screen.dart' deferred as shared_messages_list;
import '../../features/shared/messages/presentation/conversation_detail_screen.dart' deferred as shared_conversation;
import '../../features/shared/documents/documents_screen.dart' deferred as shared_documents;
import '../../features/shared/documents/document_viewer_screen.dart' deferred as shared_doc_viewer;
import '../../features/shared/payments/payment_method_screen.dart' deferred as shared_payment_method;
import '../../features/shared/payments/payment_history_screen.dart' deferred as shared_payment_history;
import '../../features/shared/resources/resource_viewer_screen.dart' deferred as shared_resource_viewer;
import '../../features/shared/schedule/add_event_screen.dart' deferred as shared_add_event;
import '../../features/shared/schedule/event_details_screen.dart' deferred as shared_event_details;
import '../../features/shared/exams/exam_results_screen.dart' deferred as shared_exam_results;
import '../../features/shared/exams/take_exam_screen.dart' deferred as shared_take_exam;
import '../../features/shared/quizzes/quiz_taking_screen.dart' deferred as shared_quiz_taking;
import '../../features/shared/quizzes/quiz_results_screen.dart' deferred as shared_quiz_results;
import '../../features/shared/tasks/add_task_screen.dart' deferred as shared_add_task;
import '../../features/shared/tasks/task_details_screen.dart' deferred as shared_task_details;
import '../../features/shared/collaboration/study_groups_screen.dart' deferred as shared_study_groups;

// Model imports for type safety
import '../../features/shared/widgets/schedule_widgets.dart'; // EventModel
import '../../features/shared/widgets/quiz_widgets.dart'; // QuizModel
import '../../features/shared/widgets/task_widgets.dart'; // TaskModel
import '../../features/shared/widgets/exam_widgets.dart'; // ExamModel
import '../../features/shared/widgets/resource_widgets.dart'; // ResourceModel
import '../../core/models/document_model.dart' as doc_model; // Document
import '../../core/widgets/navia_loading_indicator.dart';
import '../transitions/shared_axis_page.dart';
import '../deferred_route_loader.dart';

/// Shared routes available to all authenticated users
List<RouteBase> sharedRoutes = [
  // Profile routes
  GoRoute(
    path: '/profile',
    name: 'profile',
    pageBuilder: (context, state) => SharedAxisPage(
      key: state.pageKey,
      child: DeferredRouteLoader(
        loader: shared_profile.loadLibrary,
        childBuilder: () => shared_profile.ProfileScreen(),
      ),
    ),
  ),
  GoRoute(
    path: '/profile/edit',
    name: 'edit-profile',
    pageBuilder: (context, state) => SharedAxisPage(
      key: state.pageKey,
      child: DeferredRouteLoader(
        loader: shared_edit_profile.loadLibrary,
        childBuilder: () => shared_edit_profile.EditProfileScreen(),
      ),
    ),
  ),
  GoRoute(
    path: '/profile/change-password',
    name: 'change-password',
    pageBuilder: (context, state) => SharedAxisPage(
      key: state.pageKey,
      child: DeferredRouteLoader(
        loader: shared_change_password.loadLibrary,
        childBuilder: () => shared_change_password.ChangePasswordScreen(),
      ),
    ),
  ),

  // Settings routes
  GoRoute(
    path: '/settings',
    name: 'settings',
    pageBuilder: (context, state) => SharedAxisPage(
      key: state.pageKey,
      child: DeferredRouteLoader(
        loader: shared_settings.loadLibrary,
        childBuilder: () => shared_settings.SettingsScreen(),
      ),
    ),
  ),
  GoRoute(
    path: '/settings/notifications',
    name: 'notification-preferences',
    pageBuilder: (context, state) => SharedAxisPage(
      key: state.pageKey,
      child: DeferredRouteLoader(
        loader: shared_notif_prefs.loadLibrary,
        childBuilder: () => shared_notif_prefs.NotificationPreferencesScreen(),
      ),
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
        child: DeferredRouteLoader(
          loader: shared_cookie_settings.loadLibrary,
          childBuilder: () => shared_cookie_settings.CookieSettingsScreen(userId: userId),
        ),
      );
    },
  ),

  // Notifications
  GoRoute(
    path: '/notifications',
    name: 'notifications',
    pageBuilder: (context, state) => SharedAxisPage(
      key: state.pageKey,
      child: DeferredRouteLoader(
        loader: shared_notifications.loadLibrary,
        childBuilder: () => shared_notifications.NotificationsScreen(),
      ),
    ),
  ),

  // Messages
  GoRoute(
    path: '/messages',
    name: 'messages',
    pageBuilder: (context, state) => SharedAxisPage(
      key: state.pageKey,
      child: DeferredRouteLoader(
        loader: shared_messages_list.loadLibrary,
        childBuilder: () => shared_messages_list.MessagesListScreen(),
      ),
    ),
  ),
  GoRoute(
    path: '/messages/:id',
    name: 'chat',
    pageBuilder: (context, state) {
      final conversationId = state.pathParameters['id']!;
      return SharedAxisPage(
        key: state.pageKey,
        child: DeferredRouteLoader(
          loader: shared_conversation.loadLibrary,
          childBuilder: () => shared_conversation.ConversationDetailScreen(
            conversationId: conversationId,
          ),
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
      child: DeferredRouteLoader(
        loader: shared_documents.loadLibrary,
        childBuilder: () => shared_documents.DocumentsScreen(),
      ),
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
        child: DeferredRouteLoader(
          loader: shared_doc_viewer.loadLibrary,
          childBuilder: () => shared_doc_viewer.DocumentViewerScreen(document: document),
        ),
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
        child: DeferredRouteLoader(
          loader: shared_payment_method.loadLibrary,
          childBuilder: () => shared_payment_method.PaymentMethodScreen(
            itemId: extra?['itemId'] ?? '',
            itemName: extra?['itemName'] ?? '',
            itemType: extra?['itemType'] ?? '',
            amount: extra?['amount'] ?? 0.0,
            currency: extra?['currency'] ?? 'USD',
          ),
        ),
      );
    },
  ),
  GoRoute(
    path: '/payments/history',
    name: 'payment-history',
    pageBuilder: (context, state) => SharedAxisPage(
      key: state.pageKey,
      child: DeferredRouteLoader(
        loader: shared_payment_history.loadLibrary,
        childBuilder: () => shared_payment_history.PaymentHistoryScreen(),
      ),
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
        child: DeferredRouteLoader(
          loader: shared_resource_viewer.loadLibrary,
          childBuilder: () => shared_resource_viewer.ResourceViewerScreen(resource: resource),
        ),
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
        child: DeferredRouteLoader(
          loader: shared_add_event.loadLibrary,
          childBuilder: () => shared_add_event.AddEventScreen(initialDate: date),
        ),
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
        child: DeferredRouteLoader(
          loader: shared_event_details.loadLibrary,
          childBuilder: () => shared_event_details.EventDetailsScreen(event: event),
        ),
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
        child: DeferredRouteLoader(
          loader: shared_event_details.loadLibrary,
          childBuilder: () => shared_event_details.EventDetailsScreen(event: event),
        ),
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
        child: DeferredRouteLoader(
          loader: shared_exam_results.loadLibrary,
          childBuilder: () => shared_exam_results.ExamResultsScreen(exam: exam),
        ),
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
        child: DeferredRouteLoader(
          loader: shared_take_exam.loadLibrary,
          childBuilder: () => shared_take_exam.TakeExamScreen(exam: exam),
        ),
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
        child: DeferredRouteLoader(
          loader: shared_take_exam.loadLibrary,
          childBuilder: () => shared_take_exam.TakeExamScreen(exam: exam),
        ),
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
        child: DeferredRouteLoader(
          loader: shared_quiz_taking.loadLibrary,
          childBuilder: () => shared_quiz_taking.QuizTakingScreen(quiz: quiz),
        ),
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
        child: DeferredRouteLoader(
          loader: shared_quiz_results.loadLibrary,
          childBuilder: () => shared_quiz_results.QuizResultsScreen(
            quiz: quiz,
            score: score,
            totalPoints: totalPoints,
            timeTaken: timeTaken,
            passed: passed,
            answers: answers,
          ),
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
      child: DeferredRouteLoader(
        loader: shared_add_task.loadLibrary,
        childBuilder: () => shared_add_task.AddTaskScreen(),
      ),
    ),
  ),
  GoRoute(
    path: '/tasks/details',
    name: 'task-details',
    pageBuilder: (context, state) {
      final task = state.extra as TaskModel;
      return SharedAxisPage(
        key: state.pageKey,
        child: DeferredRouteLoader(
          loader: shared_task_details.loadLibrary,
          childBuilder: () => shared_task_details.TaskDetailsScreen(task: task),
        ),
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
        child: DeferredRouteLoader(
          loader: shared_task_details.loadLibrary,
          childBuilder: () => shared_task_details.TaskDetailsScreen(task: task),
        ),
      );
    },
  ),

  // Collaboration routes
  GoRoute(
    path: '/collaboration/group',
    name: 'study-group',
    pageBuilder: (context, state) => SharedAxisPage(
      key: state.pageKey,
      child: DeferredRouteLoader(
        loader: shared_study_groups.loadLibrary,
        childBuilder: () => shared_study_groups.StudyGroupsScreen(),
      ),
    ),
  ),
];
