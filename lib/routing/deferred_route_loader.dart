import 'package:flutter/material.dart';
import '../core/widgets/navia_loading_indicator.dart';

/// Wraps a deferred-imported screen so its library is loaded on demand.
///
/// Dart's [loadLibrary] is memoized by the runtime — after the first call the
/// [Future] resolves synchronously, so subsequent visits appear instant.
class DeferredRouteLoader extends StatefulWidget {
  /// The deferred library's `loadLibrary` function.
  final Future<void> Function() loader;

  /// Builds the screen widget after the library has loaded.
  final Widget Function() childBuilder;

  const DeferredRouteLoader({
    super.key,
    required this.loader,
    required this.childBuilder,
  });

  @override
  State<DeferredRouteLoader> createState() => _DeferredRouteLoaderState();
}

class _DeferredRouteLoaderState extends State<DeferredRouteLoader> {
  late Future<void> _future;

  @override
  void initState() {
    super.initState();
    _future = widget.loader();
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<void>(
      future: _future,
      builder: (context, snapshot) {
        if (snapshot.connectionState == ConnectionState.done) {
          if (snapshot.hasError) {
            return Scaffold(
              body: Center(
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Icon(Icons.error_outline, size: 48,
                        color: Theme.of(context).colorScheme.error),
                    const SizedBox(height: 16),
                    Text(
                      'Failed to load this page.',
                      style: Theme.of(context).textTheme.titleMedium,
                    ),
                    const SizedBox(height: 16),
                    FilledButton.icon(
                      onPressed: () {
                        setState(() {
                          _future = widget.loader();
                        });
                      },
                      icon: const Icon(Icons.refresh),
                      label: const Text('Retry'),
                    ),
                  ],
                ),
              ),
            );
          }
          return widget.childBuilder();
        }
        return const Scaffold(
          body: NaviaLoadingIndicator(),
        );
      },
    );
  }
}
