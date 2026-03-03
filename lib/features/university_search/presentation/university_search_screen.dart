// ignore_for_file: deprecated_member_use
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import '../../../core/l10n_extension.dart';
import '../../../core/models/university_model.dart';
import '../../../core/widgets/skeletons/shimmer_effect.dart';
import '../../../core/theme/app_colors.dart';
import '../../../core/theme/app_motion.dart';
import '../../../core/widgets/navia_footer.dart';
import '../../chatbot/application/providers/scroll_direction_provider.dart';
import '../../home/presentation/widgets/staggered_fade_in.dart';
import '../repositories/university_repository.dart';
import '../providers/university_search_provider.dart';

/// University Search Screen with filters and sorting
class UniversitySearchScreen extends ConsumerStatefulWidget {
  const UniversitySearchScreen({super.key});

  @override
  ConsumerState<UniversitySearchScreen> createState() => _UniversitySearchScreenState();
}

class _UniversitySearchScreenState extends ConsumerState<UniversitySearchScreen> {
  final _searchController = TextEditingController();
  final _scrollController = ScrollController();

  @override
  void initState() {
    super.initState();
    _scrollController.addListener(_onScroll);
  }

  @override
  void dispose() {
    _searchController.dispose();
    _scrollController.dispose();
    super.dispose();
  }

  void _onScroll() {
    if (_scrollController.position.pixels >= _scrollController.position.maxScrollExtent - 200) {
      ref.read(universitySearchProvider.notifier).loadMore();
    }
    // Update scroll direction for FAB collapse/extend
    final isDown =
        _scrollController.position.userScrollDirection == ScrollDirection.reverse;
    if (ref.read(isScrollingDownProvider) != isDown) {
      ref.read(isScrollingDownProvider.notifier).state = isDown;
    }
  }

  @override
  Widget build(BuildContext context) {
    final state = ref.watch(universitySearchProvider);
    final theme = Theme.of(context);

    return Column(
        children: [
          // ── Teal gradient hero header ──────────────────────────────
          Container(
            width: double.infinity,
            decoration: const BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
                colors: [AppColors.primaryDark, AppColors.primary],
              ),
            ),
            padding: const EdgeInsets.fromLTRB(16, 24, 16, 24),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // Title row with clear action
                Row(
                  children: [
                    Expanded(
                      child: Text(
                        context.l10n.uniSearchTitle,
                        style: theme.textTheme.headlineSmall?.copyWith(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 26,
                        ),
                      ),
                    ),
                    if (state.filters.hasFilters)
                      TextButton.icon(
                        onPressed: () {
                          _searchController.clear();
                          ref.read(universitySearchProvider.notifier).clearFilters();
                        },
                        icon: const Icon(Icons.clear_all, size: 18, color: Colors.white),
                        label: Text(
                          context.l10n.uniSearchClearAll,
                          style: const TextStyle(color: Colors.white),
                        ),
                      ),
                  ],
                ),
                if (state.totalCount > 0) ...[
                  const SizedBox(height: 4),
                  Text(
                    context.l10n.uniSearchResultCount(state.totalCount),
                    style: theme.textTheme.bodyMedium?.copyWith(
                      color: Colors.white.withValues(alpha: 0.9),
                    ),
                  ),
                ],
                const SizedBox(height: 16),
                // Search field inside hero
                Material(
                  elevation: 4,
                  borderRadius: BorderRadius.circular(14),
                  shadowColor: Colors.black.withValues(alpha: 0.15),
                  child: TextField(
                    controller: _searchController,
                    decoration: InputDecoration(
                      hintText: context.l10n.uniSearchHint,
                      prefixIcon: Icon(Icons.search, color: AppColors.textSecondary),
                      suffixIcon: _searchController.text.isNotEmpty
                          ? IconButton(
                              icon: Icon(Icons.clear, color: AppColors.textSecondary),
                              tooltip: context.l10n.uniSearchClearAll,
                              onPressed: () {
                                _searchController.clear();
                                ref.read(universitySearchProvider.notifier).setSearchQuery('');
                              },
                            )
                          : null,
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(14),
                        borderSide: BorderSide.none,
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(14),
                        borderSide: BorderSide.none,
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(14),
                        borderSide: const BorderSide(color: AppColors.primary, width: 2),
                      ),
                      filled: true,
                      fillColor: Colors.white,
                      contentPadding: const EdgeInsets.symmetric(horizontal: 16, vertical: 14),
                    ),
                    onChanged: (value) {
                      ref.read(universitySearchProvider.notifier).setSearchQuery(value);
                    },
                  ),
                ),
              ],
            ),
          ),
          // ── Filter / Sort chips row ────────────────────────────────
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 10),
            child: SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  _FilterChip(
                    label: context.l10n.uniSearchFilters,
                    icon: Icons.tune,
                    isActive: state.filters.hasFilters,
                    onTap: () => _showFilterSheet(context),
                  ),
                  const SizedBox(width: 8),
                  _SortChip(
                    currentSort: state.sortOption,
                    onChanged: (option) {
                      ref.read(universitySearchProvider.notifier).setSortOption(option);
                    },
                  ),
                  if (state.filters.country != null) ...[
                    const SizedBox(width: 8),
                    Chip(
                      label: Text(
                        state.filters.country!,
                        style: const TextStyle(color: Colors.white),
                      ),
                      backgroundColor: AppColors.primary,
                      onDeleted: () {
                        ref.read(universitySearchProvider.notifier).setCountryFilter(null);
                      },
                      deleteIcon: const Icon(Icons.close, size: 18, color: Colors.white),
                      deleteIconColor: Colors.white,
                    ),
                  ],
                  if (state.filters.universityType != null) ...[
                    const SizedBox(width: 8),
                    Chip(
                      label: Text(
                        state.filters.universityType!,
                        style: const TextStyle(color: Colors.white),
                      ),
                      backgroundColor: AppColors.primary,
                      onDeleted: () {
                        ref.read(universitySearchProvider.notifier).setUniversityTypeFilter(null);
                      },
                      deleteIcon: const Icon(Icons.close, size: 18, color: Colors.white),
                      deleteIconColor: Colors.white,
                    ),
                  ],
                ],
              ),
            ),
          ),
          // ── Results Count ──────────────────────────────────────────
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 4),
            child: Row(
              children: [
                Text(
                  context.l10n.uniSearchResultCount(state.totalCount),
                  style: theme.textTheme.bodyMedium?.copyWith(
                    color: AppColors.textSecondary,
                  ),
                ),
                if (state.isLoading) ...[
                  const SizedBox(width: 8),
                  const SizedBox(
                    width: 16,
                    height: 16,
                    child: CircularProgressIndicator(
                      strokeWidth: 2,
                      color: AppColors.primary,
                    ),
                  ),
                ],
              ],
            ),
          ),
          // ── University List ────────────────────────────────────────
          Expanded(
            child: state.isLoading && state.universities.isEmpty
                ? const _UniversityListSkeleton()
                : state.error != null && state.universities.isEmpty
                    ? _ErrorView(
                        error: state.error!,
                        onRetry: () => ref.read(universitySearchProvider.notifier).refresh(),
                      )
                    : state.universities.isEmpty
                        ? _EmptyView(hasFilters: state.filters.hasFilters)
                        : RefreshIndicator(
                            onRefresh: () => ref.read(universitySearchProvider.notifier).refresh(),
                            child: ListView.builder(
                              controller: _scrollController,
                              padding: const EdgeInsets.symmetric(horizontal: 16),
                              itemCount: state.universities.length +
                                  (state.isLoadingMore
                                      ? 1
                                      : (!state.hasMore ? 1 : 0)),
                              itemBuilder: (context, index) {
                                // Loading-more spinner
                                if (state.isLoadingMore && index == state.universities.length) {
                                  return const Padding(
                                    padding: EdgeInsets.all(16),
                                    child: Center(
                                      child: CircularProgressIndicator(color: AppColors.primary),
                                    ),
                                  );
                                }
                                // Footer at the end of the list
                                if (!state.isLoadingMore && !state.hasMore && index == state.universities.length) {
                                  return const NaviaFooter();
                                }
                                return FadeInItem(
                                  delay: Duration(milliseconds: 50 * (index % 20)),
                                  child: _UniversityCard(
                                    university: state.universities[index],
                                    onTap: () {
                                      context.push(
                                        '/universities/${state.universities[index].id}',
                                        extra: state.universities[index],
                                      );
                                    },
                                  ),
                                );
                              },
                            ),
                          ),
          ),
        ],
      );
  }

  void _showFilterSheet(BuildContext context) {
    showModalBottomSheet(
      context: context,
      isScrollControlled: true,
      useSafeArea: true,
      builder: (context) => const _FilterSheet(),
    );
  }
}

/// Filter chip widget
class _FilterChip extends StatelessWidget {
  final String label;
  final IconData icon;
  final bool isActive;
  final VoidCallback onTap;

  const _FilterChip({
    required this.label,
    required this.icon,
    required this.isActive,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return ActionChip(
      avatar: Icon(
        icon,
        size: 18,
        color: isActive ? Colors.white : AppColors.textSecondary,
      ),
      label: Text(label),
      backgroundColor: isActive ? AppColors.primary : AppColors.surface,
      side: isActive ? BorderSide.none : const BorderSide(color: AppColors.border),
      labelStyle: TextStyle(
        color: isActive ? Colors.white : AppColors.textSecondary,
      ),
      onPressed: onTap,
    );
  }
}

/// Sort dropdown chip
class _SortChip extends StatelessWidget {
  final UniversitySortOption currentSort;
  final ValueChanged<UniversitySortOption> onChanged;

  const _SortChip({
    required this.currentSort,
    required this.onChanged,
  });

  @override
  Widget build(BuildContext context) {
    return PopupMenuButton<UniversitySortOption>(
      onSelected: onChanged,
      itemBuilder: (context) => UniversitySortOption.values
          .map((option) => PopupMenuItem(
                value: option,
                child: Row(
                  children: [
                    if (option == currentSort)
                      const Icon(Icons.check, size: 18, color: AppColors.primary)
                    else
                      const SizedBox(width: 18),
                    const SizedBox(width: 8),
                    Text(option.label),
                  ],
                ),
              ))
          .toList(),
      child: Chip(
        avatar: const Icon(Icons.sort, size: 18, color: AppColors.textSecondary),
        label: Text(
          currentSort.label,
          style: const TextStyle(color: AppColors.textSecondary),
        ),
        backgroundColor: AppColors.surface,
        side: const BorderSide(color: AppColors.border),
      ),
    );
  }
}

/// Filter bottom sheet
class _FilterSheet extends ConsumerStatefulWidget {
  const _FilterSheet();

  @override
  ConsumerState<_FilterSheet> createState() => _FilterSheetState();
}

class _FilterSheetState extends ConsumerState<_FilterSheet> {
  String? _selectedCountry;
  String? _selectedType;
  String? _selectedLocationType;
  double? _maxTuition;
  RangeValues? _acceptanceRateRange;

  @override
  void initState() {
    super.initState();
    final state = ref.read(universitySearchProvider);
    _selectedCountry = state.filters.country;
    _selectedType = state.filters.universityType;
    _selectedLocationType = state.filters.locationType;
    _maxTuition = state.filters.maxTuition;
    if (state.filters.minAcceptanceRate != null || state.filters.maxAcceptanceRate != null) {
      _acceptanceRateRange = RangeValues(
        state.filters.minAcceptanceRate ?? 0,
        state.filters.maxAcceptanceRate ?? 1,
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    final state = ref.watch(universitySearchProvider);
    final theme = Theme.of(context);

    return DraggableScrollableSheet(
      initialChildSize: 0.7,
      minChildSize: 0.5,
      maxChildSize: 0.95,
      expand: false,
      builder: (context, scrollController) {
        return Container(
          decoration: BoxDecoration(
            color: theme.colorScheme.surface,
            borderRadius: const BorderRadius.vertical(top: Radius.circular(20)),
          ),
          child: Column(
            children: [
              // Handle
              Container(
                margin: const EdgeInsets.only(top: 12),
                width: 40,
                height: 4,
                decoration: BoxDecoration(
                  color: theme.colorScheme.onSurfaceVariant.withValues(alpha: 0.4),
                  borderRadius: BorderRadius.circular(2),
                ),
              ),
              // Header
              Padding(
                padding: const EdgeInsets.all(16),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      context.l10n.uniSearchFilters,
                      style: theme.textTheme.titleLarge?.copyWith(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    TextButton(
                      onPressed: () {
                        setState(() {
                          _selectedCountry = null;
                          _selectedType = null;
                          _selectedLocationType = null;
                          _maxTuition = null;
                          _acceptanceRateRange = null;
                        });
                      },
                      child: Text(context.l10n.uniSearchFilterReset),
                    ),
                  ],
                ),
              ),
              const Divider(height: 1),
              // Filter Options
              Expanded(
                child: ListView(
                  controller: scrollController,
                  padding: const EdgeInsets.all(16),
                  children: [
                    // Country Filter
                    _FilterSection(
                      title: context.l10n.uniSearchFilterCountry,
                      child: DropdownButtonFormField<String>(
                        value: _selectedCountry,
                        decoration: InputDecoration(
                          hintText: context.l10n.uniSearchFilterSelectCountry,
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(12),
                          ),
                        ),
                        items: [
                          DropdownMenuItem(value: null, child: Text(context.l10n.uniSearchFilterAllCountries)),
                          ...state.availableCountries.map(
                            (c) => DropdownMenuItem(value: c, child: Text(c)),
                          ),
                        ],
                        onChanged: (value) => setState(() => _selectedCountry = value),
                      ),
                    ),
                    const SizedBox(height: 24),
                    // University Type Filter
                    _FilterSection(
                      title: context.l10n.uniSearchFilterUniType,
                      child: DropdownButtonFormField<String>(
                        value: _selectedType,
                        decoration: InputDecoration(
                          hintText: context.l10n.uniSearchFilterSelectType,
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(12),
                          ),
                        ),
                        items: [
                          DropdownMenuItem(value: null, child: Text(context.l10n.uniSearchFilterAllTypes)),
                          ...state.availableTypes.map(
                            (t) => DropdownMenuItem(value: t, child: Text(t)),
                          ),
                        ],
                        onChanged: (value) => setState(() => _selectedType = value),
                      ),
                    ),
                    const SizedBox(height: 24),
                    // Location Type Filter
                    _FilterSection(
                      title: context.l10n.uniSearchFilterLocationType,
                      child: DropdownButtonFormField<String>(
                        value: _selectedLocationType,
                        decoration: InputDecoration(
                          hintText: context.l10n.uniSearchFilterSelectLocation,
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(12),
                          ),
                        ),
                        items: [
                          DropdownMenuItem(value: null, child: Text(context.l10n.uniSearchFilterAllLocations)),
                          ...state.availableLocationTypes.map(
                            (l) => DropdownMenuItem(value: l, child: Text(l)),
                          ),
                        ],
                        onChanged: (value) => setState(() => _selectedLocationType = value),
                      ),
                    ),
                    const SizedBox(height: 24),
                    // Max Tuition Filter
                    _FilterSection(
                      title: context.l10n.uniSearchFilterMaxTuition,
                      child: Column(
                        children: [
                          Slider(
                            value: _maxTuition ?? 100000,
                            min: 0,
                            max: 100000,
                            divisions: 100,
                            label: _maxTuition != null
                                ? '\$${_maxTuition!.toInt().toString().replaceAllMapped(RegExp(r'(\d{1,3})(?=(\d{3})+(?!\d))'), (m) => '${m[1]},')}'
                                : context.l10n.uniSearchFilterAny,
                            onChanged: (value) {
                              setState(() {
                                _maxTuition = value == 100000 ? null : value;
                              });
                            },
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              const Text('\$0'),
                              Text(_maxTuition != null
                                  ? 'Up to \$${_maxTuition!.toInt().toString().replaceAllMapped(RegExp(r'(\d{1,3})(?=(\d{3})+(?!\d))'), (m) => '${m[1]},')}'
                                  : context.l10n.uniSearchFilterNoLimit),
                              const Text('\$100,000+'),
                            ],
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(height: 24),
                    // Acceptance Rate Filter
                    _FilterSection(
                      title: context.l10n.uniSearchFilterAcceptanceRate,
                      child: Column(
                        children: [
                          RangeSlider(
                            values: _acceptanceRateRange ?? const RangeValues(0, 1),
                            min: 0,
                            max: 1,
                            divisions: 100,
                            labels: RangeLabels(
                              '${((_acceptanceRateRange?.start ?? 0) * 100).toInt()}%',
                              '${((_acceptanceRateRange?.end ?? 1) * 100).toInt()}%',
                            ),
                            onChanged: (values) {
                              setState(() {
                                _acceptanceRateRange = values.start == 0 && values.end == 1 ? null : values;
                              });
                            },
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              const Text('0%'),
                              Text(_acceptanceRateRange != null
                                  ? '${(_acceptanceRateRange!.start * 100).toInt()}% - ${(_acceptanceRateRange!.end * 100).toInt()}%'
                                  : context.l10n.uniSearchFilterAnyRate),
                              const Text('100%'),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              // Apply Button
              Container(
                padding: const EdgeInsets.all(16),
                decoration: BoxDecoration(
                  color: theme.colorScheme.surface,
                  border: Border(
                    top: BorderSide(
                      color: theme.colorScheme.outlineVariant,
                    ),
                  ),
                ),
                child: SizedBox(
                  width: double.infinity,
                  child: FilledButton(
                    onPressed: () {
                      final notifier = ref.read(universitySearchProvider.notifier);
                      notifier.setCountryFilter(_selectedCountry);
                      notifier.setUniversityTypeFilter(_selectedType);
                      notifier.setLocationTypeFilter(_selectedLocationType);
                      notifier.setMaxTuitionFilter(_maxTuition);
                      notifier.setAcceptanceRateFilter(
                        _acceptanceRateRange?.start,
                        _acceptanceRateRange?.end,
                      );
                      Navigator.pop(context);
                    },
                    style: FilledButton.styleFrom(
                      backgroundColor: AppColors.primary,
                      padding: const EdgeInsets.symmetric(vertical: 16),
                    ),
                    child: Text(context.l10n.uniSearchFilterApply),
                  ),
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}

/// Filter section widget
class _FilterSection extends StatelessWidget {
  final String title;
  final Widget child;

  const _FilterSection({
    required this.title,
    required this.child,
  });

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title,
          style: theme.textTheme.titleMedium?.copyWith(
            fontWeight: FontWeight.w600,
          ),
        ),
        const SizedBox(height: 8),
        child,
      ],
    );
  }
}

/// University card widget with hover lift effect
class _UniversityCard extends StatefulWidget {
  final University university;
  final VoidCallback onTap;

  const _UniversityCard({
    required this.university,
    required this.onTap,
  });

  @override
  State<_UniversityCard> createState() => _UniversityCardState();
}

class _UniversityCardState extends State<_UniversityCard> {
  bool _isHovered = false;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return MouseRegion(
      onEnter: (_) => setState(() => _isHovered = true),
      onExit: (_) => setState(() => _isHovered = false),
      child: AnimatedContainer(
        duration: AppMotion.durationShort,
        curve: AppMotion.curveStandard,
        transform: _isHovered
            ? (Matrix4.identity()..translate(0.0, -2.0))
            : Matrix4.identity(),
        child: Card(
          margin: const EdgeInsets.only(bottom: 12),
          clipBehavior: Clip.antiAlias,
          elevation: _isHovered ? 4 : 0,
          shadowColor: _isHovered
              ? AppColors.primary.withValues(alpha: 0.15)
              : Colors.transparent,
          color: AppColors.surface,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(14),
            side: const BorderSide(color: AppColors.border),
          ),
          child: InkWell(
            onTap: widget.onTap,
            child: Padding(
              padding: const EdgeInsets.all(16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // Name and Country
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      // Logo placeholder
                      Hero(
                        tag: 'university-logo-${widget.university.id}',
                        child: Container(
                          width: 56,
                          height: 56,
                          decoration: BoxDecoration(
                            color: AppColors.primary.withValues(alpha: 0.1),
                            borderRadius: BorderRadius.circular(12),
                          ),
                          child: Center(
                            child: Text(
                              widget.university.name.isNotEmpty ? widget.university.name[0].toUpperCase() : 'U',
                              style: theme.textTheme.headlineSmall?.copyWith(
                                color: AppColors.primary,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(width: 12),
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              widget.university.name,
                              style: theme.textTheme.titleMedium?.copyWith(
                                fontWeight: FontWeight.bold,
                              ),
                              maxLines: 2,
                              overflow: TextOverflow.ellipsis,
                            ),
                            const SizedBox(height: 4),
                            Row(
                              children: [
                                const Icon(
                                  Icons.location_on,
                                  size: 16,
                                  color: AppColors.textSecondary,
                                ),
                                const SizedBox(width: 4),
                                Expanded(
                                  child: Text(
                                    [
                                      widget.university.city,
                                      widget.university.state,
                                      widget.university.country,
                                    ].where((s) => s != null && s.isNotEmpty).join(', '),
                                    style: theme.textTheme.bodyMedium?.copyWith(
                                      color: AppColors.textSecondary,
                                    ),
                                    maxLines: 1,
                                    overflow: TextOverflow.ellipsis,
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                      const Icon(
                        Icons.chevron_right,
                        color: AppColors.textSecondary,
                      ),
                    ],
                  ),
                  const SizedBox(height: 12),
                  // Quick Stats
                  Wrap(
                    spacing: 16,
                    runSpacing: 8,
                    children: [
                      if (widget.university.acceptanceRate != null)
                        _StatChip(
                          icon: Icons.percent,
                          label: context.l10n.uniSearchAcceptance((widget.university.acceptanceRate! * 100).toStringAsFixed(0)),
                        ),
                      if (widget.university.tuitionOutState != null)
                        _StatChip(
                          icon: Icons.payments,
                          label: '\$${widget.university.tuitionOutState!.toInt().toString().replaceAllMapped(RegExp(r'(\d{1,3})(?=(\d{3})+(?!\d))'), (m) => '${m[1]},')}/yr',
                        ),
                      if (widget.university.totalStudents != null)
                        _StatChip(
                          icon: Icons.people,
                          label: context.l10n.uniSearchStudents(_formatNumber(widget.university.totalStudents!)),
                        ),
                      if (widget.university.universityType != null)
                        _StatChip(
                          icon: Icons.school,
                          label: widget.university.universityType!,
                        ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  String _formatNumber(int number) {
    if (number >= 1000000) {
      return '${(number / 1000000).toStringAsFixed(1)}M';
    } else if (number >= 1000) {
      return '${(number / 1000).toStringAsFixed(1)}K';
    }
    return number.toString();
  }
}

/// Stat chip for university card
class _StatChip extends StatelessWidget {
  final IconData icon;
  final String label;

  const _StatChip({
    required this.icon,
    required this.label,
  });

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        Icon(
          icon,
          size: 14,
          color: AppColors.primaryDark,
        ),
        const SizedBox(width: 4),
        Text(
          label,
          style: theme.textTheme.bodySmall?.copyWith(
            color: AppColors.textSecondary,
          ),
        ),
      ],
    );
  }
}

/// Empty view when no universities found
class _EmptyView extends StatelessWidget {
  final bool hasFilters;

  const _EmptyView({required this.hasFilters});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Center(
      child: Padding(
        padding: const EdgeInsets.all(32),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              Icons.search_off,
              size: 64,
              color: AppColors.textSecondary,
              semanticLabel: context.l10n.uniSearchNoResults,
            ),
            const SizedBox(height: 16),
            Text(
              hasFilters ? context.l10n.uniSearchNoMatchFilters : context.l10n.uniSearchNoResults,
              style: theme.textTheme.titleMedium?.copyWith(
                color: AppColors.textSecondary,
              ),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 8),
            Text(
              hasFilters
                  ? context.l10n.uniSearchAdjustFilters
                  : context.l10n.uniSearchTrySearching,
              style: theme.textTheme.bodyMedium?.copyWith(
                color: AppColors.textSecondary,
              ),
              textAlign: TextAlign.center,
            ),
          ],
        ),
      ),
    );
  }
}

/// Error view
class _ErrorView extends StatelessWidget {
  final String error;
  final VoidCallback onRetry;

  const _ErrorView({
    required this.error,
    required this.onRetry,
  });

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Center(
      child: Padding(
        padding: const EdgeInsets.all(32),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              Icons.error_outline,
              size: 64,
              color: AppColors.error,
              semanticLabel: context.l10n.uniSearchError,
            ),
            const SizedBox(height: 16),
            Text(
              context.l10n.uniSearchError,
              style: theme.textTheme.titleMedium?.copyWith(
                color: AppColors.error,
              ),
            ),
            const SizedBox(height: 8),
            Text(
              error,
              style: theme.textTheme.bodyMedium?.copyWith(
                color: AppColors.textSecondary,
              ),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 16),
            FilledButton.icon(
              onPressed: onRetry,
              icon: const Icon(Icons.refresh),
              label: Text(context.l10n.uniSearchRetry),
              style: FilledButton.styleFrom(
                backgroundColor: AppColors.primary,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

/// Shimmer skeleton that mirrors _UniversityCard layout
class _UniversityListSkeleton extends StatelessWidget {
  const _UniversityListSkeleton();

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      itemCount: 6,
      itemBuilder: (_, __) => const _UniversityCardSkeleton(),
    );
  }
}

class _UniversityCardSkeleton extends StatelessWidget {
  const _UniversityCardSkeleton();

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.only(bottom: 12),
      clipBehavior: Clip.antiAlias,
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: ShimmerEffect(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // Logo placeholder
                  SkeletonBox(
                    width: 56,
                    height: 56,
                    borderRadius: BorderRadius.circular(12),
                  ),
                  const SizedBox(width: 12),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SkeletonLine(width: 180, height: 16),
                        const SizedBox(height: 8),
                        SkeletonLine(width: 140, height: 14),
                      ],
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 12),
              // Stat chips row
              Row(
                children: [
                  SkeletonBox(
                    width: 80,
                    height: 28,
                    borderRadius: BorderRadius.circular(14),
                  ),
                  const SizedBox(width: 8),
                  SkeletonBox(
                    width: 100,
                    height: 28,
                    borderRadius: BorderRadius.circular(14),
                  ),
                  const SizedBox(width: 8),
                  SkeletonBox(
                    width: 70,
                    height: 28,
                    borderRadius: BorderRadius.circular(14),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
