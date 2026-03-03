import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:url_launcher/url_launcher.dart';
import '../../../../core/l10n_extension.dart';
import '../../../../core/theme/app_colors.dart';
import '../../../../core/widgets/navia_footer.dart';
import '../../../../core/widgets/navia_loading_indicator.dart';
import '../../data/services/find_your_path_service.dart';
import '../../domain/models/university.dart';

/// University detail screen showing comprehensive information
class UniversityDetailScreen extends ConsumerStatefulWidget {
  final String universityId;

  const UniversityDetailScreen({
    super.key,
    required this.universityId,
  });

  @override
  ConsumerState<UniversityDetailScreen> createState() =>
      _UniversityDetailScreenState();
}

class _UniversityDetailScreenState
    extends ConsumerState<UniversityDetailScreen> {
  University? _university;
  bool _isLoading = true;
  String? _error;

  @override
  void initState() {
    super.initState();
    _loadUniversity();
  }

  Future<void> _loadUniversity() async {
    setState(() {
      _isLoading = true;
      _error = null;
    });

    try {
      final service = FindYourPathService();
      final university =
          await service.getUniversity(int.parse(widget.universityId));
      setState(() {
        _university = university;
        _isLoading = false;
      });
    } catch (e) {
      setState(() {
        _error = e.toString();
        _isLoading = false;
      });
    }
  }

  // ---------------------------------------------------------------------------
  // Helpers
  // ---------------------------------------------------------------------------

  /// Format a number with comma thousands separators.
  String _formatNumber(num value) {
    return value
        .toStringAsFixed(0)
        .replaceAllMapped(
          RegExp(r'(\d)(?=(\d{3})+(?!\d))'),
          (match) => '${match[1]},',
        );
  }

  /// Format a currency value (USD).
  String _formatCurrency(num value) {
    return '\$${_formatNumber(value)}';
  }

  /// True when the admissions section has at least one data point.
  bool _hasAdmissionsData(University u) {
    return u.acceptanceRate != null ||
        u.gpaAverage != null ||
        (u.satMath25th != null && u.satMath75th != null) ||
        (u.satEbrw25th != null && u.satEbrw75th != null) ||
        (u.actComposite25th != null && u.actComposite75th != null);
  }

  /// True when the costs section has at least one data point.
  bool _hasCostsData(University u) {
    return u.tuitionOutState != null || u.totalCost != null;
  }

  /// True when the outcomes section has at least one data point.
  bool _hasOutcomesData(University u) {
    return u.graduationRate != null || u.medianEarnings != null;
  }

  // ---------------------------------------------------------------------------
  // Build
  // ---------------------------------------------------------------------------

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.background,
      body: _isLoading
          ? const NaviaLoadingIndicator()
          : _error != null
              ? _buildErrorState()
              : _university == null
                  ? Center(child: Text(context.l10n.fypUniversityNotFound))
                  : _buildContent(),
    );
  }

  // ---------------------------------------------------------------------------
  // Error state
  // ---------------------------------------------------------------------------

  Widget _buildErrorState() {
    return Center(
      child: Padding(
        padding: const EdgeInsets.all(24),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              width: 80,
              height: 80,
              decoration: BoxDecoration(
                color: AppColors.error.withValues(alpha: 0.1),
                shape: BoxShape.circle,
              ),
              child: Icon(Icons.error_outline, size: 40, color: AppColors.error),
            ),
            const SizedBox(height: 24),
            Text(
              context.l10n.fypErrorLoadingUniversity,
              style: const TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: AppColors.textPrimary,
              ),
            ),
            const SizedBox(height: 8),
            Text(
              _error ?? context.l10n.fypUnknownError,
              style: const TextStyle(color: AppColors.textSecondary),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 32),
            FilledButton.icon(
              onPressed: _loadUniversity,
              icon: const Icon(Icons.refresh, size: 18),
              label: Text(context.l10n.fypTryAgain),
              style: FilledButton.styleFrom(
                backgroundColor: AppColors.primary,
                foregroundColor: Colors.white,
                padding:
                    const EdgeInsets.symmetric(horizontal: 28, vertical: 14),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  // ---------------------------------------------------------------------------
  // Main content
  // ---------------------------------------------------------------------------

  Widget _buildContent() {
    final university = _university!;

    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          // Full-width hero banner (edge-to-edge, no rounded corners)
          _buildHeroBanner(university),

          // Body content with constrained width
          Center(
            child: ConstrainedBox(
              constraints: const BoxConstraints(maxWidth: 1000),
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 24, vertical: 32),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    // Quick Stats
                    _buildQuickStats(university),
                    const SizedBox(height: 32),

                    // About / Description
                    if (university.description != null &&
                        university.description!.trim().isNotEmpty) ...[
                      _buildSectionCard(
                        icon: Icons.info_outline,
                        title: context.l10n.fypAbout,
                        child: Text(
                          university.description!,
                          style: const TextStyle(
                            fontSize: 15,
                            height: 1.7,
                            color: AppColors.textSecondary,
                          ),
                        ),
                      ),
                      const SizedBox(height: 24),
                    ],

                    // Admissions
                    if (_hasAdmissionsData(university)) ...[
                      _buildSectionCard(
                        icon: Icons.school_outlined,
                        title: context.l10n.fypAdmissions,
                        child: _buildAdmissionsInfo(university),
                      ),
                      const SizedBox(height: 24),
                    ],

                    // Costs & Financial Aid
                    if (_hasCostsData(university)) ...[
                      _buildSectionCard(
                        icon: Icons.account_balance_wallet_outlined,
                        title: context.l10n.fypCostsFinancialAid,
                        child: _buildCostsInfo(university),
                      ),
                      const SizedBox(height: 24),
                    ],

                    // Student Outcomes
                    if (_hasOutcomesData(university)) ...[
                      _buildSectionCard(
                        icon: Icons.trending_up,
                        title: context.l10n.fypStudentOutcomes,
                        child: _buildOutcomesInfo(university),
                      ),
                      const SizedBox(height: 24),
                    ],

                    // Programs
                    if (university.programs != null &&
                        university.programs!.isNotEmpty) ...[
                      _buildSectionCard(
                        icon: Icons.auto_stories_outlined,
                        title: context.l10n.fypProgramsOffered,
                        child: _buildProgramsGrid(university.programs!),
                      ),
                    ],
                  ],
                ),
              ),
            ),
          ),

          // Footer
          const NaviaFooter(),
        ],
      ),
    );
  }

  // ---------------------------------------------------------------------------
  // Hero banner
  // ---------------------------------------------------------------------------

  Widget _buildHeroBanner(University university) {
    return Container(
      width: double.infinity,
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          colors: [
            AppColors.secondary, // Navy at top
            AppColors.secondaryLight, // Slightly lighter navy
            AppColors.primaryDark, // Deep teal at bottom
          ],
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
        ),
      ),
      child: SafeArea(
        bottom: false,
        child: Center(
          child: ConstrainedBox(
            constraints: const BoxConstraints(maxWidth: 1000),
            child: Padding(
              padding: const EdgeInsets.fromLTRB(24, 16, 24, 32),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // Top row: Back button
                  TextButton.icon(
                    onPressed: () {
                      if (Navigator.of(context).canPop()) {
                        context.pop();
                      } else {
                        context.go('/find-your-path/results');
                      }
                    },
                    icon: const Icon(Icons.arrow_back, size: 18),
                    label: Text(context.l10n.fypBack),
                    style: TextButton.styleFrom(
                      foregroundColor: Colors.white.withValues(alpha: 0.9),
                      padding: const EdgeInsets.symmetric(
                          horizontal: 8, vertical: 4),
                    ),
                  ),

                  const SizedBox(height: 20),

                  // University name & location
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      // Icon / logo placeholder
                      Container(
                        width: 72,
                        height: 72,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(14),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.black.withValues(alpha: 0.15),
                              blurRadius: 12,
                              offset: const Offset(0, 4),
                            ),
                          ],
                        ),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(14),
                          child: university.logoUrl != null
                              ? Image.network(
                                  university.logoUrl!,
                                  fit: BoxFit.cover,
                                  errorBuilder: (_, __, ___) => const Icon(
                                    Icons.school,
                                    size: 36,
                                    color: AppColors.primary,
                                  ),
                                )
                              : const Icon(
                                  Icons.school,
                                  size: 36,
                                  color: AppColors.primary,
                                ),
                        ),
                      ),
                      const SizedBox(width: 20),
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              university.name,
                              style: const TextStyle(
                                fontSize: 26,
                                fontWeight: FontWeight.w800,
                                color: Colors.white,
                                height: 1.2,
                              ),
                            ),
                            const SizedBox(height: 8),
                            Row(
                              children: [
                                Icon(
                                  Icons.location_on_outlined,
                                  size: 16,
                                  color: Colors.white.withValues(alpha: 0.8),
                                ),
                                const SizedBox(width: 4),
                                Flexible(
                                  child: Text(
                                    university.location,
                                    style: TextStyle(
                                      fontSize: 15,
                                      color:
                                          Colors.white.withValues(alpha: 0.85),
                                      height: 1.4,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),

                  const SizedBox(height: 20),

                  // Chips row (type, location type, student count)
                  Wrap(
                    spacing: 10,
                    runSpacing: 10,
                    children: [
                      if (university.universityType != null)
                        _buildHeaderChip(
                          icon: Icons.account_balance_outlined,
                          label: university.universityType!,
                        ),
                      if (university.locationType != null)
                        _buildHeaderChip(
                          icon: Icons.location_city_outlined,
                          label: university.locationType!,
                        ),
                      if (university.totalStudents != null)
                        _buildHeaderChip(
                          icon: Icons.people_outline,
                          label: context.l10n.fypKStudents(
                            (university.totalStudents! / 1000)
                                .toStringAsFixed(1),
                          ),
                        ),
                      if (university.globalRank != null)
                        _buildHeaderChip(
                          icon: Icons.public,
                          label: 'Global #${university.globalRank}',
                        ),
                      if (university.nationalRank != null)
                        _buildHeaderChip(
                          icon: Icons.emoji_events_outlined,
                          label: 'National #${university.nationalRank}',
                        ),
                    ],
                  ),

                  // Visit Website button
                  if (university.website != null &&
                      university.website!.trim().isNotEmpty) ...[
                    const SizedBox(height: 24),
                    OutlinedButton.icon(
                      onPressed: () async {
                        final url = university.website!.startsWith('http')
                            ? university.website!
                            : 'https://${university.website!}';
                        final uri = Uri.parse(url);
                        if (await canLaunchUrl(uri)) {
                          await launchUrl(uri,
                              mode: LaunchMode.externalApplication);
                        }
                      },
                      icon: const Icon(Icons.open_in_new, size: 16),
                      label: Text(context.l10n.fypVisitWebsite),
                      style: OutlinedButton.styleFrom(
                        foregroundColor: Colors.white,
                        side: const BorderSide(color: Colors.white, width: 1.5),
                        padding: const EdgeInsets.symmetric(
                            horizontal: 24, vertical: 12),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),
                    ),
                  ],
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildHeaderChip({
    required IconData icon,
    required String label,
  }) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 7),
      decoration: BoxDecoration(
        color: Colors.white.withValues(alpha: 0.15),
        borderRadius: BorderRadius.circular(20),
        border: Border.all(
          color: Colors.white.withValues(alpha: 0.35),
          width: 1,
        ),
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Icon(icon, size: 14, color: Colors.white.withValues(alpha: 0.9)),
          const SizedBox(width: 6),
          Text(
            label,
            style: TextStyle(
              fontSize: 13,
              fontWeight: FontWeight.w600,
              color: Colors.white.withValues(alpha: 0.95),
            ),
          ),
        ],
      ),
    );
  }

  // ---------------------------------------------------------------------------
  // Quick stats (Wrap-based, only shows cards with data)
  // ---------------------------------------------------------------------------

  Widget _buildQuickStats(University university) {
    final stats = <Widget>[];

    if (university.nationalRank != null) {
      stats.add(_buildStatCard(
        icon: Icons.emoji_events,
        label: context.l10n.fypNationalRank,
        value: '#${university.nationalRank}',
        color: AppColors.warning,
      ));
    }
    if (university.acceptanceRate != null) {
      stats.add(_buildStatCard(
        icon: Icons.percent,
        label: context.l10n.fypAcceptanceRate,
        value: university.formattedAcceptanceRate!,
        color: AppColors.success,
      ));
    }
    if (university.tuitionOutState != null) {
      stats.add(_buildStatCard(
        icon: Icons.attach_money,
        label: context.l10n.fypStatTuition,
        value: university.formattedTuition!,
        color: AppColors.error,
      ));
    }
    if (university.graduationRate != null) {
      stats.add(_buildStatCard(
        icon: Icons.school,
        label: context.l10n.fypGraduationRate,
        value: '${university.graduationRate!.toStringAsFixed(1)}%',
        color: AppColors.primaryDark,
      ));
    }
    if (university.medianEarnings != null) {
      stats.add(_buildStatCard(
        icon: Icons.payments_outlined,
        label: context.l10n.fypMedianEarnings,
        value: _formatCurrency(university.medianEarnings!),
        color: AppColors.secondary,
      ));
    }

    if (stats.isEmpty) return const SizedBox.shrink();

    return Wrap(
      spacing: 16,
      runSpacing: 16,
      children: stats,
    );
  }

  Widget _buildStatCard({
    required IconData icon,
    required String label,
    required String value,
    required Color color,
  }) {
    return SizedBox(
      width: 180,
      child: Card(
        elevation: 2,
        shadowColor: color.withValues(alpha: 0.25),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(14)),
        surfaceTintColor: Colors.transparent,
        color: AppColors.surface,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 20),
          child: Column(
            children: [
              Container(
                width: 44,
                height: 44,
                decoration: BoxDecoration(
                  color: color.withValues(alpha: 0.1),
                  shape: BoxShape.circle,
                ),
                child: Icon(icon, size: 22, color: color),
              ),
              const SizedBox(height: 12),
              Text(
                value,
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w800,
                  color: color,
                ),
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: 4),
              Text(
                label,
                style: const TextStyle(
                  fontSize: 12,
                  fontWeight: FontWeight.w500,
                  color: AppColors.textSecondary,
                ),
                textAlign: TextAlign.center,
              ),
            ],
          ),
        ),
      ),
    );
  }

  // ---------------------------------------------------------------------------
  // Section card wrapper
  // ---------------------------------------------------------------------------

  Widget _buildSectionCard({
    required IconData icon,
    required String title,
    required Widget child,
  }) {
    return Card(
      elevation: 1,
      shadowColor: Colors.black.withValues(alpha: 0.08),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
      surfaceTintColor: Colors.transparent,
      color: AppColors.surface,
      child: Padding(
        padding: const EdgeInsets.all(24),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Container(
                  width: 36,
                  height: 36,
                  decoration: BoxDecoration(
                    color: AppColors.primary.withValues(alpha: 0.1),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Icon(icon, size: 20, color: AppColors.primaryDark),
                ),
                const SizedBox(width: 12),
                Expanded(
                  child: Text(
                    title,
                    style: const TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w700,
                      color: AppColors.textPrimary,
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 20),
            const Divider(color: AppColors.border, height: 1),
            const SizedBox(height: 20),
            child,
          ],
        ),
      ),
    );
  }

  // ---------------------------------------------------------------------------
  // Admissions
  // ---------------------------------------------------------------------------

  Widget _buildAdmissionsInfo(University university) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        if (university.acceptanceRate != null)
          _buildInfoRow(
            context.l10n.fypAcceptanceRate,
            university.formattedAcceptanceRate!,
          ),
        if (university.gpaAverage != null)
          _buildInfoRow(
            context.l10n.fypAverageGPA,
            university.gpaAverage!.toStringAsFixed(2),
          ),
        if (university.satMath25th != null && university.satMath75th != null)
          _buildInfoRow(
            context.l10n.fypSatMathRange,
            '${university.satMath25th} - ${university.satMath75th}',
          ),
        if (university.satEbrw25th != null && university.satEbrw75th != null)
          _buildInfoRow(
            context.l10n.fypSatEbrwRange,
            '${university.satEbrw25th} - ${university.satEbrw75th}',
          ),
        if (university.actComposite25th != null &&
            university.actComposite75th != null)
          _buildInfoRow(
            context.l10n.fypActRange,
            '${university.actComposite25th} - ${university.actComposite75th}',
          ),
      ],
    );
  }

  // ---------------------------------------------------------------------------
  // Costs
  // ---------------------------------------------------------------------------

  Widget _buildCostsInfo(University university) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        if (university.tuitionOutState != null)
          _buildInfoRow(
            context.l10n.fypOutOfStateTuition,
            university.formattedTuition!,
          ),
        if (university.totalCost != null)
          _buildInfoRow(
            context.l10n.fypTotalCostEst,
            _formatCurrency(university.totalCost!),
          ),
        const SizedBox(height: 8),
        Container(
          padding: const EdgeInsets.all(14),
          decoration: BoxDecoration(
            color: AppColors.info.withValues(alpha: 0.06),
            borderRadius: BorderRadius.circular(10),
            border: Border.all(
              color: AppColors.info.withValues(alpha: 0.2),
            ),
          ),
          child: Row(
            children: [
              Icon(Icons.info_outline, size: 18, color: AppColors.info),
              const SizedBox(width: 10),
              Expanded(
                child: Text(
                  context.l10n.fypFinancialAidNote,
                  style: const TextStyle(
                    fontSize: 13,
                    color: AppColors.textSecondary,
                    height: 1.5,
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }

  // ---------------------------------------------------------------------------
  // Outcomes
  // ---------------------------------------------------------------------------

  Widget _buildOutcomesInfo(University university) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        if (university.graduationRate != null)
          _buildInfoRow(
            context.l10n.fypGraduationRate,
            '${university.graduationRate!.toStringAsFixed(1)}%',
          ),
        if (university.medianEarnings != null)
          _buildInfoRow(
            context.l10n.fypMedianEarnings,
            _formatCurrency(university.medianEarnings!),
          ),
      ],
    );
  }

  // ---------------------------------------------------------------------------
  // Programs -- chip grid with optional median salary
  // ---------------------------------------------------------------------------

  Widget _buildProgramsGrid(List<Program> programs) {
    return Wrap(
      spacing: 10,
      runSpacing: 10,
      children: programs.map((program) {
        final hasSalary =
            program.medianSalary != null && program.medianSalary! > 0;
        return Tooltip(
          message: [
            program.degreeType,
            if (program.field != null) program.field!,
            if (hasSalary)
              'Median salary: ${_formatCurrency(program.medianSalary!)}',
          ].join(' -- '),
          child: Container(
            padding: const EdgeInsets.symmetric(horizontal: 14, vertical: 10),
            decoration: BoxDecoration(
              color: AppColors.primary.withValues(alpha: 0.06),
              borderRadius: BorderRadius.circular(10),
              border: Border.all(
                color: AppColors.primary.withValues(alpha: 0.25),
              ),
            ),
            child: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                Icon(
                  Icons.check_circle_outline,
                  size: 16,
                  color: AppColors.primaryDark,
                ),
                const SizedBox(width: 8),
                Flexible(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Text(
                        program.name,
                        style: const TextStyle(
                          fontSize: 13,
                          fontWeight: FontWeight.w600,
                          color: AppColors.textPrimary,
                        ),
                      ),
                      if (hasSalary)
                        Text(
                          _formatCurrency(program.medianSalary!),
                          style: TextStyle(
                            fontSize: 11,
                            fontWeight: FontWeight.w500,
                            color: AppColors.primaryDark,
                          ),
                        ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        );
      }).toList(),
    );
  }

  // ---------------------------------------------------------------------------
  // Shared info row (label : value)
  // ---------------------------------------------------------------------------

  Widget _buildInfoRow(String label, String value) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 14),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Flexible(
            child: Text(
              label,
              style: const TextStyle(
                fontSize: 15,
                color: AppColors.textSecondary,
              ),
            ),
          ),
          const SizedBox(width: 16),
          Text(
            value,
            style: const TextStyle(
              fontSize: 15,
              fontWeight: FontWeight.w700,
              color: AppColors.textPrimary,
            ),
          ),
        ],
      ),
    );
  }
}
