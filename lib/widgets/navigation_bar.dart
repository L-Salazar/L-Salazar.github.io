import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:url_launcher/url_launcher.dart';
import '../models/portfolio_data.dart';

class NavigationBar extends StatelessWidget {
  const NavigationBar({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final isDark = theme.brightness == Brightness.dark;

    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
      decoration: BoxDecoration(
        color: theme.colorScheme.surface,
        border: Border(
          top: BorderSide(
            color: isDark
                ? Colors.white.withOpacity(0.1)
                : Colors.black.withOpacity(0.1),
          ),
        ),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          _buildIconButton(
            icon: Icons.home_outlined,
            onTap: () => _scrollToSection(context, 'hero'),
          ),
          _buildIconButton(
            icon: Icons.note_outlined,
            onTap: () => _scrollToSection(context, 'about'),
          ),
          _buildIconButton(
            icon: FontAwesomeIcons.github,
            onTap: () => _launchUrl(PortfolioData.socialLinks['github']!.url),
          ),
          _buildIconButton(
            icon: FontAwesomeIcons.linkedin,
            onTap: () => _launchUrl(PortfolioData.socialLinks['linkedin']!.url),
          ),
        ],
      ),
    );
  }

  Widget _buildIconButton({
    required IconData icon,
    required VoidCallback onTap,
  }) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8),
      child: IconButton(
        icon: Icon(icon, size: 20),
        onPressed: onTap,
        tooltip: '',
      ),
    );
  }

  void _scrollToSection(BuildContext context, String section) {
    // Implementação básica - pode ser melhorada com scrollable_positioned_list
    /* ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text('Scrolling to $section'),
        duration: const Duration(milliseconds: 500),
      ),
    ); */
  }

  Future<void> _launchUrl(String url) async {
    final uri = Uri.parse(url);
    if (await canLaunchUrl(uri)) {
      await launchUrl(uri);
    }
  }
}
