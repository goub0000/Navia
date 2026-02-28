import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_riverpod/legacy.dart';

/// Whether the user is currently scrolling down. Used to collapse the chat FAB.
final isScrollingDownProvider = StateProvider<bool>((ref) => false);
