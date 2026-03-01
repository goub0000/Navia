import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter/semantics.dart';
import '../../../../core/theme/app_colors.dart';
import '../../data/testimonials_data.dart';

/// A horizontal scrolling carousel for testimonials.
///
/// Features:
/// - Auto-scroll with hover/focus/pause-button pause
/// - Accessible prev/next/pause controls
/// - Navigation dots with semantics
/// - Per-slide screen reader announcements
/// - Card width: 320px minimum
/// - Smooth scroll animations
class TestimonialCarousel extends StatefulWidget {
  final List<TestimonialData> testimonials;
  final Duration autoScrollDuration;
  final bool enableAutoScroll;

  const TestimonialCarousel({
    super.key,
    required this.testimonials,
    this.autoScrollDuration = const Duration(seconds: 5),
    this.enableAutoScroll = true,
  });

  @override
  State<TestimonialCarousel> createState() => _TestimonialCarouselState();
}

class _TestimonialCarouselState extends State<TestimonialCarousel> {
  late PageController _pageController;
  int _currentPage = 0;
  Timer? _autoScrollTimer;
  bool _isHovered = false;
  bool _isPaused = false;
  bool _isFocused = false;

  @override
  void initState() {
    super.initState();
    _pageController = PageController(viewportFraction: 0.85, initialPage: 0);
    if (widget.enableAutoScroll) {
      _startAutoScroll();
    }
  }

  void _startAutoScroll() {
    _autoScrollTimer = Timer.periodic(widget.autoScrollDuration, (_) {
      if (!_isHovered && !_isPaused && !_isFocused && mounted) {
        final nextPage = (_currentPage + 1) % widget.testimonials.length;
        _pageController.animateToPage(
          nextPage,
          duration: const Duration(milliseconds: 500),
          curve: Curves.easeInOut,
        );
      }
    });
  }

  void _goToPrevious() {
    final prevPage =
        (_currentPage - 1 + widget.testimonials.length) %
        widget.testimonials.length;
    _pageController.animateToPage(
      prevPage,
      duration: const Duration(milliseconds: 300),
      curve: Curves.easeInOut,
    );
  }

  void _goToNext() {
    final nextPage = (_currentPage + 1) % widget.testimonials.length;
    _pageController.animateToPage(
      nextPage,
      duration: const Duration(milliseconds: 300),
      curve: Curves.easeInOut,
    );
  }

  void _togglePause() {
    setState(() {
      _isPaused = !_isPaused;
    });
    SemanticsService.announce(
      _isPaused ? 'Carousel paused' : 'Carousel playing',
      TextDirection.ltr,
    );
  }

  @override
  void dispose() {
    _autoScrollTimer?.cancel();
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Semantics(
      label: 'User testimonials',
      container: true,
      liveRegion: true,
      child: FocusScope(
        onFocusChange: (focused) => setState(() => _isFocused = focused),
        child: MouseRegion(
          onEnter: (_) => setState(() => _isHovered = true),
          onExit: (_) => setState(() => _isHovered = false),
          child: Column(
            children: [
              SizedBox(
                height: 320,
                child: PageView.builder(
                  controller: _pageController,
                  onPageChanged: (index) {
                    setState(() => _currentPage = index);
                    SemanticsService.announce(
                      'Testimonial ${index + 1} of ${widget.testimonials.length}, ${widget.testimonials[index].name}',
                      TextDirection.ltr,
                    );
                  },
                  itemCount: widget.testimonials.length,
                  itemBuilder: (context, index) {
                    return Semantics(
                      label:
                          'Testimonial ${index + 1} of ${widget.testimonials.length}',
                      container: true,
                      child: _TestimonialCard(
                        testimonial: widget.testimonials[index],
                        isActive: index == _currentPage,
                      ),
                    );
                  },
                ),
              ),
              const SizedBox(height: 16),
              // Carousel Controls
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  IconButton(
                    onPressed: _goToPrevious,
                    icon: const Icon(Icons.chevron_left),
                    tooltip: 'Previous testimonial',
                  ),
                  const SizedBox(width: 8),
                  IconButton(
                    onPressed: _togglePause,
                    icon: Icon(_isPaused ? Icons.play_arrow : Icons.pause),
                    tooltip: _isPaused ? 'Play carousel' : 'Pause carousel',
                  ),
                  const SizedBox(width: 8),
                  IconButton(
                    onPressed: _goToNext,
                    icon: const Icon(Icons.chevron_right),
                    tooltip: 'Next testimonial',
                  ),
                ],
              ),
              const SizedBox(height: 12),
              // Navigation Dots
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: List.generate(
                  widget.testimonials.length,
                  (index) => _CarouselDot(
                    index: index,
                    isActive: index == _currentPage,
                    totalCount: widget.testimonials.length,
                    onTap: () {
                      _pageController.animateToPage(
                        index,
                        duration: const Duration(milliseconds: 300),
                        curve: Curves.easeInOut,
                      );
                    },
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

/// Carousel navigation dot with hover state.
class _CarouselDot extends StatefulWidget {
  final int index;
  final bool isActive;
  final int totalCount;
  final VoidCallback onTap;

  const _CarouselDot({
    required this.index,
    required this.isActive,
    required this.totalCount,
    required this.onTap,
  });

  @override
  State<_CarouselDot> createState() => _CarouselDotState();
}

class _CarouselDotState extends State<_CarouselDot> {
  bool _isHovered = false;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    final double width;
    final double opacity;

    if (widget.isActive) {
      width = 24;
      opacity = 1.0;
    } else if (_isHovered) {
      width = 12;
      opacity = 0.5;
    } else {
      width = 8;
      opacity = 0.3;
    }

    return Semantics(
      button: true,
      label: 'Go to testimonial ${widget.index + 1}',
      child: MouseRegion(
        onEnter: (_) => setState(() => _isHovered = true),
        onExit: (_) => setState(() => _isHovered = false),
        child: InkWell(
          onTap: widget.onTap,
          borderRadius: BorderRadius.circular(4),
          child: AnimatedContainer(
            duration: const Duration(milliseconds: 200),
            margin: const EdgeInsets.symmetric(horizontal: 4),
            width: width,
            height: 8,
            decoration: BoxDecoration(
              color: theme.colorScheme.primary.withValues(alpha: opacity),
              borderRadius: BorderRadius.circular(4),
            ),
          ),
        ),
      ),
    );
  }
}

class _TestimonialCard extends StatelessWidget {
  final TestimonialData testimonial;
  final bool isActive;

  const _TestimonialCard({required this.testimonial, required this.isActive});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return AnimatedContainer(
      duration: const Duration(milliseconds: 300),
      margin: EdgeInsets.symmetric(horizontal: 8, vertical: isActive ? 0 : 16),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(24),
        child: Stack(
          children: [
            // Card body
            Container(
              decoration: BoxDecoration(
                color: theme.colorScheme.surface,
                borderRadius: BorderRadius.circular(24),
                border: Border.all(
                  color: isActive
                      ? theme.colorScheme.primary.withValues(alpha: 0.3)
                      : theme.colorScheme.outlineVariant,
                  width: isActive ? 2 : 1,
                ),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withValues(
                      alpha: isActive ? 0.12 : 0.05,
                    ),
                    blurRadius: isActive ? 24 : 10,
                    offset: Offset(0, isActive ? 10 : 5),
                  ),
                ],
              ),
              child: Padding(
                padding: const EdgeInsets.all(28),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    // Quote Icon
                    Icon(
                      Icons.format_quote,
                      color: theme.colorScheme.primary.withValues(alpha: 0.3),
                      size: 32,
                    ),
                    const SizedBox(height: 12),
                    // Quote Text
                    Expanded(
                      child: Text(
                        testimonial.quote,
                        style: theme.textTheme.bodyLarge?.copyWith(
                          fontStyle: FontStyle.italic,
                          height: 1.6,
                          color: theme.colorScheme.onSurface,
                        ),
                        maxLines: 4,
                        overflow: TextOverflow.ellipsis,
                      ),
                    ),
                    const SizedBox(height: 16),
                    // Outcome Badge
                    Container(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 12,
                        vertical: 6,
                      ),
                      decoration: BoxDecoration(
                        color: AppColors.success.withValues(alpha: 0.1),
                        borderRadius: BorderRadius.circular(100),
                      ),
                      child: Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Icon(
                            Icons.check_circle,
                            size: 16,
                            color: AppColors.success,
                          ),
                          const SizedBox(width: 6),
                          Flexible(
                            child: Text(
                              testimonial.outcome,
                              style: theme.textTheme.labelMedium?.copyWith(
                                color: AppColors.success,
                                fontWeight: FontWeight.w600,
                                fontSize: 13,
                              ),
                              overflow: TextOverflow.ellipsis,
                            ),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(height: 16),
                    // Author Info
                    Row(
                      children: [
                        // Avatar
                        CircleAvatar(
                          radius: 22,
                          backgroundColor: theme.colorScheme.primaryContainer,
                          child: Text(
                            testimonial.name.split(' ').map((n) => n[0]).join(),
                            style: theme.textTheme.titleMedium?.copyWith(
                              color: theme.colorScheme.onPrimaryContainer,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                        const SizedBox(width: 12),
                        // Name and Role
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                testimonial.name,
                                style: theme.textTheme.titleSmall?.copyWith(
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              Text(
                                '${testimonial.role} - ${testimonial.university}',
                                style: theme.textTheme.bodySmall?.copyWith(
                                  color: theme.colorScheme.onSurfaceVariant,
                                ),
                                overflow: TextOverflow.ellipsis,
                              ),
                            ],
                          ),
                        ),
                        // Country Flag placeholder
                        Container(
                          padding: const EdgeInsets.all(6),
                          decoration: BoxDecoration(
                            color: theme.colorScheme.surfaceContainerHighest,
                            shape: BoxShape.circle,
                          ),
                          child: Text(
                            _getCountryFlag(testimonial.country),
                            style: theme.textTheme.bodyLarge,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            // Left accent bar
            Positioned(
              left: 0,
              top: 0,
              bottom: 0,
              child: Container(width: 3, color: theme.colorScheme.primary),
            ),
          ],
        ),
      ),
    );
  }

  String _getCountryFlag(String country) {
    switch (country.toLowerCase()) {
      case 'ghana':
        return '\u{1F1EC}\u{1F1ED}'; // Ghana flag
      case 'kenya':
        return '\u{1F1F0}\u{1F1EA}'; // Kenya flag
      case 'nigeria':
        return '\u{1F1F3}\u{1F1EC}'; // Nigeria flag
      case 'south africa':
        return '\u{1F1FF}\u{1F1E6}'; // South Africa flag
      case 'senegal':
        return '\u{1F1F8}\u{1F1F3}'; // Senegal flag
      case 'zambia':
        return '\u{1F1FF}\u{1F1F2}'; // Zambia flag
      case 'uganda':
        return '\u{1F1FA}\u{1F1EC}'; // Uganda flag
      default:
        return '\u{1F30D}'; // Globe emoji
    }
  }
}

/// A simple testimonial grid for non-carousel display
class TestimonialGrid extends StatelessWidget {
  final List<TestimonialData> testimonials;
  final int crossAxisCount;

  const TestimonialGrid({
    super.key,
    required this.testimonials,
    this.crossAxisCount = 3,
  });

  @override
  Widget build(BuildContext context) {
    return Wrap(
      spacing: 24,
      runSpacing: 24,
      alignment: WrapAlignment.center,
      children: testimonials.map((testimonial) {
        return SizedBox(
          width: 340,
          child: _TestimonialCard(testimonial: testimonial, isActive: true),
        );
      }).toList(),
    );
  }
}
