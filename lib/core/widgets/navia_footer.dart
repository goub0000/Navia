import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:url_launcher/link.dart';
import '../l10n_extension.dart';
import 'navia_logo.dart';

/// Shared M3 Footer with surfaceContainerLowest background.
/// Extracted from the home screen so all public pages can reuse it.
class NaviaFooter extends StatelessWidget {
  const NaviaFooter({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final colorScheme = theme.colorScheme;
    final size = MediaQuery.of(context).size;
    final isDesktop = size.width > 900;

    return Container(
      padding: const EdgeInsets.symmetric(vertical: 64, horizontal: 24),
      color: colorScheme.surfaceContainerLowest,
      child: Center(
        child: ConstrainedBox(
          constraints: const BoxConstraints(maxWidth: 1200),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Top Section - Logo, Description, and Columns
              if (isDesktop)
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    // Logo and Description
                    Expanded(
                      flex: 2,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const NaviaLogo(
                            variant: NaviaLogoVariant.light,
                            fontSize: 28,
                          ),
                          const SizedBox(height: 16),
                          Text(
                            context.l10n.footerTagline,
                            style: theme.textTheme.bodyMedium?.copyWith(
                              color: colorScheme.onSurfaceVariant,
                              height: 1.6,
                            ),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(width: 48),

                    // Products Column
                    Expanded(
                      child: FooterColumn(
                        title: context.l10n.footerProducts,
                        links: [
                          FooterLink(
                            context.l10n.footerStudentPortal,
                            '/login',
                          ),
                          FooterLink(
                            context.l10n.footerInstitutionDashboard,
                            '/login',
                          ),
                          FooterLink(
                            context.l10n.footerMobileApps,
                            '/mobile-apps',
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(width: 32),

                    // Company Column
                    Expanded(
                      child: FooterColumn(
                        title: context.l10n.footerCompany,
                        links: [
                          FooterLink(context.l10n.footerAboutUs, '/about'),
                          FooterLink(context.l10n.footerCareers, '/careers'),
                          FooterLink(context.l10n.footerContact, '/contact'),
                        ],
                      ),
                    ),
                    const SizedBox(width: 32),

                    // Resources Column
                    Expanded(
                      child: FooterColumn(
                        title: context.l10n.footerResources,
                        links: [
                          FooterLink(context.l10n.footerHelpCenter, '/help'),
                          FooterLink(context.l10n.footerBlog, '/blog'),
                          FooterLink(
                            context.l10n.footerCommunity,
                            '/community',
                          ),
                        ],
                      ),
                    ),
                  ],
                )
              else
                // Mobile/Tablet Layout
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    // Logo and Description
                    const NaviaLogo(
                      variant: NaviaLogoVariant.light,
                      fontSize: 28,
                    ),
                    const SizedBox(height: 16),
                    Text(
                      context.l10n.footerTagline,
                      style: theme.textTheme.bodyMedium?.copyWith(
                        color: colorScheme.onSurfaceVariant,
                        height: 1.6,
                      ),
                    ),
                    const SizedBox(height: 32),

                    // Footer Columns in Mobile
                    Wrap(
                      spacing: 48,
                      runSpacing: 32,
                      children: [
                        FooterColumn(
                          title: context.l10n.footerProducts,
                          links: [
                            FooterLink(
                              context.l10n.footerStudentPortal,
                              '/login',
                            ),
                            FooterLink(
                              context.l10n.footerInstitutionDashboard,
                              '/login',
                            ),
                            FooterLink(
                              context.l10n.footerMobileApps,
                              '/mobile-apps',
                            ),
                          ],
                        ),
                        FooterColumn(
                          title: context.l10n.footerCompany,
                          links: [
                            FooterLink(context.l10n.footerAboutUs, '/about'),
                            FooterLink(context.l10n.footerCareers, '/careers'),
                            FooterLink(context.l10n.footerContact, '/contact'),
                          ],
                        ),
                        FooterColumn(
                          title: context.l10n.footerResources,
                          links: [
                            FooterLink(context.l10n.footerHelpCenter, '/help'),
                            FooterLink(
                              context.l10n.footerCommunity,
                              '/community',
                            ),
                            FooterLink(context.l10n.footerBlog, '/blog'),
                          ],
                        ),
                      ],
                    ),
                    const SizedBox(height: 32),
                  ],
                ),

              const SizedBox(height: 48),

              // M3 Divider
              Divider(color: colorScheme.outlineVariant),

              const SizedBox(height: 24),

              // Bottom Section - Copyright, Legal Links, and Compliance Chips
              Wrap(
                alignment: WrapAlignment.spaceBetween,
                crossAxisAlignment: WrapCrossAlignment.center,
                spacing: 24,
                runSpacing: 16,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        context.l10n.footerCopyright,
                        style: theme.textTheme.bodySmall?.copyWith(
                          color: colorScheme.onSurfaceVariant,
                        ),
                      ),
                      const SizedBox(height: 8),
                      Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          FooterLink(
                            context.l10n.footerPrivacyPolicy,
                            '/privacy',
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 8),
                            child: Text(
                              '·',
                              style: theme.textTheme.bodySmall?.copyWith(
                                color: colorScheme.onSurfaceVariant,
                              ),
                            ),
                          ),
                          FooterLink(
                            context.l10n.footerTermsOfService,
                            '/terms',
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 8),
                            child: Text(
                              '·',
                              style: theme.textTheme.bodySmall?.copyWith(
                                color: colorScheme.onSurfaceVariant,
                              ),
                            ),
                          ),
                          FooterLink(
                            context.l10n.footerCookiePolicy,
                            '/cookies',
                          ),
                        ],
                      ),
                    ],
                  ),
                  Wrap(
                    spacing: 8,
                    runSpacing: 8,
                    children: [
                      Chip(
                        avatar: Icon(
                          Icons.verified_outlined,
                          size: 16,
                          color: colorScheme.primary,
                        ),
                        label: Text(context.l10n.footerSoc2),
                        side: BorderSide(color: colorScheme.outlineVariant),
                      ),
                      Chip(
                        avatar: Icon(
                          Icons.verified_outlined,
                          size: 16,
                          color: colorScheme.primary,
                        ),
                        label: Text(context.l10n.footerIso27001),
                        side: BorderSide(color: colorScheme.outlineVariant),
                      ),
                      Chip(
                        avatar: Icon(
                          Icons.verified_outlined,
                          size: 16,
                          color: colorScheme.primary,
                        ),
                        label: Text(context.l10n.footerGdpr),
                        side: BorderSide(color: colorScheme.outlineVariant),
                      ),
                    ],
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

/// Footer Column Widget
class FooterColumn extends StatelessWidget {
  final String title;
  final List<Widget> links;

  const FooterColumn({super.key, required this.title, required this.links});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title,
          style: theme.textTheme.titleSmall?.copyWith(
            fontWeight: FontWeight.bold,
            color: theme.colorScheme.onSurface,
          ),
        ),
        const SizedBox(height: 16),
        ...links,
      ],
    );
  }
}

/// Footer Link — renders as <a> on web for right-click "Open in new tab",
/// while preserving SPA navigation via go_router on normal click.
/// Includes hover state with animated text color and underline.
class FooterLink extends StatefulWidget {
  final String text;
  final String routePath;

  const FooterLink(this.text, this.routePath, {super.key});

  @override
  State<FooterLink> createState() => _FooterLinkState();
}

class _FooterLinkState extends State<FooterLink> {
  bool _isHovered = false;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final colorScheme = theme.colorScheme;

    return Padding(
      padding: const EdgeInsets.only(bottom: 4),
      child: MouseRegion(
        onEnter: (_) => setState(() => _isHovered = true),
        onExit: (_) => setState(() => _isHovered = false),
        child: Link(
          uri: Uri.parse(widget.routePath),
          builder: (context, followLink) => InkWell(
            onTap: () => context.go(widget.routePath),
            focusColor: colorScheme.primary.withValues(alpha: 0.12),
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 4),
              child: AnimatedDefaultTextStyle(
                duration: const Duration(milliseconds: 150),
                style: theme.textTheme.bodyMedium!.copyWith(
                  color: _isHovered
                      ? colorScheme.primary
                      : colorScheme.onSurfaceVariant,
                  decoration: _isHovered
                      ? TextDecoration.underline
                      : TextDecoration.none,
                  decorationColor: _isHovered ? colorScheme.primary : null,
                ),
                child: Text(widget.text),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
