import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import '../../features/admin/shared/widgets/admin_shell.dart';
import '../../features/admin/shared/widgets/placeholder_screen.dart';
import '../deferred_route_loader.dart';

// Deferred screen imports for code splitting
import '../../features/admin/authentication/presentation/admin_login_screen.dart'
    deferred as admin_login;
import '../../features/admin/dashboard/presentation/admin_dashboard_screen.dart'
    deferred as admin_dashboard;
import '../../features/admin/users/presentation/students_list_screen.dart'
    deferred as admin_students_list;
import '../../features/admin/users/presentation/student_detail_screen.dart'
    deferred as admin_student_detail;
import '../../features/admin/users/presentation/student_form_screen.dart'
    deferred as admin_student_form;
import '../../features/admin/users/presentation/institutions_list_screen.dart'
    deferred as admin_institutions_list;
import '../../features/admin/users/presentation/institution_detail_screen.dart'
    deferred as admin_institution_detail;
import '../../features/admin/users/presentation/institution_form_screen.dart'
    deferred as admin_institution_form;
import '../../features/admin/users/presentation/parents_list_screen.dart'
    deferred as admin_parents_list;
import '../../features/admin/users/presentation/parent_detail_screen.dart'
    deferred as admin_parent_detail;
import '../../features/admin/users/presentation/parent_form_screen.dart'
    deferred as admin_parent_form;
import '../../features/admin/users/presentation/counselors_list_screen.dart'
    deferred as admin_counselors_list;
import '../../features/admin/users/presentation/counselor_detail_screen.dart'
    deferred as admin_counselor_detail;
import '../../features/admin/users/presentation/counselor_form_screen.dart'
    deferred as admin_counselor_form;
import '../../features/admin/users/presentation/recommenders_list_screen.dart'
    deferred as admin_recommenders_list;
import '../../features/admin/users/presentation/recommender_detail_screen.dart'
    deferred as admin_recommender_detail;
import '../../features/admin/users/presentation/recommender_form_screen.dart'
    deferred as admin_recommender_form;
import '../../features/admin/users/presentation/admins_list_screen.dart'
    deferred as admin_admins_list;
import '../../features/admin/users/presentation/admin_form_screen.dart'
    deferred as admin_admin_form;
import '../../features/admin/system/presentation/audit_log_screen.dart'
    deferred as admin_audit_log;
import '../../features/admin/finance/presentation/transactions_screen.dart'
    deferred as admin_transactions;
import '../../features/admin/content/presentation/content_management_screen.dart'
    deferred as admin_content_mgmt;
import '../../features/admin/system/presentation/system_settings_screen.dart'
    deferred as admin_system_settings;
import '../../features/admin/analytics/presentation/analytics_dashboard_screen.dart'
    deferred as admin_analytics_dash;
import '../../features/admin/communications/presentation/communications_hub_screen.dart'
    deferred as admin_communications;
import '../../features/admin/support/presentation/support_tickets_screen.dart'
    deferred as admin_support_tickets;
import '../../features/admin/support/presentation/live_chat_screen.dart'
    deferred as admin_live_chat;
import '../../features/admin/support/presentation/knowledge_base_screen.dart'
    deferred as admin_knowledge_base;
import '../../features/admin/support/presentation/user_lookup_screen.dart'
    deferred as admin_user_lookup;
import '../../features/admin/cookies/presentation/consent_analytics_screen.dart'
    deferred as admin_consent_analytics;
import '../../features/admin/cookies/presentation/user_data_viewer_screen.dart'
    deferred as admin_user_data;
import '../../features/admin/chatbot/presentation/admin_chatbot_dashboard.dart'
    deferred as admin_chatbot_dash;
import '../../features/admin/chatbot/presentation/conversation_history_screen.dart'
    deferred as admin_chatbot_history;
import '../../features/admin/chatbot/presentation/conversation_detail_screen.dart'
    deferred as admin_chatbot_detail;
import '../../features/admin/chatbot/presentation/faq_management_screen.dart'
    deferred as admin_chatbot_faq;
import '../../features/admin/chatbot/presentation/support_queue_screen.dart'
    deferred as admin_chatbot_queue;
import '../../features/admin/chatbot/presentation/live_conversations_screen.dart'
    deferred as admin_chatbot_live;
import '../../features/admin/content/presentation/page_content_list_screen.dart'
    deferred as admin_page_list;
import '../../features/admin/content/presentation/page_content_editor_screen.dart'
    deferred as admin_page_editor;
import '../../features/admin/content/presentation/curriculum_management_screen.dart'
    deferred as admin_curriculum;
import '../../features/admin/content/presentation/resources_management_screen.dart'
    deferred as admin_resources;
import '../../features/admin/content/presentation/assessments_management_screen.dart'
    deferred as admin_assessments;
import '../../features/admin/finance/presentation/refunds_screen.dart'
    deferred as admin_refunds;
import '../../features/admin/finance/presentation/settlements_screen.dart'
    deferred as admin_settlements;
import '../../features/admin/finance/presentation/fraud_detection_screen.dart'
    deferred as admin_fraud;
import '../../features/admin/finance/presentation/fee_config_screen.dart'
    deferred as admin_fee_config;
import '../../features/admin/analytics/presentation/data_explorer_screen.dart'
    deferred as admin_data_explorer;
import '../../features/admin/analytics/presentation/sql_queries_screen.dart'
    deferred as admin_sql;
import '../../features/admin/analytics/presentation/dashboards_screen.dart'
    deferred as admin_dashboards;
import '../../features/admin/analytics/presentation/exports_screen.dart'
    deferred as admin_exports;
import '../../features/admin/notifications/presentation/notifications_center_screen.dart'
    deferred as admin_notifications;
import '../../features/admin/reports/presentation/reports_screen.dart'
    deferred as admin_reports;
import '../../features/institution/courses/presentation/course_content_builder_screen.dart'
    deferred as admin_course_builder;
import '../../features/admin/approvals/presentation/screens/approval_dashboard_screen.dart'
    deferred as admin_approval_dash;
import '../../features/admin/approvals/presentation/screens/approval_list_screen.dart'
    deferred as admin_approval_list;
import '../../features/admin/approvals/presentation/screens/approval_detail_screen.dart'
    deferred as admin_approval_detail;
import '../../features/admin/approvals/presentation/screens/create_approval_request_screen.dart'
    deferred as admin_approval_create;
import '../../features/admin/approvals/presentation/screens/approval_config_screen.dart'
    deferred as admin_approval_config;

/// Custom page with no transition for seamless admin navigation
class NoTransitionPage<T> extends CustomTransitionPage<T> {
  NoTransitionPage({required super.child, super.key})
      : super(
          transitionDuration: Duration.zero,
          reverseTransitionDuration: Duration.zero,
          transitionsBuilder: (context, animation, secondaryAnimation, child) => child,
        );
}

/// Admin-specific routes (all admin roles)
List<RouteBase> adminRoutes = [
  // Admin login (outside shell - no sidebar/topbar)
  GoRoute(
    path: '/admin/login',
    name: 'admin-login',
    builder: (context, state) => DeferredRouteLoader(
      loader: admin_login.loadLibrary,
      childBuilder: () => admin_login.AdminLoginScreen(),
    ),
  ),

  // All admin routes wrapped in ShellRoute for persistent sidebar
  ShellRoute(
    builder: (context, state, child) => AdminShell(child: child),
    routes: [
      // Admin dashboard
      GoRoute(
        path: '/admin/dashboard',
        name: 'admin-dashboard',
        pageBuilder: (context, state) => NoTransitionPage(
          child: DeferredRouteLoader(
            loader: admin_dashboard.loadLibrary,
            childBuilder: () => admin_dashboard.AdminDashboardScreen(),
          ),
        ),
      ),

      // User Management
      GoRoute(
        path: '/admin/users/students',
        name: 'admin-students',
        pageBuilder: (context, state) => NoTransitionPage(
          child: DeferredRouteLoader(
            loader: admin_students_list.loadLibrary,
            childBuilder: () => admin_students_list.StudentsListScreen(),
          ),
        ),
        routes: [
          GoRoute(
            path: 'create',
            name: 'admin-student-create',
            pageBuilder: (context, state) => NoTransitionPage(
              child: DeferredRouteLoader(
                loader: admin_student_form.loadLibrary,
                childBuilder: () => admin_student_form.StudentFormScreen(),
              ),
            ),
          ),
          GoRoute(
            path: ':id',
            name: 'admin-student-detail',
            pageBuilder: (context, state) {
              final studentId = state.pathParameters['id']!;
              return NoTransitionPage(
                child: DeferredRouteLoader(
                  loader: admin_student_detail.loadLibrary,
                  childBuilder: () => admin_student_detail.StudentDetailScreen(studentId: studentId),
                ),
              );
            },
            routes: [
              GoRoute(
                path: 'edit',
                name: 'admin-student-edit',
                pageBuilder: (context, state) {
                  final studentId = state.pathParameters['id']!;
                  return NoTransitionPage(
                    child: DeferredRouteLoader(
                      loader: admin_student_form.loadLibrary,
                      childBuilder: () => admin_student_form.StudentFormScreen(studentId: studentId),
                    ),
                  );
                },
              ),
            ],
          ),
        ],
      ),
      GoRoute(
        path: '/admin/users/institutions',
        name: 'admin-institutions',
        pageBuilder: (context, state) => NoTransitionPage(
          child: DeferredRouteLoader(
            loader: admin_institutions_list.loadLibrary,
            childBuilder: () => admin_institutions_list.InstitutionsListScreen(),
          ),
        ),
        routes: [
          GoRoute(
            path: 'create',
            name: 'admin-institution-create',
            pageBuilder: (context, state) => NoTransitionPage(
              child: DeferredRouteLoader(
                loader: admin_institution_form.loadLibrary,
                childBuilder: () => admin_institution_form.InstitutionFormScreen(),
              ),
            ),
          ),
          GoRoute(
            path: ':id',
            name: 'admin-institution-detail',
            pageBuilder: (context, state) {
              final institutionId = state.pathParameters['id']!;
              return NoTransitionPage(
                child: DeferredRouteLoader(
                  loader: admin_institution_detail.loadLibrary,
                  childBuilder: () => admin_institution_detail.InstitutionDetailScreen(institutionId: institutionId),
                ),
              );
            },
            routes: [
              GoRoute(
                path: 'edit',
                name: 'admin-institution-edit',
                pageBuilder: (context, state) {
                  final institutionId = state.pathParameters['id']!;
                  return NoTransitionPage(
                    child: DeferredRouteLoader(
                      loader: admin_institution_form.loadLibrary,
                      childBuilder: () => admin_institution_form.InstitutionFormScreen(institutionId: institutionId),
                    ),
                  );
                },
              ),
            ],
          ),
        ],
      ),
      GoRoute(
        path: '/admin/users/parents',
        name: 'admin-parents',
        pageBuilder: (context, state) => NoTransitionPage(
          child: DeferredRouteLoader(
            loader: admin_parents_list.loadLibrary,
            childBuilder: () => admin_parents_list.ParentsListScreen(),
          ),
        ),
        routes: [
          GoRoute(
            path: 'create',
            name: 'admin-parent-create',
            pageBuilder: (context, state) => NoTransitionPage(
              child: DeferredRouteLoader(
                loader: admin_parent_form.loadLibrary,
                childBuilder: () => admin_parent_form.ParentFormScreen(),
              ),
            ),
          ),
          GoRoute(
            path: ':id',
            name: 'admin-parent-detail',
            pageBuilder: (context, state) {
              final parentId = state.pathParameters['id']!;
              return NoTransitionPage(
                child: DeferredRouteLoader(
                  loader: admin_parent_detail.loadLibrary,
                  childBuilder: () => admin_parent_detail.ParentDetailScreen(parentId: parentId),
                ),
              );
            },
            routes: [
              GoRoute(
                path: 'edit',
                name: 'admin-parent-edit',
                pageBuilder: (context, state) {
                  final parentId = state.pathParameters['id']!;
                  return NoTransitionPage(
                    child: DeferredRouteLoader(
                      loader: admin_parent_form.loadLibrary,
                      childBuilder: () => admin_parent_form.ParentFormScreen(parentId: parentId),
                    ),
                  );
                },
              ),
            ],
          ),
        ],
      ),
      GoRoute(
        path: '/admin/users/counselors',
        name: 'admin-counselors',
        pageBuilder: (context, state) => NoTransitionPage(
          child: DeferredRouteLoader(
            loader: admin_counselors_list.loadLibrary,
            childBuilder: () => admin_counselors_list.CounselorsListScreen(),
          ),
        ),
        routes: [
          GoRoute(
            path: 'create',
            name: 'admin-counselor-create',
            pageBuilder: (context, state) => NoTransitionPage(
              child: DeferredRouteLoader(
                loader: admin_counselor_form.loadLibrary,
                childBuilder: () => admin_counselor_form.CounselorFormScreen(),
              ),
            ),
          ),
          GoRoute(
            path: ':id',
            name: 'admin-counselor-detail',
            pageBuilder: (context, state) {
              final counselorId = state.pathParameters['id']!;
              return NoTransitionPage(
                child: DeferredRouteLoader(
                  loader: admin_counselor_detail.loadLibrary,
                  childBuilder: () => admin_counselor_detail.CounselorDetailScreen(counselorId: counselorId),
                ),
              );
            },
            routes: [
              GoRoute(
                path: 'edit',
                name: 'admin-counselor-edit',
                pageBuilder: (context, state) {
                  final counselorId = state.pathParameters['id']!;
                  return NoTransitionPage(
                    child: DeferredRouteLoader(
                      loader: admin_counselor_form.loadLibrary,
                      childBuilder: () => admin_counselor_form.CounselorFormScreen(counselorId: counselorId),
                    ),
                  );
                },
              ),
            ],
          ),
        ],
      ),
      GoRoute(
        path: '/admin/users/recommenders',
        name: 'admin-recommenders',
        pageBuilder: (context, state) => NoTransitionPage(
          child: DeferredRouteLoader(
            loader: admin_recommenders_list.loadLibrary,
            childBuilder: () => admin_recommenders_list.RecommendersListScreen(),
          ),
        ),
        routes: [
          GoRoute(
            path: 'create',
            name: 'admin-recommender-create',
            pageBuilder: (context, state) => NoTransitionPage(
              child: DeferredRouteLoader(
                loader: admin_recommender_form.loadLibrary,
                childBuilder: () => admin_recommender_form.RecommenderFormScreen(),
              ),
            ),
          ),
          GoRoute(
            path: ':id',
            name: 'admin-recommender-detail',
            pageBuilder: (context, state) {
              final recommenderId = state.pathParameters['id']!;
              return NoTransitionPage(
                child: DeferredRouteLoader(
                  loader: admin_recommender_detail.loadLibrary,
                  childBuilder: () => admin_recommender_detail.RecommenderDetailScreen(recommenderId: recommenderId),
                ),
              );
            },
            routes: [
              GoRoute(
                path: 'edit',
                name: 'admin-recommender-edit',
                pageBuilder: (context, state) {
                  final recommenderId = state.pathParameters['id']!;
                  return NoTransitionPage(
                    child: DeferredRouteLoader(
                      loader: admin_recommender_form.loadLibrary,
                      childBuilder: () => admin_recommender_form.RecommenderFormScreen(recommenderId: recommenderId),
                    ),
                  );
                },
              ),
            ],
          ),
        ],
      ),

      // Admin User Management
      GoRoute(
        path: '/admin/system/admins',
        name: 'admin-admins',
        pageBuilder: (context, state) => NoTransitionPage(
          child: DeferredRouteLoader(
            loader: admin_admins_list.loadLibrary,
            childBuilder: () => admin_admins_list.AdminsListScreen(),
          ),
        ),
        routes: [
          GoRoute(
            path: 'create',
            name: 'admin-admin-create',
            pageBuilder: (context, state) => NoTransitionPage(
              child: DeferredRouteLoader(
                loader: admin_admin_form.loadLibrary,
                childBuilder: () => admin_admin_form.AdminFormScreen(),
              ),
            ),
          ),
          GoRoute(
            path: ':id',
            name: 'admin-admin-detail',
            pageBuilder: (context, state) {
              final adminId = state.pathParameters['id']!;
              return NoTransitionPage(
                child: DeferredRouteLoader(
                  loader: admin_admin_form.loadLibrary,
                  childBuilder: () => admin_admin_form.AdminFormScreen(adminId: adminId),
                ),
              );
            },
            routes: [
              GoRoute(
                path: 'edit',
                name: 'admin-admin-edit',
                pageBuilder: (context, state) {
                  final adminId = state.pathParameters['id']!;
                  return NoTransitionPage(
                    child: DeferredRouteLoader(
                      loader: admin_admin_form.loadLibrary,
                      childBuilder: () => admin_admin_form.AdminFormScreen(adminId: adminId),
                    ),
                  );
                },
              ),
            ],
          ),
        ],
      ),

      // Financial Management
      GoRoute(
        path: '/admin/finance/transactions',
        name: 'admin-transactions',
        pageBuilder: (context, state) => NoTransitionPage(
          child: DeferredRouteLoader(
            loader: admin_transactions.loadLibrary,
            childBuilder: () => admin_transactions.TransactionsScreen(),
          ),
        ),
      ),

      // Chatbot Management
      GoRoute(
        path: '/admin/chatbot',
        name: 'admin-chatbot',
        pageBuilder: (context, state) => NoTransitionPage(
          child: DeferredRouteLoader(
            loader: admin_chatbot_dash.loadLibrary,
            childBuilder: () => admin_chatbot_dash.AdminChatbotDashboard(),
          ),
        ),
      ),
      GoRoute(
        path: '/admin/chatbot/conversations',
        name: 'admin-chatbot-conversations',
        pageBuilder: (context, state) => NoTransitionPage(
          child: DeferredRouteLoader(
            loader: admin_chatbot_history.loadLibrary,
            childBuilder: () => admin_chatbot_history.ConversationHistoryScreen(),
          ),
        ),
      ),
      GoRoute(
        path: '/admin/chatbot/conversation/:id',
        name: 'admin-chatbot-conversation-detail',
        pageBuilder: (context, state) {
          final conversationId = state.pathParameters['id']!;
          return NoTransitionPage(
            child: DeferredRouteLoader(
              loader: admin_chatbot_detail.loadLibrary,
              childBuilder: () => admin_chatbot_detail.ConversationDetailScreen(conversationId: conversationId),
            ),
          );
        },
      ),
      GoRoute(
        path: '/admin/chatbot/faqs',
        name: 'admin-chatbot-faqs',
        pageBuilder: (context, state) => NoTransitionPage(
          child: DeferredRouteLoader(
            loader: admin_chatbot_faq.loadLibrary,
            childBuilder: () => admin_chatbot_faq.FAQManagementScreen(),
          ),
        ),
      ),
      GoRoute(
        path: '/admin/chatbot/queue',
        name: 'admin-chatbot-queue',
        pageBuilder: (context, state) => NoTransitionPage(
          child: DeferredRouteLoader(
            loader: admin_chatbot_queue.loadLibrary,
            childBuilder: () => admin_chatbot_queue.SupportQueueScreen(),
          ),
        ),
      ),
      GoRoute(
        path: '/admin/chatbot/live',
        name: 'admin-chatbot-live',
        pageBuilder: (context, state) => NoTransitionPage(
          child: DeferredRouteLoader(
            loader: admin_chatbot_live.loadLibrary,
            childBuilder: () => admin_chatbot_live.LiveConversationsScreen(),
          ),
        ),
      ),

      // Content Management
      GoRoute(
        path: '/admin/content',
        name: 'admin-content',
        pageBuilder: (context, state) => NoTransitionPage(
          child: DeferredRouteLoader(
            loader: admin_content_mgmt.loadLibrary,
            childBuilder: () => admin_content_mgmt.ContentManagementScreen(),
          ),
        ),
        routes: [
          GoRoute(
            path: 'courses',
            name: 'admin-content-courses',
            pageBuilder: (context, state) => NoTransitionPage(
              child: DeferredRouteLoader(
                loader: admin_content_mgmt.loadLibrary,
                childBuilder: () => admin_content_mgmt.ContentManagementScreen(pageTitle: 'Courses'),
              ),
            ),
          ),
          GoRoute(
            path: 'curriculum',
            name: 'admin-content-curriculum',
            pageBuilder: (context, state) => NoTransitionPage(
              child: DeferredRouteLoader(
                loader: admin_curriculum.loadLibrary,
                childBuilder: () => admin_curriculum.CurriculumManagementScreen(),
              ),
            ),
          ),
          GoRoute(
            path: 'resources',
            name: 'admin-content-resources',
            pageBuilder: (context, state) => NoTransitionPage(
              child: DeferredRouteLoader(
                loader: admin_resources.loadLibrary,
                childBuilder: () => admin_resources.ResourcesManagementScreen(),
              ),
            ),
          ),
          GoRoute(
            path: 'assessments',
            name: 'admin-content-assessments',
            pageBuilder: (context, state) => NoTransitionPage(
              child: DeferredRouteLoader(
                loader: admin_assessments.loadLibrary,
                childBuilder: () => admin_assessments.AssessmentsManagementScreen(),
              ),
            ),
          ),
          // Course content builder for editing
          GoRoute(
            path: ':id/edit',
            name: 'admin-content-edit',
            pageBuilder: (context, state) {
              final courseId = state.pathParameters['id']!;
              return NoTransitionPage(
                child: DeferredRouteLoader(
                  loader: admin_course_builder.loadLibrary,
                  childBuilder: () => admin_course_builder.CourseContentBuilderScreen(courseId: courseId),
                ),
              );
            },
          ),
        ],
      ),

      // Page Content Management (CMS for footer pages)
      GoRoute(
        path: '/admin/pages',
        name: 'admin-pages',
        pageBuilder: (context, state) => NoTransitionPage(
          child: DeferredRouteLoader(
            loader: admin_page_list.loadLibrary,
            childBuilder: () => admin_page_list.PageContentListScreen(),
          ),
        ),
        routes: [
          GoRoute(
            path: ':slug/edit',
            name: 'admin-page-edit',
            pageBuilder: (context, state) {
              final pageSlug = state.pathParameters['slug']!;
              return NoTransitionPage(
                child: DeferredRouteLoader(
                  loader: admin_page_editor.loadLibrary,
                  childBuilder: () => admin_page_editor.PageContentEditorScreen(pageSlug: pageSlug),
                ),
              );
            },
          ),
        ],
      ),

      // System Administration
      GoRoute(
        path: '/admin/system',
        name: 'admin-system',
        pageBuilder: (context, state) => NoTransitionPage(
          child: const AdminPlaceholderScreen(
            title: 'System Administration',
            description: 'Manage system settings, admins, and audit logs. Use the sidebar to access specific system features.',
            icon: Icons.settings,
          ),
        ),
      ),
      GoRoute(
        path: '/admin/system/audit-logs',
        name: 'admin-audit-logs',
        pageBuilder: (context, state) => NoTransitionPage(
          child: DeferredRouteLoader(
            loader: admin_audit_log.loadLibrary,
            childBuilder: () => admin_audit_log.AuditLogScreen(),
          ),
        ),
      ),
      GoRoute(
        path: '/admin/system/settings',
        name: 'admin-system-settings',
        pageBuilder: (context, state) => NoTransitionPage(
          child: DeferredRouteLoader(
            loader: admin_system_settings.loadLibrary,
            childBuilder: () => admin_system_settings.SystemSettingsScreen(),
          ),
        ),
      ),

      // Cookie Management
      GoRoute(
        path: '/admin/cookies/analytics',
        name: 'admin-consent-analytics',
        pageBuilder: (context, state) => NoTransitionPage(
          child: DeferredRouteLoader(
            loader: admin_consent_analytics.loadLibrary,
            childBuilder: () => admin_consent_analytics.ConsentAnalyticsScreen(),
          ),
        ),
      ),
      GoRoute(
        path: '/admin/cookies/users',
        name: 'admin-user-data',
        pageBuilder: (context, state) => NoTransitionPage(
          child: DeferredRouteLoader(
            loader: admin_user_data.loadLibrary,
            childBuilder: () => admin_user_data.UserDataViewerScreen(),
          ),
        ),
      ),

      // Analytics & Reports
      GoRoute(
        path: '/admin/analytics',
        name: 'admin-analytics',
        pageBuilder: (context, state) => NoTransitionPage(
          child: DeferredRouteLoader(
            loader: admin_analytics_dash.loadLibrary,
            childBuilder: () => admin_analytics_dash.AnalyticsDashboardScreen(),
          ),
        ),
      ),

      // Communications
      GoRoute(
        path: '/admin/communications',
        name: 'admin-communications',
        pageBuilder: (context, state) => NoTransitionPage(
          child: DeferredRouteLoader(
            loader: admin_communications.loadLibrary,
            childBuilder: () => admin_communications.CommunicationsHubScreen(),
          ),
        ),
      ),

      // Notifications
      GoRoute(
        path: '/admin/notifications',
        name: 'admin-notifications',
        pageBuilder: (context, state) => NoTransitionPage(
          child: DeferredRouteLoader(
            loader: admin_notifications.loadLibrary,
            childBuilder: () => admin_notifications.NotificationsCenterScreen(),
          ),
        ),
      ),

      // Support & Helpdesk
      GoRoute(
        path: '/admin/support/tickets',
        name: 'admin-support-tickets',
        pageBuilder: (context, state) => NoTransitionPage(
          child: DeferredRouteLoader(
            loader: admin_support_tickets.loadLibrary,
            childBuilder: () => admin_support_tickets.SupportTicketsScreen(),
          ),
        ),
      ),

      // General User Management (for Regional Admin)
      GoRoute(
        path: '/admin/users',
        name: 'admin-users',
        pageBuilder: (context, state) => NoTransitionPage(
          child: const AdminPlaceholderScreen(
            title: 'User Management',
            description: 'Manage all users in the system. Use the sidebar menu to access specific user types.',
            icon: Icons.people,
          ),
        ),
      ),

      // Content Admin shortcut route (maps to /admin/content/courses)
      GoRoute(
        path: '/admin/courses',
        name: 'admin-courses-shortcut',
        pageBuilder: (context, state) => NoTransitionPage(
          child: DeferredRouteLoader(
            loader: admin_content_mgmt.loadLibrary,
            childBuilder: () => admin_content_mgmt.ContentManagementScreen(pageTitle: 'Courses'),
          ),
        ),
      ),

      // Content Admin shortcut routes (redirect to /admin/content/...)
      GoRoute(
        path: '/admin/curriculum',
        name: 'admin-curriculum-management',
        redirect: (context, state) => '/admin/content/curriculum',
      ),
      GoRoute(
        path: '/admin/assessments',
        name: 'admin-assessments',
        redirect: (context, state) => '/admin/content/assessments',
      ),
      GoRoute(
        path: '/admin/resources',
        name: 'admin-resources-management',
        redirect: (context, state) => '/admin/content/resources',
      ),

      // Support Admin Routes
      GoRoute(
        path: '/admin/tickets',
        name: 'admin-tickets',
        redirect: (context, state) => '/admin/support/tickets',
      ),
      GoRoute(
        path: '/admin/chat',
        name: 'admin-live-chat',
        pageBuilder: (context, state) => NoTransitionPage(
          child: DeferredRouteLoader(
            loader: admin_live_chat.loadLibrary,
            childBuilder: () => admin_live_chat.LiveChatScreen(),
          ),
        ),
      ),
      GoRoute(
        path: '/admin/knowledge-base',
        name: 'admin-knowledge-base',
        pageBuilder: (context, state) => NoTransitionPage(
          child: DeferredRouteLoader(
            loader: admin_knowledge_base.loadLibrary,
            childBuilder: () => admin_knowledge_base.KnowledgeBaseScreen(),
          ),
        ),
      ),
      GoRoute(
        path: '/admin/user-lookup',
        name: 'admin-user-lookup',
        pageBuilder: (context, state) => NoTransitionPage(
          child: DeferredRouteLoader(
            loader: admin_user_lookup.loadLibrary,
            childBuilder: () => admin_user_lookup.UserLookupScreen(),
          ),
        ),
      ),

      // Finance Admin Routes
      GoRoute(
        path: '/admin/transactions',
        name: 'admin-all-transactions',
        pageBuilder: (context, state) => NoTransitionPage(
          child: DeferredRouteLoader(
            loader: admin_transactions.loadLibrary,
            childBuilder: () => admin_transactions.TransactionsScreen(),
          ),
        ),
      ),
      GoRoute(
        path: '/admin/refunds',
        name: 'admin-refunds',
        pageBuilder: (context, state) => NoTransitionPage(
          child: DeferredRouteLoader(
            loader: admin_refunds.loadLibrary,
            childBuilder: () => admin_refunds.RefundsScreen(),
          ),
        ),
      ),
      GoRoute(
        path: '/admin/settlements',
        name: 'admin-settlements',
        pageBuilder: (context, state) => NoTransitionPage(
          child: DeferredRouteLoader(
            loader: admin_settlements.loadLibrary,
            childBuilder: () => admin_settlements.SettlementsScreen(),
          ),
        ),
      ),
      GoRoute(
        path: '/admin/fraud',
        name: 'admin-fraud-detection',
        pageBuilder: (context, state) => NoTransitionPage(
          child: DeferredRouteLoader(
            loader: admin_fraud.loadLibrary,
            childBuilder: () => admin_fraud.FraudDetectionScreen(),
          ),
        ),
      ),
      GoRoute(
        path: '/admin/reports',
        name: 'admin-financial-reports',
        pageBuilder: (context, state) => NoTransitionPage(
          child: DeferredRouteLoader(
            loader: admin_reports.loadLibrary,
            childBuilder: () => admin_reports.ReportsScreen(),
          ),
        ),
      ),
      GoRoute(
        path: '/admin/fee-config',
        name: 'admin-fee-config',
        pageBuilder: (context, state) => NoTransitionPage(
          child: DeferredRouteLoader(
            loader: admin_fee_config.loadLibrary,
            childBuilder: () => admin_fee_config.FeeConfigScreen(),
          ),
        ),
      ),

      // Analytics Admin Routes
      GoRoute(
        path: '/admin/data-explorer',
        name: 'admin-data-explorer',
        pageBuilder: (context, state) => NoTransitionPage(
          child: DeferredRouteLoader(
            loader: admin_data_explorer.loadLibrary,
            childBuilder: () => admin_data_explorer.DataExplorerScreen(),
          ),
        ),
      ),
      GoRoute(
        path: '/admin/sql',
        name: 'admin-sql-queries',
        pageBuilder: (context, state) => NoTransitionPage(
          child: DeferredRouteLoader(
            loader: admin_sql.loadLibrary,
            childBuilder: () => admin_sql.SqlQueriesScreen(),
          ),
        ),
      ),
      GoRoute(
        path: '/admin/dashboards',
        name: 'admin-custom-dashboards',
        pageBuilder: (context, state) => NoTransitionPage(
          child: DeferredRouteLoader(
            loader: admin_dashboards.loadLibrary,
            childBuilder: () => admin_dashboards.DashboardsScreen(),
          ),
        ),
      ),
      GoRoute(
        path: '/admin/exports',
        name: 'admin-data-exports',
        pageBuilder: (context, state) => NoTransitionPage(
          child: DeferredRouteLoader(
            loader: admin_exports.loadLibrary,
            childBuilder: () => admin_exports.ExportsScreen(),
          ),
        ),
      ),

      // Regional Admin Institutions Route
      GoRoute(
        path: '/admin/institutions',
        name: 'admin-all-institutions',
        pageBuilder: (context, state) => NoTransitionPage(
          child: const AdminPlaceholderScreen(
            title: 'Institutions Management',
            description: 'Manage all educational institutions in your region.',
            icon: Icons.business,
          ),
        ),
      ),

      // Approval Workflow Routes
      GoRoute(
        path: '/admin/approvals',
        name: 'admin-approvals',
        pageBuilder: (context, state) => NoTransitionPage(
          child: DeferredRouteLoader(
            loader: admin_approval_dash.loadLibrary,
            childBuilder: () => admin_approval_dash.ApprovalDashboardScreen(),
          ),
        ),
      ),
      GoRoute(
        path: '/admin/approvals/list',
        name: 'admin-approvals-list',
        pageBuilder: (context, state) => NoTransitionPage(
          child: DeferredRouteLoader(
            loader: admin_approval_list.loadLibrary,
            childBuilder: () => admin_approval_list.ApprovalListScreen(),
          ),
        ),
      ),
      GoRoute(
        path: '/admin/approvals/create',
        name: 'admin-approval-create',
        pageBuilder: (context, state) => NoTransitionPage(
          child: DeferredRouteLoader(
            loader: admin_approval_create.loadLibrary,
            childBuilder: () => admin_approval_create.CreateApprovalRequestScreen(),
          ),
        ),
      ),
      GoRoute(
        path: '/admin/approvals/config',
        name: 'admin-approvals-config',
        pageBuilder: (context, state) => NoTransitionPage(
          child: DeferredRouteLoader(
            loader: admin_approval_config.loadLibrary,
            childBuilder: () => admin_approval_config.ApprovalConfigScreen(),
          ),
        ),
      ),
      GoRoute(
        path: '/admin/approvals/:id',
        name: 'admin-approval-detail',
        pageBuilder: (context, state) {
          final approvalId = state.pathParameters['id']!;
          return NoTransitionPage(
            child: DeferredRouteLoader(
              loader: admin_approval_detail.loadLibrary,
              childBuilder: () => admin_approval_detail.ApprovalDetailScreen(requestId: approvalId),
            ),
          );
        },
      ),
    ],
  ),
];
