import 'package:flutter/material.dart';
import '../constants/user_roles.dart';

/// App color palette based on Navia brand specifications
/// Teal: #2EC4B6 (Primary brand, buttons, links, success)
/// Navy: #1B2340 (Secondary, headers, dark sections)
/// Gold: #C9A84C (Accent highlights, badges, CTAs)
class AppColors {
  AppColors._();

  // Primary Colors (Teal #2EC4B6)
  static const Color primary = Color(0xFF2EC4B6);
  static const Color primaryDark = Color(0xFF1A9E92);
  static const Color primaryLight = Color(0xFF5DD4C8);

  // Secondary Colors (Navy #1B2340)
  static const Color secondary = Color(0xFF1B2340);
  static const Color secondaryDark = Color(0xFF0D1117);
  static const Color secondaryLight = Color(0xFF2A3558);

  // Accent Colors (Gold #C9A84C)
  static const Color accent = Color(0xFFC9A84C);
  static const Color accentDark = Color(0xFFA8883E);
  static const Color accentLight = Color(0xFFD4B86A);
  // Use accentDark for text on light backgrounds to meet WCAG AA
  static const Color accentOnLight = Color(0xFFA8883E);

  // Warmth Palette (mapped to brand)
  static const Color terracotta = Color(0xFFC9A84C);
  static const Color coral = Color(0xFFD4B86A);
  static const Color warmSand = Color(0xFFF0EAE0);
  static const Color deepOchre = Color(0xFFA8883E);

  // Section Backgrounds for Visual Rhythm
  static const Color sectionLight = Color(0xFFF8F6F2);
  static const Color sectionWarm = Color(0xFFF0EAE0);
  static const Color sectionDark = Color(0xFF0D1117);

  // Hero Gradient Colors
  static const List<Color> heroGradient = [primary, Color(0xFF1A9E92), accent];

  // Background Colors
  static const Color background = Color(0xFFF8F6F2);
  static const Color surface = Color(0xFFFFFFFF);
  static const Color surfaceVariant = Color(0xFFF8F6F2);
  static const Color surfaceContainerHighest = Color(0xFFF8F6F2);

  // Text Colors
  // WCAG AA compliant: minimum 4.5:1 contrast ratio for normal text
  static const Color textPrimary = Color(0xFF0D1117); // Midnight
  static const Color textSecondary = Color(0xFF1B2340); // Navy
  static const Color textDisabled = Color(0xFF9A9488); // Warm Gray
  static const Color textOnPrimary = Color(0xFFFFFFFF);

  // Status Colors
  static const Color success = Color(0xFF2EC4B6); // Teal
  static const Color error = Color(0xFFD32F2F); // Material Red (decoupled)
  static const Color warning = Color(0xFFC9A84C); // Gold
  static const Color info = Color(0xFF2EC4B6); // Teal

  // Role-specific Colors
  static const Color studentRole = Color(0xFF2EC4B6); // Teal
  static const Color institutionRole = Color(0xFF1B2340); // Navy
  static const Color parentRole = Color(0xFF1A9E92); // Deep Teal
  static const Color counselorRole = Color(0xFFC9A84C); // Gold
  static const Color recommenderRole = Color(0xFF5DD4C8); // Light Teal

  // Admin role colors
  static const Color superAdminRole = Color(0xFF1B2340); // Navy - highest authority
  static const Color regionalAdminRole = Color(0xFF2EC4B6); // Teal
  static const Color contentAdminRole = Color(0xFF2EC4B6); // Teal
  static const Color supportAdminRole = Color(0xFF2EC4B6); // Teal
  static const Color financeAdminRole = Color(0xFF2EC4B6); // Teal
  static const Color analyticsAdminRole = Color(0xFF2EC4B6); // Teal

  // Admin badge accent colors
  static const Color superAdminAccent = Color(0xFFC9A84C); // Gold for Super Admin badge

  // Border & Divider Colors
  static const Color border = Color(0xFFE8E6E3); // Light Gray
  static const Color divider = Color(0xFFF0EAE0); // Sand

  // Overlay Colors
  static const Color overlay = Color(0x80000000); // 50% black
  static const Color scrim = Color(0xB3000000); // 70% black

  /// Get role color by role type
  static Color getRoleColor(String role) {
    switch (role.toLowerCase()) {
      case 'student':
        return studentRole;
      case 'institution':
        return institutionRole;
      case 'parent':
        return parentRole;
      case 'counselor':
        return counselorRole;
      case 'recommender':
        return recommenderRole;
      default:
        return primary;
    }
  }

  /// Get admin role color by UserRole enum
  static Color getAdminRoleColor(UserRole role) {
    switch (role) {
      case UserRole.superAdmin:
        return superAdminRole;
      case UserRole.regionalAdmin:
        return regionalAdminRole;
      case UserRole.contentAdmin:
        return contentAdminRole;
      case UserRole.supportAdmin:
        return supportAdminRole;
      case UserRole.financeAdmin:
        return financeAdminRole;
      case UserRole.analyticsAdmin:
        return analyticsAdminRole;
      // Non-admin roles
      case UserRole.student:
        return studentRole;
      case UserRole.institution:
        return institutionRole;
      case UserRole.parent:
        return parentRole;
      case UserRole.counselor:
        return counselorRole;
      case UserRole.recommender:
        return recommenderRole;
    }
  }

  /// Get admin role icon by UserRole enum
  static IconData getAdminRoleIcon(UserRole role) {
    switch (role) {
      case UserRole.superAdmin:
        return Icons.shield; // Crown alternative (shield for authority)
      case UserRole.regionalAdmin:
        return Icons.public; // Globe for regional
      case UserRole.contentAdmin:
        return Icons.library_books; // Books for content
      case UserRole.supportAdmin:
        return Icons.support_agent; // Headset for support
      case UserRole.financeAdmin:
        return Icons.account_balance_wallet; // Wallet for finance
      case UserRole.analyticsAdmin:
        return Icons.analytics; // Chart for analytics
      default:
        return Icons.admin_panel_settings; // Default admin icon
    }
  }

  /// Get admin role badge text
  static String getAdminRoleBadgeText(UserRole role) {
    if (!role.isAdmin) return '';
    return role.displayName.toUpperCase();
  }

  /// Get color with opacity
  static Color withOpacity(Color color, double opacity) {
    return color.withValues(alpha: opacity);
  }

  // ── Dark-mode semantic constants ──────────────────────────────────

  // Dark Surfaces
  static const Color darkBackground = Color(0xFF0D1117);
  static const Color darkSurface = Color(0xFF1B2340);
  static const Color darkSurfaceContainer = Color(0xFF252525);
  static const Color darkSurfaceContainerHigh = Color(0xFF2C2C2C);
  static const Color darkSurfaceContainerHighest = Color(0xFF353535);

  // Dark Text
  static const Color darkTextPrimary = Color(0xFFE0E0E0);
  static const Color darkTextSecondary = Color(0xFFB0B0B0);
  static const Color darkTextDisabled = Color(0xFF707070);

  // Dark Borders
  static const Color darkBorder = Color(0xFF404040);
  static const Color darkDivider = Color(0xFF333333);

  // Dark Section Backgrounds
  static const Color darkSectionLight = Color(0xFF1B2340);
  static const Color darkSectionWarm = Color(0xFF2A1F1A);
  static const Color darkSectionDark = Color(0xFF0D1117);
}
