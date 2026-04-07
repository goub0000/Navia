# Flow — Complete Project Documentation

> **Flow** is an African EdTech platform that helps students discover, compare, and apply to 18,000+ universities worldwide. It serves five user roles — students, institutions, parents, counselors, and recommenders — plus a full admin panel with six hierarchical admin levels.

---

## Table of Contents

1. [Architecture Overview](#1-architecture-overview)
2. [Tech Stack](#2-tech-stack)
3. [Frontend (Flutter)](#3-frontend-flutter)
   - 3.1 [Features & Screens](#31-features--screens)
   - 3.2 [Core Modules](#32-core-modules)
   - 3.3 [Routing](#33-routing)
   - 3.4 [State Management](#34-state-management)
   - 3.5 [Shared Widgets](#35-shared-widgets)
   - 3.6 [Localization](#36-localization)
   - 3.7 [Theming](#37-theming)
4. [Backend (FastAPI)](#4-backend-fastapi)
   - 4.1 [API Architecture](#41-api-architecture)
   - 4.2 [All Endpoints](#42-all-endpoints)
5. [Database](#5-database)
   - 5.1 [Tables](#51-tables)
   - 5.2 [Migrations](#52-migrations)
6. [ML/AI System](#6-mlai-system)
7. [Data Pipeline](#7-data-pipeline)
8. [CI/CD & Deployment](#8-cicd--deployment)
   - 8.1 [GitHub Actions](#81-github-actions)
   - 8.2 [Docker & Railway](#82-docker--railway)
   - 8.3 [Runtime Config Injection](#83-runtime-config-injection)
9. [Testing](#9-testing)
10. [Project Statistics](#10-project-statistics)

---

## 1. Architecture Overview

```
Flow/                              ← Git root (github.com/goub0000/Flow)
├── lib/                           ← Flutter app (Dart, Riverpod 2.x, feature-first)
│   ├── core/                      ← Shared: api/, models/, services/, theme/, providers/
│   └── features/                  ← 13 feature modules (auth, student, admin, chatbot, etc.)
├── recommendation_service/        ← Python backend (FastAPI + Uvicorn)
│   ├── app/main.py                ← 34 route modules, ~280+ endpoints
│   ├── app/ml/                    ← LightGBM + optional PyTorch recommendation models
│   └── railway.json               ← Nixpacks builder
├── supabase/                      ← Supabase CLI managed
│   ├── config.toml                ← project_id = "Flow"
│   └── migrations/                ← 7 migration files, 73 tables
├── .github/workflows/             ← 5 GitHub Actions workflows
├── Dockerfile                     ← Multi-stage: Flutter build → Node.js serve
├── server.js                      ← Express SPA server (compression, SEO, runtime config)
├── railway.json                   ← Dockerfile builder for frontend
└── requirements.txt               ← Python dependencies
```

### Deployed Services

| Service | URL | Builder |
|---------|-----|---------|
| **Frontend** | https://web-production-bcafe.up.railway.app | Dockerfile (multi-stage) |
| **Backend API** | https://web-production-51e34.up.railway.app | Nixpacks (Python) |
| **Database** | Supabase project `wmuarotbdjhqbyjyslqg` (East US Ohio) | PostgreSQL 17 |

---

## 2. Tech Stack

| Layer | Technology |
|-------|-----------|
| Frontend | Flutter 3.35.6, Dart 3.9.2, Material 3 |
| State Management | flutter_riverpod 3.x + riverpod_annotation |
| Navigation | go_router 17.x |
| Backend | Python, FastAPI, Uvicorn |
| Database | Supabase (PostgreSQL 17) |
| Auth | Supabase Auth |
| Storage | Supabase Storage |
| ML | LightGBM, scikit-learn, optional PyTorch |
| Serialization | freezed + json_serializable |
| Charts | fl_chart 0.68.x |
| Rich Text | flutter_quill, markdown_widget |
| HTTP | Dio (Flutter), httpx (Python) |
| Monitoring | Sentry (errors), Prometheus (metrics) |
| Hosting | Railway (2 services) |
| CI/CD | GitHub Actions (5 workflows) |

### Key Flutter Dependencies

| Category | Package |
|----------|---------|
| State | `flutter_riverpod ^3.0.0`, `riverpod_annotation ^3.0.0` |
| Nav | `go_router ^17.0.0` |
| Backend | `supabase_flutter ^2.5.0` |
| HTTP | `dio ^5.4.0` |
| UI | `google_fonts ^6.1.0`, `animations ^2.0.11`, `fl_chart ^0.68.0` |
| Rich text | `flutter_quill ^11.5.0`, `markdown_widget ^2.3.2` |
| Video | `youtube_player_iframe ^5.2.2` |
| Storage | `shared_preferences ^2.2.2`, `flutter_secure_storage ^9.0.0` |
| Export | `pdf ^3.11.1`, `printing ^5.13.2`, `csv ^6.0.0` |
| Network | `connectivity_plus ^6.0.0` |
| Errors | `sentry_flutter ^8.9.0` |
| Images | `cached_network_image ^3.4.1` |

### Key Python Dependencies

| Category | Package |
|----------|---------|
| Framework | `fastapi >=0.104.0`, `uvicorn[standard] >=0.24.0` |
| Database | `supabase >=2.0.0`, `postgrest >=0.13.0`, `sqlalchemy >=2.0.0` |
| Auth | `python-jose[cryptography]`, `passlib[bcrypt]`, `email-validator` |
| ML | `lightgbm >=4.1.0`, `scikit-learn >=1.3.0`, `numpy`, `pandas` |
| Scraping | `beautifulsoup4`, `selenium`, `lxml` |
| Data APIs | `kaggle >=1.5.0` |
| Rate limit | `slowapi >=0.1.9` |
| Monitoring | `prometheus-client >=0.18.0`, `psutil >=5.9.0` |

---

## 3. Frontend (Flutter)

- **App name**: `flow_edtech` (version 1.0.8+9)
- **Total Dart files**: ~570
- **Total screens/pages**: ~210
- **Localization keys**: ~8,647 (English + French)
- **Platforms**: Web (primary), Android, iOS, Windows, macOS, Linux

### 3.1 Features & Screens

#### Authentication (`lib/features/authentication/`)
6 screens handling login, registration, password reset, email verification, onboarding, and biometric setup.

| Screen | Purpose |
|--------|---------|
| `LoginScreen` | Email/password login |
| `RegisterScreen` | Role-aware registration (student, institution, parent, counselor, recommender) |
| `ForgotPasswordScreen` | Password reset request |
| `EmailVerificationScreen` | Email verification with countdown resend |
| `OnboardingScreen` | Post-registration onboarding |
| `BiometricSetupScreen` | Biometric (fingerprint/face) setup |

**Provider**: `AuthNotifier` (StateNotifier) with `AuthState` — manages user, tokens, loading, errors. Methods: `signIn`, `signUp`, `signOut`, `switchRole`, `resetPassword`, `refreshUser`.

---

#### Student Portal (`lib/features/student/`)
16 screens, 14 providers. Full student experience including applications, courses, progress tracking, counseling, and recommendations.

| Screen | Purpose |
|--------|---------|
| `StudentDashboardScreen` | Tabbed dashboard home |
| `ApplicationsListScreen` | View all applications |
| `ApplicationDetailScreen` | Single application detail |
| `CreateApplicationScreen` | Submit new application |
| `CoursesListScreen` | Browse available courses |
| `CourseDetailScreen` | Course information |
| `MyCoursesScreen` | Enrolled courses |
| `CourseLearningScreen` | Active course learning |
| `ProgressScreen` | Academic progress tracking |
| `RecommendationRequestsScreen` | Request recommendation letters |
| `ParentLinkingScreen` | Link account to parent |
| `BookCounselingSessionScreen` | Book counseling session |
| `ScheduleScreen` | Calendar / schedule |
| `ResourcesScreen` | Study resources |
| `HelpScreen` | Help & support |
| `BrowseUniversitiesScreen` | Explore universities |

---

#### Institution Portal (`lib/features/institution/`)
12 screens, 8 providers. Manage applicants, programs, courses, and counselors.

| Screen | Purpose |
|--------|---------|
| `InstitutionDashboardScreen` | Dashboard overview |
| `ApplicantsListScreen` / `ApplicantDetailScreen` | Manage applicants |
| `ProgramsListScreen` / `CreateProgramScreen` / `ProgramDetailScreen` | Academic programs CRUD |
| `InstitutionCoursesScreen` / `CreateCourseScreen` / `InstitutionCourseDetailScreen` | Course management |
| `CourseContentBuilderScreen` | Rich content builder (flutter_quill) |
| `CoursePermissionsScreen` | Enrollment permission settings |
| `CourseEnrollmentsScreen` | View enrollments |
| `CounselorsManagementScreen` | Manage counselors |

---

#### Parent Portal (`lib/features/parent/`)
6 screens, 4 providers. Monitor children's academic progress, communicate with counselors.

| Screen | Purpose |
|--------|---------|
| `ParentDashboardScreen` | Tabbed dashboard (overview + children) |
| `ChildDetailScreen` | Individual child profile/progress |
| `ChildrenListScreen` | All linked children |
| `ReportsScreen` | Progress reports |
| `MeetingSchedulerScreen` | Schedule meetings with counselors |

---

#### Counselor Portal (`lib/features/counselor/`)
6 screens, 3 providers. Manage students, sessions, and availability.

| Screen | Purpose |
|--------|---------|
| `CounselorDashboardScreen` | Main dashboard |
| `StudentsListScreen` / `StudentDetailScreen` | Student management |
| `SessionsListScreen` / `CreateSessionScreen` | Session management |
| `AvailabilityManagementScreen` | Schedule availability |

---

#### Recommender Portal (`lib/features/recommender/`)
3 screens, 2 providers. Write and manage recommendation letters.

| Screen | Purpose |
|--------|---------|
| `RecommenderDashboardScreen` | Overview of pending/completed requests |
| `RequestsListScreen` | All recommendation requests |
| `WriteRecommendationScreen` | Compose recommendation letter |

---

#### Admin Panel (`lib/features/admin/`)
55+ screens, 17 providers, 16 shared widgets. Full admin panel with role-based access across 6 admin levels.

**Sub-modules**:

| Module | Screens | Description |
|--------|---------|-------------|
| `dashboard/` | 1 | Platform-wide KPIs |
| `users/` | 15 | Full CRUD for all user types |
| `content/` | 6 | Course, curriculum, resource, assessment management + CMS |
| `analytics/` | 5 | Analytics dashboard, data explorer, SQL queries, exports |
| `finance/` | 5 | Transactions, refunds, settlements, fraud detection, fees |
| `chatbot/` | 6 | Chatbot dashboard, conversation history, FAQ management, support queue |
| `support/` | 4 | Support tickets, live chat, knowledge base, user lookup |
| `system/` | 2 | Audit logs, system settings |
| `approvals/` | 5 | Multi-level approval workflow |
| `notifications/` | 1 | Notifications center |
| `communications/` | 1 | Communications hub |
| `cookies/` | 2 | Consent analytics, user data viewer |
| `messaging/` | 1 | Bulk messaging |
| `activity/` | 1 | Activity logs |
| `reports/` | 3 | Reports, report builder, scheduled reports |

**Admin shared widgets**: `AdminShell` (sidebar + topbar layout), `AdminSidebar`, `AdminTopBar`, `AdminDataTable`, `AdminGlobalSearch`, `AdminPermissionGuard`, `AdminRoleBadge`, `AdminBreadcrumb`, `AdminSkeleton`, and more.

---

#### AI Chatbot (`lib/features/chatbot/`)
Clean architecture. Floating chatbot available globally on every page.

- **Domain**: `ChatMessage`, `Conversation`, `QuickAction`
- **Services**: `ChatbotService` (backend AI), `ConversationStorageService` (local persistence)
- **Widgets**: `ChatbotFAB` (floating button), `ChatWindow`, `MessageBubble`, `InputField`, `QuickReplies`, `TypingIndicator`, `CardMessage`, `CarouselMessage`, `EntityCard`
- **Provider**: `ChatbotNotifier` (StateNotifier) — messages, typing state, quick actions, escalation

---

#### Find Your Path (`lib/features/find_your_path/`)
Public tool — questionnaire-based university recommendations. No authentication required.

| Screen | Purpose |
|--------|---------|
| `FindYourPathLandingScreen` | Entry point |
| `QuestionnaireScreen` | Multi-step questionnaire |
| `ResultsScreen` | Personalized recommendations |
| `UniversityDetailScreen` | University details |

---

#### University Search (`lib/features/university_search/`)
Public search and filtering across 18,000+ universities.

| Screen | Purpose |
|--------|---------|
| `UniversitySearchScreen` | Search with filters (country, type, ranking, etc.) |
| `UniversityDetailScreen` | Full university detail with programs |

---

#### Home & Marketing (`lib/features/home/`)
17 screens/pages. Marketing homepage, persona landing pages, and footer pages.

- `ModernHomeScreen` — Main marketing homepage with hero, quiz teaser, value props, social proof, university search, testimonials, CTA
- `PersonaLandingPage` — Role-specific landing pages (`/for-students`, `/for-institutions`, `/for-parents`, `/for-counselors`)
- Footer pages: About, Contact, Privacy, Terms, Careers, Press, Partners, Help Center, Docs, API Docs, Community, Blog, Compliance, Cookies, Data Protection, Mobile Apps

---

#### Shared Features (`lib/features/shared/`)
Cross-role reusable screens, models, providers, and 52 widget files covering:

- **Profile**: profile view/edit, change password, user stats
- **Settings**: appearance, language, notifications, privacy, data storage, subscriptions
- **Communications**: notifications, messages, conversations
- **Documents**: document management and viewer
- **Payments**: payment methods, history, processing, success/failure
- **Schedule**: calendar, events
- **Tasks**: task management
- **Assessments**: exams and quizzes
- **Resources**: resource library and viewer
- **Notes**: note management
- **Achievements**: gallery, leaderboard, milestones
- **Focus**: focus timer, study sessions, analytics
- **Career**: career counseling, job listings
- **Help**: help center, FAQ, support tickets
- **Onboarding**: onboarding flow, feature highlights

---

### 3.2 Core Modules

#### API Layer (`lib/core/api/`)
- `api_config.dart` — Credential resolution: compile-time `--dart-define` → runtime `window.FLOW_CONFIG` (via `dart:js`). All endpoint constants, 15s timeout.
- `api_client.dart` — Dio-based HTTP client with auth token injection
- `api_exception.dart` — Typed API exceptions
- `api_response.dart` — Generic `ApiResponse<T>` wrapper

#### Services (`lib/core/services/`) — 29 services
- `auth_service.dart` — Login, register, logout, role switch, password reset, session management
- `applications_service.dart` — Application CRUD
- `enrollments_service.dart` / `enrollments_api_service.dart` — Enrollment management
- `courses_api_service.dart` / `course_content_api_service.dart` — Course data
- `messaging_service.dart` — Messages API
- `notifications_service.dart` / `notification_service.dart` — Notifications
- `realtime_service.dart` / `enhanced_realtime_service.dart` — Supabase Realtime WebSocket subscriptions
- `storage_service.dart` — Supabase Storage file uploads
- `secure_storage_service.dart` — Token storage via flutter_secure_storage
- `analytics_service.dart` — Analytics event tracking
- `accessibility_service.dart` — Accessibility helpers (skip links, screen reader support)
- `connectivity_service.dart` — Network connectivity monitoring
- `offline_sync_service.dart` — Offline queue and sync
- `export_service.dart` — PDF/CSV generation
- `consent_service.dart` / `cookie_service.dart` — GDPR cookie consent
- `meetings_api_service.dart`, `student_activities_api_service.dart`, `page_content_service.dart`

#### Models (`lib/core/models/`) — 25+ models
Many use Freezed + json_serializable for immutable data classes and JSON serialization:
- `user_model.dart`, `university_model.dart`, `institution_model.dart`, `program_model.dart`
- `application_model.dart`, `course_model.dart`, `enrollment_model.dart`
- `notification_model.dart`, `message_model.dart`, `conversation_model.dart`
- `document_model.dart`, `payment_model.dart`, `progress_model.dart`
- And more (counseling, recommendation, admin, cookie consent models)

#### Constants (`lib/core/constants/`)
- `user_roles.dart` — `UserRole` enum (11 roles: student, institution, parent, counselor, recommender, superAdmin, regionalAdmin, contentAdmin, supportAdmin, financeAdmin, analyticsAdmin). `AdminLevel` enum. Extension with `dashboardRoute`, `isAdmin`, `hierarchyLevel`, `canManage`.
- `admin_permissions.dart` — 45 permissions with per-role factory constructors
- `home_constants.dart`, `country_data.dart`, `cookie_constants.dart`

#### Error Handling (`lib/core/error/`)
- Global `FlutterError.onError` + `PlatformDispatcher.instance.onError`
- Screens: `GenericErrorScreen`, `NotFoundScreen`, `ServerErrorScreen`
- Widgets: `ErrorBoundary`, `SafeWidget`

#### Theme (`lib/core/theme/`)
- Material 3 with `ColorScheme.fromSeed`
- Brand palette: Primary Blue `#373896`, Maroon `#B01116`, Accent Yellow `#FAA61A`
- WCAG AA compliant text colors
- Light + dark themes, configurable per-user (fontSize, fontFamily, accentColor, compactMode)

#### Widgets (`lib/core/widgets/`)
- Charts: `AreaChart`, `BarChart`, `DonutChart`, `MultiLineChart`, `ProgressRing` (all fl_chart)
- Filters: `FilterBar`, `AdvancedFilter`
- Loading: `ShimmerEffect`, `SkeletonLoaders`
- Upload: `FileUpload`, `ImageUpload`

---

### 3.3 Routing

**Router**: GoRouter v17 with authentication redirect. Route refresh via `_RouterNotifier` listening to `authProvider`.

#### Public Routes

| Route | Screen |
|-------|--------|
| `/` | `ModernHomeScreen` |
| `/login` | `LoginScreen` |
| `/register` | `RegisterScreen` |
| `/forgot-password` | `ForgotPasswordScreen` |
| `/email-verification` | `EmailVerificationScreen` |
| `/onboarding` | `OnboardingScreen` |
| `/biometric-setup` | `BiometricSetupScreen` |
| `/universities` | `UniversitySearchScreen` |
| `/universities/:id` | `UniversityDetailScreen` |
| `/find-your-path` | `FindYourPathLandingScreen` |
| `/find-your-path/questionnaire` | `QuestionnaireScreen` |
| `/find-your-path/results` | `ResultsScreen` |
| `/for-students`, `/for-institutions`, `/for-parents`, `/for-counselors` | `PersonaLandingPage` |
| `/about`, `/contact`, `/privacy`, `/terms`, `/careers`, `/press`, `/partners`, `/help`, `/docs`, `/api-docs`, `/community`, `/blog`, `/compliance`, `/cookies`, `/data-protection`, `/mobile-apps` | Footer pages |

#### Authenticated Routes

| Prefix | Role | Key Routes |
|--------|------|------------|
| `/student/*` | Student | `dashboard`, `applications`, `courses`, `my-courses`, `progress`, `recommendations`, `counseling`, `schedule`, `resources` |
| `/institution/*` | Institution | `dashboard`, `applicants`, `programs`, `courses` (+ content builder, permissions, enrollments), `counselors` |
| `/parent/*` | Parent | `dashboard`, `children`, `children/:id` |
| `/counselor/*` | Counselor | `dashboard`, `students`, `sessions` |
| `/recommender/*` | Recommender | `dashboard`, `requests` |
| `/admin/*` | Admin (6 levels) | `dashboard`, `users/*`, `content/*`, `analytics/*`, `finance/*`, `chatbot/*`, `support/*`, `system/*`, `approvals/*`, `pages/*`, `communications`, `notifications`, `reports/*` |

#### Shared Routes (all authenticated)
`/profile`, `/settings`, `/notifications`, `/messages`, `/documents`, `/payments/*`, `/schedule/*`, `/exams/*`, `/quiz/*`, `/tasks/*`, `/resources/*`

**Total named routes**: ~170+

---

### 3.4 State Management

All state management uses Riverpod 3.x. **~75+ named providers** across the app.

#### Core Provider Dependency Graph

```
supabaseClientProvider
  ├── storageServiceProvider
  ├── realtimeServiceProvider
  └── enhancedRealtimeServiceProvider
      └── realtimeConnectionStatusProvider (StreamProvider)

sharedPreferencesProvider
  └── apiClientProvider
      └── authServiceProvider
          └── authProvider (StateNotifierProvider<AuthNotifier, AuthState>)
              ├── currentUserProvider (Provider<UserModel?>)
              ├── isAuthenticatedProvider (Provider<bool>)
              ├── appearanceProvider (per-user theme/font/accent)
              └── localeProvider (per-user language)
      ├── enrollmentsServiceProvider
      ├── applicationsServiceProvider
      ├── messagingServiceProvider → unreadMessagesCountProvider
      └── notificationsServiceProvider → unreadNotificationsCountProvider
```

#### Providers by Domain

| Domain | Count | Key Providers |
|--------|-------|---------------|
| Core/Global | ~20 | `authProvider`, `currentUserProvider`, `appearanceProvider`, `localeProvider`, `routerProvider`, service providers |
| Student | 14 | `studentApplicationsProvider`, `coursesProvider`, `enrollmentsProvider`, `studentProgressProvider`, `recommendationsProvider`, `dashboardStatisticsProvider` |
| Institution | 9 | `institutionDashboardProvider`, `institutionApplicantsProvider`, `institutionProgramsProvider`, `institutionCoursesProvider`, `courseContentProvider` |
| Parent | 4 | `parentChildrenProvider`, `parentMonitoringProvider`, `parentAlertsProvider`, `parentCounselingProvider` |
| Counselor | 3 | `counselorDashboardProvider`, `counselorStudentsProvider`, `counselorSessionsProvider` |
| Recommender | 2 | `recommenderDashboardProvider`, `recommenderRequestsProvider` |
| Admin | 17 | `adminUsersProvider`, `adminAnalyticsProvider`, `adminFinanceProvider`, `approvalsProvider`, and 13 more |
| Shared | 10 | `profileProvider`, `messagingProvider`, `notificationsProvider`, `documentsProvider`, `paymentProvider` |
| Feature | 5 | `chatbotProvider`, `findYourPathProvider`, `universitySearchProvider`, `homeStatsProvider` |

---

### 3.5 Shared Widgets

52 widget files in `lib/features/shared/widgets/`:

| Category | Widgets |
|----------|---------|
| Layout | `DashboardScaffold` (role-based nav), `PublicShell` (marketing wrapper) |
| Data display | `CustomCard`, `StatusBadge`, `LogoAvatar`, `CachedImage` |
| Empty/Error | `EmptyState`, `EmptyStateView`, `ErrorView` |
| Loading | `LoadingIndicator`, `LoadingSkeleton`, `SkeletonLoader` |
| Notifications | `NotificationBell`, `NotificationBadge`, `NotificationCenter`, `MessageBadge` |
| Network | `ConnectionStatusIndicator`, `OfflineStatusIndicator` |
| Data tools | `SearchWidget`, `FilterWidget`, `SortWidget`, `ExportButton` |
| Charts | `ChartWidgets`, `StatsWidgets`, `ProgressAnalyticsWidgets`, `DashboardWidgets` |
| Upload | `FileUploadWidget` |
| Communication | `MessageWidgets`, `TypingIndicator` |
| Finance | `PaymentWidgets`, `InvoiceWidgets` |
| Engagement | `AchievementWidgets`, `OnboardingWidgets`, `CollaborationWidgets` |
| Productivity | `ScheduleWidgets`, `TaskWidgets`, `FocusToolsWidgets`, `NotesWidgets` |
| Assessment | `QuizWidgets`, `ExamWidgets` |
| Content | `ResourceWidgets`, `VideoWidgets`, `EnhancedDocumentViewer` |
| Career | `JobCareerWidgets` |
| Settings | `SettingsWidgets`, `ComingSoonDialog`, `RefreshUtilities` |
| Help | `HelpSupportWidgets` |

---

### 3.6 Localization

| Item | Detail |
|------|--------|
| Config file | `l10n.yaml` |
| ARB directory | `lib/l10n/` |
| Generated output | `lib/l10n/generated/` |
| Languages | English (`en`), French (`fr`) |
| Translation keys | ~8,647 |
| Access pattern | `context.l10n.keyName` via `lib/core/l10n_extension.dart` |
| Persistence | Per-user, stored in SharedPreferences |

---

### 3.7 Theming

- **Material 3** with `useMaterial3: true`
- **Color scheme**: `ColorScheme.fromSeed` with brand palette
- **Light + Dark** themes
- **Per-user preferences**: theme mode, font size, font family, accent color, compact mode
- **Available fonts**: System Default, Roboto, Open Sans, Lato, Montserrat, Poppins, Raleway, Ubuntu
- **Anonymous persistence**: Theme choices persist even for unauthenticated users

#### Complete Color Palette (`lib/core/theme/app_colors.dart`)

**Primary Colors (Blue)**
| Name | Hex | Usage |
|------|-----|-------|
| `primary` | `#373896` | Buttons, headers, nav links |
| `primaryDark` | `#2A2B72` | Darker variant |
| `primaryLight` | `#5456AE` | Lighter variant |

**Secondary Colors (Maroon)**
| Name | Hex | Usage |
|------|-----|-------|
| `secondary` | `#B01116` | Secondary actions, highlights, error banners |
| `secondaryDark` | `#8B0D11` | Darker variant |
| `secondaryLight` | `#C53A3E` | Lighter variant |

**Accent Colors (Yellow)**
| Name | Hex | Usage |
|------|-----|-------|
| `accent` | `#FAA61A` | Alerts, badges, CTAs |
| `accentDark` | `#8B5E10` | Text on light backgrounds (4.5:1 WCAG AA) |
| `accentLight` | `#FBB845` | Lighter variant |

**Warmth Palette (African-inspired)**
| Name | Hex |
|------|-----|
| `terracotta` | `#C4704F` |
| `coral` | `#E07A5F` |
| `warmSand` | `#F4E8DC` |
| `deepOchre` | `#B8860B` |

**Hero Gradient**: `#373896` → `#4A4BC8` → `#C4704F`

**Section Backgrounds**
| Name | Hex (Light) | Hex (Dark) |
|------|-------------|------------|
| `sectionLight` | `#F8FAFB` | `#1A1A2E` |
| `sectionWarm` | `#FFF9F5` | `#2A1F1A` |
| `sectionDark` | `#1A1A1A` | `#0D0D0D` |

**Text Colors (WCAG AA compliant)**
| Name | Hex | Contrast on White |
|------|-----|-------------------|
| `textPrimary` | `#000000` | 21:1 |
| `textSecondary` | `#595959` | 7:1 |
| `textDisabled` | `#757575` | 4.6:1 |
| `textOnPrimary` | `#FFFFFF` | — |

**Dark Mode Surfaces**
| Name | Hex |
|------|-----|
| `darkBackground` | `#121212` |
| `darkSurface` | `#1E1E1E` |
| `darkSurfaceContainer` | `#252525` |
| `darkSurfaceContainerHigh` | `#2C2C2C` |
| `darkSurfaceContainerHighest` | `#353535` |

**Status Colors**
| Name | Hex | Source |
|------|-----|--------|
| `success` | `#4CAF50` | Green |
| `error` | `#B01116` | Maroon (reused) |
| `warning` | `#FAA61A` | Yellow (reused) |
| `info` | `#373896` | Primary Blue (reused) |

**Role Colors**
| Role | Hex | Color |
|------|-----|-------|
| Student | `#373896` | Primary Blue |
| Institution | `#B01116` | Maroon |
| Parent | `#4CAF50` | Green |
| Counselor | `#FAA61A` | Yellow |
| Recommender | `#5456AE` | Light Blue |
| Super Admin | `#B01116` | Maroon (+ `#FFD700` gold badge) |
| Other Admins | `#373896` | Primary Blue |

**Borders & Overlays**
| Name | Hex |
|------|-----|
| `border` | `#E0E0E0` |
| `divider` | `#EEEEEE` |
| `overlay` | `#000000` @ 50% |
| `scrim` | `#000000` @ 70% |
| `darkBorder` | `#404040` |
| `darkDivider` | `#333333` |

---

## 4. Backend (FastAPI)

### 4.1 API Architecture

- **Framework**: FastAPI
- **Server**: Uvicorn
- **Base path**: `/api/v1`
- **Total route modules**: 34
- **Total endpoints**: ~280+
- **Rate limiting**: slowapi
- **Monitoring**: Sentry (error tracking), Prometheus (`/metrics`)
- **Health checks**: `GET /` and `GET /health`

**Middleware stack** (outermost to innermost):
1. CORSMiddleware (Railway domains + localhost)
2. ErrorHandlingMiddleware (timing + logging)
3. MetricsMiddleware (Prometheus, conditional)
4. SecurityHeadersMiddleware

**CORS origins**: `web-production-bcafe.up.railway.app`, `web-production-51e34.up.railway.app`, localhost ports 8080/3000/3001/5173

---

### 4.2 All Endpoints

#### Authentication (`/api/v1/auth/`) — 14 endpoints
- `POST register`, `POST login`, `POST logout`, `POST refresh`
- `POST forgot-password`, `POST reset-password`, `POST update-password`
- `GET verify-email`, `GET me`, `PUT me`, `PATCH profile`
- `POST upload-photo`, `POST switch-role`, `DELETE me`
- Admin: `POST users/{id}/add-role`, `GET users/{id}`

#### Universities (`/api/v1/universities/`) — 3 endpoints
- `GET /` — search/filter (country, state, type, acceptance rate, tuition, text search, pagination)
- `GET /{id}` — cached 24 hours
- `GET /{id}/programs`

#### Recommendations (`/api/v1/recommendations/`) — 9 endpoints
- `GET personalized` — ML-powered with explanations
- `POST clicks`, `POST feedback` — tracking
- `GET analytics/{student_id}`
- `POST generate` — run ML engine (LightGBM)
- `GET /{user_id}`, `PUT /{id}`, `GET /{user_id}/favorites`

#### Students (`/api/v1/students/`) — 8 endpoints
- Profile: `POST`, `GET /{id}`, `GET /{id}/exists`, `PUT /{id}`, `DELETE /{id}`
- Analytics: `GET /{id}/analytics/application-success`, `GET /{id}/analytics/gpa-trend`

#### Applications (`/api/v1/applications/`) — 11 endpoints
- Student: `POST`, `GET /{id}`, `PUT /{id}`, `POST /{id}/submit`, `POST /{id}/withdraw`, `DELETE /{id}`
- Student list: `GET students/me/applications`
- Institution: `PUT /{id}/status`, `GET institutions/me/applications`, `GET institutions/me/applications/statistics`

#### Courses (`/api/v1/courses/`) — 11 endpoints
- CRUD: `GET /`, `POST`, `GET /{id}`, `PUT /{id}`, `DELETE /{id}`
- Lifecycle: `POST /{id}/publish`, `POST /{id}/unpublish`
- `GET statistics/my-courses`, `GET my-assignments`, `GET institutions/{id}/courses`

#### Course Content (`/api/v1/course-content/`) — module/lesson management

#### Enrollments (`/api/v1/enrollments/`) — 14 endpoints
- CRUD: `POST`, `GET /{id}`, `POST /{id}/drop`, `PUT /{id}/progress`
- Lists: `GET students/me/enrollments`, `GET courses/{id}/enrollments`
- Permissions: request, grant, approve, deny, revoke, list

#### Messaging (`/api/v1/messages/`) — 16 endpoints
- Conversations: create, list, get, messages, read receipts
- Messages: send, edit, delete
- Utilities: upload, typing indicators, unread count, user search

#### Chatbot (`/api/v1/chatbot/`) — 18 endpoints
- User: send message, list conversations, sync, delete
- Feedback and escalation
- Admin: stats, queue, assign, reply, live conversations
- FAQ CRUD
- Maintenance: archive, anonymize, data deletion

#### Notifications (`/api/v1/notifications/`) — 12 endpoints
- CRUD: list, get, read, read-all, delete, mark-unread, archive, unarchive
- Preferences: get/put, defaults
- Stats: `GET stats/me`
- Send: `POST send`

#### Counseling (`/api/v1/counseling/`) — 20 endpoints
- Sessions: CRUD, cancel, start, complete, feedback, notes
- Availability: create, get
- Student/counselor matching, booking, stats

#### Parent Monitoring (`/api/v1/parent/`) — 18 endpoints
- Parent-student links: create, approve, permissions, revoke
- Children management, activity monitoring
- Invite codes: create, use, list, delete
- Dashboard, progress reports

#### Achievements (`/api/v1/achievements/`) — 4 endpoints
- `GET me`, `GET progress/me`, `GET leaderboard`, `GET stats/me`

#### Meetings (`/api/v1/meetings/`) — 13 endpoints
- Request, approve/decline/cancel
- Staff availability CRUD
- Statistics

#### Grades (`/api/v1/`) — 8 endpoints
- Student grades, GPA history, statistics
- Parent access to children's grades
- Grade alerts

#### Recommendation Letters (`/api/v1/`) — 18 endpoints
- Requests: create (incl. by email), accept, decline, list
- Letters: compose, edit, submit, share
- Templates: list, render
- Dashboard, statistics

#### Student Activities (`/api/v1/`) — 2 endpoints

#### Consent (`/api/v1/consent/`) — 4 endpoints
- User: create, get
- Admin: statistics, user list

#### Institutions (`/api/v1/institutions/`) — 6 endpoints
- List, detail
- Analytics: application funnel, demographics, program popularity, time-to-decision

#### Programs (`/api/v1/programs/`) — 10 endpoints
- CRUD, toggle status, statistics, enrollment

#### Enrichment (`/api/v1/enrichment/`) — 19 endpoints
- Start, status, daily/weekly/monthly (sync + async)
- US universities, cache management, cleanup

#### Batch Processing (`/api/v1/batch/`) — 7 endpoints
- Job CRUD, queue stats, worker start, health

#### ML Training (`/api/v1/ml/`) — 2 endpoints
- `POST train`, `GET training-status`

#### Admin (`/api/v1/admin/`) — 45+ endpoints
- User management (all roles), dashboard, analytics
- Content management, support tickets, finance
- Communications, system settings
- Curriculum, resources, assessments

#### Approvals (`/api/v1/admin/approvals/`) — 22 endpoints
- Multi-level approval workflow: create, list, stats, approve/deny, delegate, escalate
- Comments CRUD, configuration, audit trail

#### Monitoring — 6 endpoints
- `GET /health` (detailed), `/health/ready`, `/health/live`
- `GET /metrics`, `/health/detailed`, `/info`

---

## 5. Database

### 5.1 Tables

**73 tables** in Supabase PostgreSQL 17. Grouped by domain:

#### Core Users
| Table | Purpose |
|-------|---------|
| `users` | Core profiles (extends `auth.users`); active_role, available_roles, role metadata |
| `admin_users` | Admin records with admin_role, permissions[], mfa_enabled, regional_scope |
| `student_profiles` | ML-ready student data: GPA, test scores, budget, preferences, career goals |

#### Universities & Programs
| Table | Purpose |
|-------|---------|
| `universities` | 17,000+ universities: rankings, test scores, acceptance rates, tuition, scraping metadata |
| `programs` | University-linked academic programs with deadlines, fees |
| `institution_programs` | Institution-created programs (different schema) |

#### ML & Recommendations
| Table | Purpose |
|-------|---------|
| `recommendations` | Generated recommendations: match_score, category (Safety/Match/Reach) |
| `recommendation_impressions` | Tracks each time a recommendation was shown |
| `recommendation_clicks` | Click tracking (view, apply, favorite, share) |
| `recommendation_feedback` | Explicit ratings and comments |
| `student_interaction_summary` | Aggregated CTR and preference signals |

#### Applications
| Table | Purpose |
|-------|---------|
| `applications` | Student applications: status, documents, essay, references |

#### Courses & Learning
| Table | Purpose |
|-------|---------|
| `courses` | Institution-created courses with modules, pricing |
| `course_modules` | Sections within a course |
| `course_lessons` | Individual lessons (video, text, quiz, assignment) |
| `lesson_videos`, `lesson_texts`, `lesson_assignments`, `lesson_quizzes` | Lesson content |
| `quiz_questions`, `quiz_question_options` | Quiz content |
| `quiz_attempts` | Quiz submission records |
| `assignment_submissions` | Assignment submissions |
| `enrollments` | Student-course enrollment with progress |
| `enrollment_permissions` | Gated enrollment requiring approval |

#### Grades & Academic
| Table | Purpose |
|-------|---------|
| `grades` | Individual grade entries |
| `gpa_history` | Semester-by-semester GPA records |
| `grade_alerts` | Parent alerts for grade thresholds |
| `student_records` | Counselor-owned student records |
| `student_activities` | Activity feed events |
| `achievements` | Gamification achievements |

#### Communication
| Table | Purpose |
|-------|---------|
| `conversations` | Messaging conversations (direct + group) |
| `messages` | Individual messages with replies, attachments |
| `typing_indicators` | Real-time typing presence (10s expiry) |
| `notifications` | In-app notifications |
| `notification_preferences` | Per-user notification channel preferences |

#### Counseling & Meetings
| Table | Purpose |
|-------|---------|
| `counseling_sessions` | Scheduled counseling meetings |
| `meetings` | Parent-requested meetings with approve/decline workflow |
| `staff_availability` | Availability schedule (day of week, time slots) |
| `student_counselor_assignments` | Student-counselor mapping |

#### Parent-Student
| Table | Purpose |
|-------|---------|
| `children` | Parent's children records |
| `parent_children` | Relationship permissions |
| `parent_student_links` | Formal parent-student links with consent |
| `parent_alerts` | Parent-specific notifications |
| `student_invite_codes` | Short-lived invite codes for linking |

#### Recommendation Letters
| Table | Purpose |
|-------|---------|
| `recommendation_letters` | Written letters |
| `recommendation_requests` | Requests to recommenders |
| `recommendation_reminders` | Reminder schedules |
| `recommendation_templates` | Reusable templates |
| `letter_of_recommendations` | Drafted content with share tokens |

#### AI Chatbot
| Table | Purpose |
|-------|---------|
| `chatbot_conversations` | Chat sessions with context |
| `chatbot_messages` | Messages with AI provider, confidence, tokens |
| `chatbot_faqs` | Knowledge base entries |
| `chatbot_feedback_analytics` | Daily feedback aggregates |
| `chatbot_support_queue` | Escalated chats |

#### Admin & System
| Table | Purpose |
|-------|---------|
| `approval_requests` | Multi-level approval workflow |
| `approval_actions` | Per-step actions in approval chains |
| `approval_comments` | Comments on approvals |
| `approval_config` | Workflow configuration |
| `activity_log` | Admin audit log |
| `system_logs` | Structured application logs |
| `support_tickets` | Customer support tickets |
| `communication_campaigns` | Marketing campaigns |
| `scheduled_reports` | Report configuration |
| `scheduled_report_executions` | Execution history |

#### Content & Config
| Table | Purpose |
|-------|---------|
| `page_contents` | CMS for static pages |
| `content_assignments` | Content assigned to students/courses |
| `app_config` | Key-value configuration store |
| `cookie_consents` | GDPR consent records |

#### Data Pipeline
| Table | Purpose |
|-------|---------|
| `enrichment_cache` | Cached field values from scraping |
| `enrichment_jobs` | Async enrichment job tracking |
| `page_cache` | HTTP response cache |
| `documents` | Uploaded files |
| `payments` | Payment records (M-Pesa, Flutterwave, PayPal, Stripe) |
| `transactions` | Financial transaction log |

---

### 5.2 Migrations

#### Supabase-managed (`supabase/migrations/`)

| File | Purpose |
|------|---------|
| `20250121000001_approval_workflow_tables.sql` | Approval workflow tables |
| `20250121000002_approval_seed_config.sql` | Seed approval configuration |
| `20260129215017_remote_schema.sql` | Baseline: full production schema (73 tables) |
| `20260129230000_admin_users_rls_policies.sql` | Admin RLS policies |
| `20260131000000_add_search_universities_function.sql` | Full-text university search function |
| `20260131010000_deduplicate_universities.sql` | Deduplication logic |
| `20260206000000_fix_admin_users_rls_recursion.sql` | Fix RLS infinite recursion |

#### Manual migrations (`database_migrations/`)
- `notification_schema.sql` — Extended notification system
- `page_contents_schema.sql` — CMS page content
- `scheduled_reports_schema.sql` — Scheduled reporting

---

## 6. ML/AI System

### Architecture — Three-Layer Ensemble

1. **LightGBMRanker** — Gradient boosting for learning-to-rank
   - Objective: regression (RMSE)
   - 500 boost rounds, early stopping at 50
   - `num_leaves=31, learning_rate=0.05, feature_fraction=0.8, max_depth=6`

2. **PersonalizedWeightNetwork** (optional, requires PyTorch)
   - 3-layer NN: 13 → 64 → 32 → 16 → 5
   - Outputs softmax weights for [academic, financial, program, location, characteristics]
   - Batch normalization + dropout

3. **EnsembleRecommendationModel** — Combines both models

### Feature Engineering

**Student features** (13 dimensions): GPA (normalized), SAT total/math/EBRW, ACT composite, class rank percentile, budget (normalized), financial aid flag, career/research/sports flags, preferred state/country counts.

**University features**: Acceptance rate, GPA average, SAT/ACT 75th percentiles, total cost, graduation rate, median earnings, global rank (inverse), total students, university type (one-hot).

### Training
- Generates synthetic student profiles for bootstrapping
- Uses real universities/programs from Supabase
- Rule-based scoring as initial training labels
- Can retrain on real student interaction data (clicks, feedback)
- Falls back to rule-based scoring if no trained model available

### Output
- Safety / Match / Reach categories based on score thresholds
- Dimensional score breakdown (academic, financial, program, location, characteristics)
- Explanations for each recommendation

---

## 7. Data Pipeline

### Data Sources

| Source | Script | Schedule |
|--------|--------|----------|
| QS World Rankings (Kaggle) | `import_to_supabase.py` | Monthly 15th |
| THE World Rankings (Kaggle) | `import_the_rankings.py` | Monthly 15th |
| US College Scorecard (Dept. of Education API) | `import_college_scorecard_to_supabase.py` | Monthly 15th |
| Universities List API | `import_universities_list_api.py` | Monthly 15th |
| Wikipedia | `import_wikipedia_universities.py` | Manual |

### Auto-Fill Scripts (missing field enrichment)
- `auto_fill_acceptance_rate.py`, `auto_fill_graduation_rate.py`, `auto_fill_tuition.py`
- `auto_fill_logo.py`, `auto_fill_website.py`, `auto_fill_students.py`
- `auto_fill_university_type.py`, `auto_fill_location_type.py`
- `auto_fill_comprehensive.py` — runs all
- `auto_fill_from_search.py` — DuckDuckGo search-based filling

### Enrichment System
- `enrich_university_data.py` — Web scraping enrichment
- `enrich_programs.py` — Program data enrichment
- Service-layer enrichment in `recommendation_service/app/enrichment/`:
  - `auto_fill_orchestrator.py` — master orchestrator
  - `web_search_enricher.py`, `async_field_scrapers.py`, `location_cleaner.py`
- **Throughput**: ~600 universities/day via GitHub Actions, full database coverage ~30 days

### Automation Scripts
- `automated_daily_update.py` — 30-university enrichment
- `automated_weekly_update.py` — broader update
- `automated_monthly_update.py` — full refresh
- `smart_update_runner.py` — intelligent priority-based updates

---

## 8. CI/CD & Deployment

### 8.1 GitHub Actions

5 workflows in `.github/workflows/`:

| Workflow | Schedule | Purpose |
|----------|----------|---------|
| **Integration Tests** | Push/PR to main/develop | Pytest against live API |
| **Update Universities Data** | Monthly 15th, 03:00 UTC | Sequential: QS Rankings → College Scorecard → Universities List API → THE Rankings |
| **Data Enrichment (Balanced)** | Every 8 hours | 100 US universities (College Scorecard) + 100 general (web scraping) |
| **Batch Processing Worker** | Every 30 minutes | Triggers batch processing queue worker |
| **Scheduled Reports** | Every hour | Executes due scheduled reports |

---

### 8.2 Docker & Railway

#### Frontend Build (Dockerfile — multi-stage)

**Stage 1** (build):
- Base: `debian:bookworm-slim`
- Installs Flutter 3.35.6
- `flutter pub get` → `flutter gen-l10n` → `flutter build web --release --pwa-strategy=offline-first`
- No credentials at build time

**Stage 2** (serve):
- Base: `node:18-alpine`
- Copies `build/web/`, `server.js`, `package.json`
- `npm install --production`
- Health check: `wget http://localhost:8080/health`
- `CMD ["node", "server.js"]`

#### server.js Features
- **Compression**: gzip/deflate, level 6, threshold 1KB (reduces main.dart.js ~17MB → ~4MB)
- **Security headers**: X-Content-Type-Options, X-Frame-Options: DENY, Referrer-Policy, Permissions-Policy
- **SEO**: Route-specific meta tags for 12 public routes, `robots.txt`, `sitemap.xml`
- **Static caching**: WASM/fonts: immutable 1yr; images: 30 days; JS/CSS: 7 days; HTML: no-cache
- **SPA catch-all**: 200 for known routes, 404 for unknown

#### Backend (Nixpacks)
- Start: `uvicorn app.main:app --host 0.0.0.0 --port $PORT`
- Auto-detected Python environment

---

### 8.3 Runtime Config Injection

Credentials are NOT baked in at build time. They are injected at runtime:

1. `server.js` exposes `GET /env-config.js` that reads `process.env` and returns:
   ```javascript
   window.FLOW_CONFIG = { SUPABASE_URL: "...", SUPABASE_ANON_KEY: "...", API_BASE_URL: "..." }
   ```
2. `web/index.html` loads `/env-config.js` synchronously before `flutter_bootstrap.js`
3. `lib/core/api/api_config.dart` reads `window.FLOW_CONFIG` via `dart:js` as fallback when `String.fromEnvironment()` returns empty
4. Resolution order: compile-time `--dart-define` (local dev) → runtime `window.FLOW_CONFIG` (production)

**`env()` helper**: Whitespace-tolerant env var lookup that handles Railway's occasional leading-space variable names.

---

## 9. Testing

### Configuration (`pytest.ini`)
- Test paths: `tests/`
- Coverage: `app/` module
- Markers: `slow`, `integration`, `unit`, `api`
- Async mode: auto

### Test Suite
| Type | Location | Description |
|------|----------|-------------|
| Unit | `recommendation_service/tests/` | Health check endpoints |
| Integration | `recommendation_service/tests/integration/` | CORS, end-to-end workflows, Flutter API compatibility |
| Ad-hoc | Root level | API response tests, application workflows, cloud API tests, Supabase connection tests |

### CI Integration
- Integration tests run on every push/PR to `main`/`develop`
- Waits for live API health at `web-production-51e34.up.railway.app/health`
- Results uploaded as artifacts (30-day retention)

---

## 10. Project Statistics

| Metric | Value |
|--------|-------|
| **Frontend** | |
| Dart files | ~570 |
| Screens/pages | ~210 |
| Feature modules | 13 |
| Riverpod providers | ~75+ |
| Shared widget files | 52 |
| Core services | 29 |
| Core models | 25+ |
| Named routes | ~170+ |
| l10n keys | ~8,647 |
| Supported languages | 2 (English, French) |
| **Backend** | |
| API route modules | 34 |
| HTTP endpoints | ~280+ |
| **Database** | |
| Tables | 73 |
| Enum types | 6 |
| Migration files | 7 (Supabase) + 3 (manual) |
| **ML** | |
| Models | 2 (LightGBM + optional PyTorch NN) |
| Student features | 13 dimensions |
| **Data** | |
| Universities | 17,000+ |
| Data pipeline scripts | 30+ |
| **DevOps** | |
| GitHub Actions workflows | 5 |
| Railway services | 2 (frontend + backend) |
| User roles | 11 (5 standard + 6 admin) |
