import 'package:flutter/material.dart';

/// Screen displaying the user's personal profile, statistics, and settings.
class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    const Color primaryBlue = Color(0xFF0071E3);
    const Color backgroundColor = Color(0xFFFFFFFF);
    const Color surfaceColor = Color(0xFFF5F5F7);
    const Color textPrimary = Color(0xFF1D1D1F);
    const Color textSecondary = Color(0xFF6E6E73);
    const Color borderColor = Color(0xFFD2D2D7);

    return Scaffold(
      backgroundColor: backgroundColor,
      appBar: AppBar(
        backgroundColor: backgroundColor,
        elevation: 0,
        title: const Text(
          'Profile',
          style: TextStyle(color: textPrimary, fontWeight: FontWeight.w700),
        ),
        centerTitle: true,
        actions: [
          IconButton(
            icon: const Icon(
              Icons.settings,
              color: primaryBlue,
            ), // Standardized icon
            onPressed: () {},
          ),
        ],
      ),
      body: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: Column(
          children: [
            const SizedBox(height: 16),
            // User Header Info Row
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 24.0),
              child: Row(
                children: [
                  CircleAvatar(
                    radius: 36,
                    backgroundColor: primaryBlue.withOpacity(0.1),
                    child: const Text(
                      'MG',
                      style: TextStyle(
                        color: primaryBlue,
                        fontSize: 24,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                  ),
                  const SizedBox(width: 20),
                  const Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Mark Geronilla',
                          style: TextStyle(
                            color: textPrimary,
                            fontSize: 24,
                            fontWeight: FontWeight.w700,
                            letterSpacing: -0.5,
                          ),
                        ),
                        SizedBox(height: 4),
                        Text(
                          '@24Savage',
                          style: TextStyle(
                            color: textSecondary,
                            fontSize: 15,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 32),

            // Performance Cards Metrics Block
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 24.0),
              child: Row(
                children: [
                  // Standardized Icons: bolt and local_fire_department
                  _buildStatCard('XP Earned', '1,250', Icons.bolt, primaryBlue),
                  const SizedBox(width: 16),
                  _buildStatCard(
                    'Day Streak',
                    '5 Days',
                    Icons.local_fire_department,
                    Colors.orange,
                  ),
                ],
              ),
            ),
            const SizedBox(height: 32),

            // Navigation List Items Section
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 24.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    'Account Management',
                    style: TextStyle(
                      color: textPrimary,
                      fontSize: 17,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                  const SizedBox(height: 12),
                  Container(
                    decoration: BoxDecoration(
                      color: surfaceColor,
                      borderRadius: BorderRadius.circular(16),
                      border: Border.all(color: borderColor.withOpacity(0.3)),
                    ),
                    child: Column(
                      children: [
                        // Standardized Icons used below
                        _buildMenuRow(
                          Icons.bookmark_border,
                          'Saved Lessons',
                          true,
                        ),
                        _buildMenuRow(
                          Icons.school,
                          'Certificates & Achievements',
                          true,
                        ),
                        _buildMenuRow(
                          Icons.security,
                          'Privacy & Safety',
                          false,
                        ),
                      ],
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

  /// Helper widget to create the statistics cards (XP and Streaks)
  Widget _buildStatCard(
    String label,
    String value,
    IconData icon,
    Color iconColor,
  ) {
    return Expanded(
      child: Container(
        padding: const EdgeInsets.all(16),
        decoration: BoxDecoration(
          color: const Color(0xFFF5F5F7),
          borderRadius: BorderRadius.circular(16),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Icon(icon, color: iconColor, size: 24),
            const SizedBox(height: 12),
            Text(
              value,
              style: const TextStyle(
                color: Color(0xFF1D1D1F),
                fontSize: 22,
                fontWeight: FontWeight.w700,
              ),
            ),
            const SizedBox(height: 2),
            Text(
              label,
              style: const TextStyle(color: Color(0xFF6E6E73), fontSize: 13),
            ),
          ],
        ),
      ),
    );
  }

  /// Helper widget to generate rows for the settings list
  Widget _buildMenuRow(IconData icon, String title, bool showDivider) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 14.0),
          child: Row(
            children: [
              Icon(icon, color: const Color(0xFF1D1D1F), size: 22),
              const SizedBox(width: 16),
              Expanded(
                child: Text(
                  title,
                  style: const TextStyle(
                    color: Color(0xFF1D1D1F),
                    fontSize: 15,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
              const Icon(
                Icons.arrow_forward_ios,
                color: Color(0xFFD2D2D7),
                size: 14,
              ),
            ],
          ),
        ),
        if (showDivider)
          Padding(
            padding: const EdgeInsets.only(left: 54.0),
            child: Container(
              height: 0.5,
              color: const Color(0xFFD2D2D7).withOpacity(0.5),
            ),
          ),
      ],
    );
  }
}
