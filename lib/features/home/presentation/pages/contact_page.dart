import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:url_launcher/url_launcher.dart';
import '../../../../core/l10n_extension.dart';

/// Contact page with contact form and information - fetches content from CMS
class ContactPage extends ConsumerWidget {
  const ContactPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return const _ContactStaticContent();
  }
}

class _ContactStaticContent extends StatefulWidget {
  const _ContactStaticContent();

  @override
  State<_ContactStaticContent> createState() => _ContactStaticContentState();
}

class _ContactStaticContentState extends State<_ContactStaticContent> {
  final _formKey = GlobalKey<FormState>();
  final _nameController = TextEditingController();
  final _emailController = TextEditingController();
  final _subjectController = TextEditingController();
  final _messageController = TextEditingController();
  String? _inquiryType;
  bool _isSubmitting = false;

  @override
  void dispose() {
    _nameController.dispose();
    _emailController.dispose();
    _subjectController.dispose();
    _messageController.dispose();
    super.dispose();
  }

  Future<void> _submitForm() async {
    if (!_formKey.currentState!.validate()) return;

    setState(() => _isSubmitting = true);

    // TODO: Implement actual form submission to backend
    await Future.delayed(const Duration(seconds: 1));

    if (mounted) {
      setState(() => _isSubmitting = false);
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text(context.l10n.contactPageSuccessMessage),
          backgroundColor: Theme.of(context).colorScheme.primary,
        ),
      );
      _formKey.currentState!.reset();
      _nameController.clear();
      _emailController.clear();
      _subjectController.clear();
      _messageController.clear();
      setState(() => _inquiryType = null);
    }
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final colorScheme = theme.colorScheme;

    return SingleChildScrollView(
      padding: const EdgeInsets.all(24),
      child: Center(
        child: ConstrainedBox(
          constraints: const BoxConstraints(maxWidth: 900),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Header
              Text(
                context.l10n.contactPageGetInTouch,
                style: theme.textTheme.headlineMedium?.copyWith(
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 8),
              Text(
                context.l10n.contactPageSubtitle,
                style: theme.textTheme.bodyLarge?.copyWith(
                  color: colorScheme.onSurfaceVariant,
                ),
              ),

              const SizedBox(height: 32),

              // Contact info cards and form
              LayoutBuilder(
                builder: (context, constraints) {
                  if (constraints.maxWidth > 700) {
                    return Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Expanded(child: _buildContactInfo(theme, colorScheme)),
                        const SizedBox(width: 32),
                        Expanded(flex: 2, child: _buildContactForm(theme, colorScheme)),
                      ],
                    );
                  }
                  return Column(
                    children: [
                      _buildContactInfo(theme, colorScheme),
                      const SizedBox(height: 32),
                      _buildContactForm(theme, colorScheme),
                    ],
                  );
                },
              ),

              const SizedBox(height: 48),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildContactInfo(ThemeData theme, ColorScheme colorScheme) {
    return Column(
      children: [
        _buildContactCard(
          theme,
          colorScheme: colorScheme,
          icon: Icons.email,
          title: context.l10n.contactPageEmail,
          content: context.l10n.contactPageEmailValue,
          subtitle: context.l10n.contactPageEmailReply,
        ),
        const SizedBox(height: 16),
        _buildContactCard(
          theme,
          colorScheme: colorScheme,
          icon: Icons.location_on,
          title: context.l10n.contactPageOffice,
          content: context.l10n.contactPageOfficeValue,
          subtitle: context.l10n.contactPageOfficeRegion,
        ),
        const SizedBox(height: 16),
        _buildContactCard(
          theme,
          colorScheme: colorScheme,
          icon: Icons.access_time,
          title: context.l10n.contactPageHours,
          content: context.l10n.contactPageHoursValue,
          subtitle: context.l10n.contactPageHoursTimezone,
        ),
        const SizedBox(height: 16),
        _buildSocialLinks(theme, colorScheme),
      ],
    );
  }

  Widget _buildSocialLinks(ThemeData theme, ColorScheme colorScheme) {
    return Card.outlined(
      child: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          children: [
            Text(
              context.l10n.contactPageFollowUs,
              style: theme.textTheme.titleMedium?.copyWith(
                fontWeight: FontWeight.w600,
              ),
            ),
            const SizedBox(height: 12),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                _socialButton(Icons.close, 'https://x.com/flowedtech', colorScheme, tooltip: 'X (Twitter)'),
                const SizedBox(width: 8),
                _socialButton(Icons.work_outline, 'https://linkedin.com/company/flowedtech', colorScheme, tooltip: 'LinkedIn'),
                const SizedBox(width: 8),
                _socialButton(Icons.facebook, 'https://facebook.com/flowedtech', colorScheme, tooltip: 'Facebook'),
                const SizedBox(width: 8),
                _socialButton(Icons.camera_alt_outlined, 'https://instagram.com/flowedtech', colorScheme, tooltip: 'Instagram'),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget _socialButton(IconData icon, String url, ColorScheme colorScheme, {String? tooltip}) {
    return IconButton.outlined(
      onPressed: () => launchUrl(Uri.parse(url)),
      icon: Icon(icon, color: colorScheme.onSurfaceVariant),
      tooltip: tooltip,
    );
  }

  Widget _buildContactCard(
    ThemeData theme, {
    required ColorScheme colorScheme,
    required IconData icon,
    required String title,
    required String content,
    required String subtitle,
  }) {
    return Card.outlined(
      child: Padding(
        padding: const EdgeInsets.all(20),
        child: Row(
          children: [
            Container(
              padding: const EdgeInsets.all(12),
              decoration: BoxDecoration(
                color: colorScheme.primaryContainer,
                borderRadius: BorderRadius.circular(12),
              ),
              child: Icon(icon, color: colorScheme.onPrimaryContainer),
            ),
            const SizedBox(width: 16),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    title,
                    style: theme.textTheme.bodySmall?.copyWith(
                      color: colorScheme.onSurfaceVariant,
                    ),
                  ),
                  Text(
                    content,
                    style: theme.textTheme.titleMedium?.copyWith(
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  Text(
                    subtitle,
                    style: theme.textTheme.bodySmall?.copyWith(
                      color: colorScheme.onSurfaceVariant,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildContactForm(ThemeData theme, ColorScheme colorScheme) {
    return Card.filled(
      child: Padding(
        padding: const EdgeInsets.all(24),
        child: Form(
          key: _formKey,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                context.l10n.contactPageSendMessage,
                style: theme.textTheme.titleLarge?.copyWith(
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 24),

              // Name field
              TextFormField(
                controller: _nameController,
                decoration: InputDecoration(
                  labelText: context.l10n.contactPageYourName,
                  prefixIcon: const Icon(Icons.person_outline),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(12),
                  ),
                ),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return context.l10n.contactPageNameRequired;
                  }
                  return null;
                },
              ),
              const SizedBox(height: 16),

              // Email field
              TextFormField(
                controller: _emailController,
                keyboardType: TextInputType.emailAddress,
                decoration: InputDecoration(
                  labelText: context.l10n.contactPageEmailAddress,
                  prefixIcon: const Icon(Icons.email_outlined),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(12),
                  ),
                ),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return context.l10n.contactPageEmailRequired;
                  }
                  if (!value.contains('@')) {
                    return context.l10n.contactPageEmailInvalid;
                  }
                  return null;
                },
              ),
              const SizedBox(height: 16),

              // Subject field
              TextFormField(
                controller: _subjectController,
                decoration: InputDecoration(
                  labelText: context.l10n.contactPageSubject,
                  prefixIcon: const Icon(Icons.subject),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(12),
                  ),
                ),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return context.l10n.contactPageSubjectRequired;
                  }
                  return null;
                },
              ),
              const SizedBox(height: 16),

              // Inquiry type dropdown
              DropdownMenu<String>(
                expandedInsets: EdgeInsets.zero,
                label: const Text('Inquiry Type'),
                leadingIcon: const Icon(Icons.category_outlined),
                onSelected: (value) {
                  setState(() => _inquiryType = value);
                },
                dropdownMenuEntries: const [
                  DropdownMenuEntry(value: 'general', label: 'General Inquiry'),
                  DropdownMenuEntry(value: 'technical', label: 'Technical Support'),
                  DropdownMenuEntry(value: 'partnership', label: 'Partnership'),
                  DropdownMenuEntry(value: 'feedback', label: 'Feedback'),
                ],
              ),
              const SizedBox(height: 16),

              // Message field
              TextFormField(
                controller: _messageController,
                maxLines: 5,
                decoration: InputDecoration(
                  labelText: context.l10n.contactPageMessage,
                  alignLabelWithHint: true,
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(12),
                  ),
                ),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return context.l10n.contactPageMessageRequired;
                  }
                  return null;
                },
              ),
              const SizedBox(height: 24),

              // Submit button
              SizedBox(
                width: double.infinity,
                child: FilledButton(
                  onPressed: _isSubmitting ? null : _submitForm,
                  child: _isSubmitting
                      ? const SizedBox(
                          height: 20,
                          width: 20,
                          child: CircularProgressIndicator(
                            strokeWidth: 2,
                            color: Colors.white,
                          ),
                        )
                      : Text(context.l10n.contactPageSendButton),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
