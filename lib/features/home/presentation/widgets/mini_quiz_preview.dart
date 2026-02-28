import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import '../../../../core/l10n_extension.dart';

/// A mini quiz teaser widget for the home page.
///
/// Shows 1-2 sample questions from Find Your Path
/// with ChoiceChip options, a progress indicator, and a CTA.
class MiniQuizPreview extends StatefulWidget {
  const MiniQuizPreview({super.key});

  @override
  State<MiniQuizPreview> createState() => _MiniQuizPreviewState();
}

class _MiniQuizPreviewState extends State<MiniQuizPreview> {
  int _currentQuestion = 0;
  String? _selectedAnswer;

  List<_QuizQuestion> _buildQuestions(BuildContext context) {
    return [
      _QuizQuestion(
        question: context.l10n.quizFieldQuestion,
        options: [
          context.l10n.quizFieldTechEngineering,
          context.l10n.quizFieldBusinessFinance,
          context.l10n.quizFieldHealthcareMedicine,
          context.l10n.quizFieldArtsHumanities,
        ],
        icon: Icons.lightbulb_outline,
      ),
      _QuizQuestion(
        question: context.l10n.quizLocationQuestion,
        options: [
          context.l10n.quizLocationWestAfrica,
          context.l10n.quizLocationEastAfrica,
          context.l10n.quizLocationSouthernAfrica,
          context.l10n.quizLocationAnywhereAfrica,
        ],
        icon: Icons.public,
      ),
    ];
  }

  void _selectAnswer(String answer) {
    setState(() {
      _selectedAnswer = answer;
    });
  }

  void _nextOrFinish(int totalQuestions) {
    if (_currentQuestion < totalQuestions - 1) {
      setState(() {
        _currentQuestion++;
        _selectedAnswer = null;
      });
    } else {
      context.go('/find-your-path');
    }
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final colorScheme = theme.colorScheme;
    final questions = _buildQuestions(context);
    final question = questions[_currentQuestion];
    final progress = (_currentQuestion + 1) / questions.length;
    final hasSelection = _selectedAnswer != null;

    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        // Progress indicator
        ClipRRect(
          borderRadius: BorderRadius.circular(4),
          child: LinearProgressIndicator(
            value: progress,
            minHeight: 6,
            color: colorScheme.primary,
            backgroundColor: colorScheme.surfaceContainerHighest,
          ),
        ),
        const SizedBox(height: 24),

        // Header
        Row(
          children: [
            Container(
              padding: const EdgeInsets.all(12),
              decoration: BoxDecoration(
                color: colorScheme.primaryContainer,
                shape: BoxShape.circle,
              ),
              child: Icon(
                question.icon,
                color: colorScheme.onPrimaryContainer,
                size: 24,
              ),
            ),
            const SizedBox(width: 16),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    context.l10n.quizFindYourPath,
                    style: theme.textTheme.labelMedium?.copyWith(
                      color: colorScheme.primary,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    context.l10n.quizQuickPreview,
                    style: theme.textTheme.titleSmall?.copyWith(
                      color: colorScheme.onSurfaceVariant,
                    ),
                  ),
                ],
              ),
            ),
            // Step text
            Text(
              '${_currentQuestion + 1}/${questions.length}',
              style: theme.textTheme.labelMedium?.copyWith(
                color: colorScheme.onSurfaceVariant,
              ),
            ),
          ],
        ),
        const SizedBox(height: 24),

        // Question
        AnimatedSwitcher(
          duration: const Duration(milliseconds: 300),
          transitionBuilder: (child, animation) {
            return FadeTransition(
              opacity: animation,
              child: SlideTransition(
                position: Tween<Offset>(
                  begin: const Offset(0.1, 0),
                  end: Offset.zero,
                ).animate(CurvedAnimation(
                  parent: animation,
                  curve: Curves.easeOutCubic,
                )),
                child: child,
              ),
            );
          },
          child: Column(
            key: ValueKey(_currentQuestion),
            children: [
              Text(
                question.question,
                style: theme.textTheme.titleLarge?.copyWith(
                  fontWeight: FontWeight.bold,
                  color: colorScheme.onSurface,
                ),
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: 24),

              // ChoiceChip options
              Wrap(
                spacing: 8,
                runSpacing: 8,
                alignment: WrapAlignment.center,
                children: question.options.map((option) {
                  final isSelected = _selectedAnswer == option;
                  return ChoiceChip(
                    label: Text(option),
                    selected: isSelected,
                    onSelected: (_) => _selectAnswer(option),
                    avatar: isSelected
                        ? Icon(Icons.check_circle, color: colorScheme.primary, size: 18)
                        : null,
                    showCheckmark: false,
                    selectedColor: colorScheme.primaryContainer,
                    labelStyle: theme.textTheme.bodyLarge?.copyWith(
                      fontWeight: isSelected ? FontWeight.w600 : FontWeight.normal,
                      color: isSelected
                          ? colorScheme.onPrimaryContainer
                          : colorScheme.onSurface,
                    ),
                    padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12),
                    ),
                  );
                }).toList(),
              ),
            ],
          ),
        ),
        const SizedBox(height: 24),

        // CTA
        SizedBox(
          width: double.infinity,
          child: FilledButton.icon(
            onPressed: hasSelection
                ? () => _nextOrFinish(questions.length)
                : null,
            icon: Icon(
              _currentQuestion < questions.length - 1
                  ? Icons.arrow_forward
                  : Icons.auto_awesome,
            ),
            label: Text(
              _currentQuestion < questions.length - 1
                  ? context.l10n.quizFieldQuestion.isNotEmpty
                      ? 'Next'
                      : 'Next'
                  : context.l10n.quizGetRecommendations,
            ),
            style: FilledButton.styleFrom(
              padding: const EdgeInsets.symmetric(vertical: 16),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(12),
              ),
            ),
          ),
        ),
      ],
    );
  }
}

class _QuizQuestion {
  final String question;
  final List<String> options;
  final IconData icon;

  const _QuizQuestion({
    required this.question,
    required this.options,
    required this.icon,
  });
}
