import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:supabase_flutter/supabase_flutter.dart';
import 'package:sentry_flutter/sentry_flutter.dart';
import 'package:logging/logging.dart';
import 'l10n/generated/app_localizations.dart';
import 'core/theme/app_theme.dart';
import 'core/widgets/navia_loading_indicator.dart';
import 'core/providers/appearance_provider.dart';
import 'core/providers/cookie_providers.dart';
import 'core/providers/locale_provider.dart';
import 'core/providers/service_providers.dart' as service_providers;
import 'core/error/error_handling.dart';
import 'core/api/api_config.dart';
import 'routing/app_router.dart';
import 'features/shared/widgets/offline_status_indicator.dart';
import 'features/authentication/providers/auth_provider.dart';
import 'features/chatbot/presentation/widgets/chatbot_fab.dart';

void main() async {
  // Ensure Flutter bindings are initialized
  WidgetsFlutterBinding.ensureInitialized();

  // Enable semantics tree for screen readers without requiring user opt-in
  SemanticsBinding.instance.ensureSemantics();

  // Initialize logging
  final mainLogger = Logger('Main');
  Logger.root.level = kDebugMode ? Level.ALL : Level.INFO;
  Logger.root.onRecord.listen((record) {
    // Only log to console in debug mode
    // In production, logs will be captured by Sentry
    if (kDebugMode) {
      debugPrint(
        '[${record.level.name}] ${record.loggerName}: ${record.message}',
      );
      if (record.error != null) {
        debugPrint('Error: ${record.error}');
      }
      if (record.stackTrace != null) {
        debugPrint('Stack trace: ${record.stackTrace}');
      }
    }
  });

  // Initialize error handling
  ErrorHandler.init();

  // Validate API configuration (will throw if required env vars missing)
  ApiConfig.validateConfig();

  // Initialize Supabase and SharedPreferences in parallel to cut startup time.
  late final SharedPreferences prefs;
  try {
    final results = await Future.wait([
      Supabase.initialize(
        url: ApiConfig.supabaseUrl,
        anonKey: ApiConfig.supabaseAnonKey,
      ),
      SharedPreferences.getInstance(),
    ]);
    mainLogger.info('Supabase + SharedPreferences initialized in parallel');
    prefs = results[1] as SharedPreferences;
  } catch (e, stackTrace) {
    // If Supabase failed but prefs succeeded, try prefs alone
    mainLogger.severe('Parallel init failed: $e', e, stackTrace);
    prefs = await SharedPreferences.getInstance();
  }

  // Validate session in the background — don't block app render.
  // The auth provider will pick up the session state asynchronously.
  Future<void>.microtask(() async {
    try {
      final session = Supabase.instance.client.auth.currentSession;
      if (session != null) {
        mainLogger.fine('Found existing session, validating...');
        final response = await Supabase.instance.client.auth.refreshSession();
        if (response.session == null) {
          mainLogger.warning(
            'Session refresh failed, clearing invalid session...',
          );
          await Supabase.instance.client.auth.signOut();
        } else {
          mainLogger.fine('Session is valid');
        }
      }
    } catch (e) {
      mainLogger.warning('Invalid session detected, clearing: $e');
      try {
        await Supabase.instance.client.auth.signOut();
      } catch (_) {}
    }
  });

  // Initialize Sentry for crash reporting (optional, skip on web if it causes issues)
  // DSN should be provided via --dart-define=SENTRY_DSN=your_dsn in production
  const sentryDsn = String.fromEnvironment('SENTRY_DSN', defaultValue: '');

  try {
    mainLogger.info('Starting app initialization...');

    // Skip Sentry on web for now - it can cause initialization issues
    if (kIsWeb || sentryDsn.isEmpty) {
      mainLogger.config('Sentry disabled (web platform or no DSN)');
      runApp(
        ProviderScope(
          overrides: [
            // Override SharedPreferences provider for cookie consent
            sharedPreferencesProvider.overrideWithValue(prefs),
            // Override SharedPreferences provider for API services
            service_providers.sharedPreferencesProvider.overrideWithValue(
              prefs,
            ),
          ],
          child: const RestartWidget(child: FlowApp()),
        ),
      );
    } else {
      mainLogger.config('Initializing Sentry...');
      await SentryFlutter.init(
        (options) {
          options.dsn = sentryDsn;
          options.environment = ApiConfig.isProduction
              ? 'production'
              : 'development';
          options.tracesSampleRate = 0.2; // 20% of transactions
          options.enableAutoSessionTracking = true;
          options.attachStacktrace = true;
          options.beforeSend = (event, hint) {
            // Filter out sensitive data if needed
            return event;
          };
        },
        appRunner: () => runApp(
          ProviderScope(
            overrides: [
              // Override SharedPreferences provider for cookie consent
              sharedPreferencesProvider.overrideWithValue(prefs),
              // Override SharedPreferences provider for API services
              service_providers.sharedPreferencesProvider.overrideWithValue(
                prefs,
              ),
            ],
            child: const RestartWidget(child: FlowApp()),
          ),
        ),
      );
    }
    mainLogger.info('App started successfully');
  } catch (e, stackTrace) {
    mainLogger.severe('Fatal error during app startup: $e', e, stackTrace);
    rethrow;
  }
}

/// Widget that allows restarting the entire app
class RestartWidget extends StatefulWidget {
  const RestartWidget({super.key, required this.child});

  final Widget child;

  static void restartApp(BuildContext context) {
    context.findAncestorStateOfType<_RestartWidgetState>()?.restartApp();
  }

  @override
  State<RestartWidget> createState() => _RestartWidgetState();
}

class _RestartWidgetState extends State<RestartWidget> {
  Key _key = UniqueKey();

  void restartApp() {
    setState(() {
      _key = UniqueKey();
    });
  }

  @override
  Widget build(BuildContext context) {
    return KeyedSubtree(key: _key, child: widget.child);
  }
}

class FlowApp extends ConsumerWidget {
  const FlowApp({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final router = ref.watch(routerProvider);
    final appearance = ref.watch(appearanceProvider);
    final authState = ref.watch(authProvider);
    final locale = ref.watch(localeProvider);

    return MaterialApp.router(
      title: 'Navia — Navigate Your Future',
      debugShowCheckedModeBanner: false,
      locale: locale,
      localizationsDelegates: AppLocalizations.localizationsDelegates,
      supportedLocales: AppLocalizations.supportedLocales,
      theme: AppTheme.getLightTheme(
        fontSize: appearance.fontSize,
        fontFamily: appearance.fontFamily != 'System Default'
            ? appearance.fontFamily
            : null,
        accentColor: appearance.accentColor,
        compactMode: appearance.compactMode,
      ),
      darkTheme: AppTheme.getDarkTheme(
        fontSize: appearance.fontSize,
        fontFamily: appearance.fontFamily != 'System Default'
            ? appearance.fontFamily
            : null,
        accentColor: appearance.accentColor,
        compactMode: appearance.compactMode,
      ),
      themeMode: appearance.themeMode,
      routerConfig: router,
      builder: (context, child) {
        // ALWAYS keep the router child in the widget tree so that the
        // Navigator's OverlayEntries and route animations are never
        // orphaned during auth state transitions. Previously, replacing
        // the entire Stack with a loading Scaffold could leave stale
        // OverlayEntries when the tree was rebuilt.
        return Stack(
          fit: StackFit.expand,
          clipBehavior: Clip.none, // Avoid clip compositing layer on CanvasKit
          children: [
            if (child != null) child,
            // Offline status indicator at the top
            const Positioned(
              top: 0,
              left: 0,
              right: 0,
              child: OfflineStatusIndicator(),
            ),
            // Global chatbot FAB — anchored to bottom-right.
            const Positioned(
              bottom: 16,
              right: 16,
              child: ChatbotFAB(),
            ),
            // Loading overlay while auth state is being determined.
            // Overlaid on top (not replacing) so the Navigator stays mounted.
            if (authState.isLoading)
              const Positioned.fill(
                child: ColoredBox(
                  color: Color(0xFF0D1117), // matches dark theme background
                  child: NaviaLoadingIndicator.hero(message: 'Loading...'),
                ),
              ),
          ],
        );
      },
    );
  }
}
