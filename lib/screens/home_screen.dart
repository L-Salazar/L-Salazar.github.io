import 'package:flutter/material.dart';
import 'package:salazar_site/widgets/animated_skill_chip.dart';
import 'package:salazar_site/widgets/certification_card.dart';
import 'package:salazar_site/widgets/gradient_background_mesh.dart';
import 'package:url_launcher/url_launcher.dart';

import '../models/portfolio_data.dart';
import '../widgets/blur_fade.dart';
import '../widgets/navigation_bar.dart' as custom;
import '../widgets/project_card.dart';
import '../widgets/resume_card.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final ScrollController _scrollController = ScrollController();
  static const double blurFadeDelay = 0.04;

  @override
  void dispose() {
    _scrollController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final size = MediaQuery.of(context).size;
    final isDesktop = size.width > 768;

    return GradientBackgroundSubtle(
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: Stack(
          children: [
            SingleChildScrollView(
              controller: _scrollController,
              child: Center(
                child: ConstrainedBox(
                  constraints: const BoxConstraints(maxWidth: 672),
                  child: Padding(
                    padding: EdgeInsets.symmetric(
                      horizontal: 24,
                      vertical: isDesktop ? 96 : 48,
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        _buildHeroSection(),
                        const SizedBox(height: 80),
                        _buildAboutSection(),
                        const SizedBox(height: 40),
                        _buildSkillsSection(),
                        const SizedBox(height: 40),
                        _buildWorkExperienceSection(),
                        const SizedBox(height: 80),
                        _buildProjectsSection(),
                        const SizedBox(height: 80),
                        _buildEducationSection(),
                        const SizedBox(height: 80),
                        _buildCertificationsSection(),
                        const SizedBox(height: 80),
                        _buildContactSection(),
                        const SizedBox(height: 120),
                      ],
                    ),
                  ),
                ),
              ),
            ),
            Positioned(
              bottom: 0,
              left: 0,
              right: 0,
              child: custom.NavigationBar(),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildHeroSection() {
    final theme = Theme.of(context);

    return BlurFade(
      delay: Duration(milliseconds: (blurFadeDelay * 1000).toInt()),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                BlurFade(
                  delay: Duration(milliseconds: (blurFadeDelay * 1000).toInt()),
                  child: Text(
                    "Hi, I'm ${PortfolioData.name} 👋",
                    style: theme.textTheme.displaySmall?.copyWith(
                      fontWeight: FontWeight.bold,
                      fontSize: 36,
                    ),
                  ),
                ),
                const SizedBox(height: 12),
                BlurFade(
                  delay: Duration(milliseconds: (blurFadeDelay * 2000).toInt()),
                  child: Text(
                    PortfolioData.description,
                    style: theme.textTheme.titleMedium?.copyWith(
                      color: theme.textTheme.bodyMedium?.color?.withOpacity(
                        0.7,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(width: 24),
          BlurFade(
            delay: Duration(milliseconds: (blurFadeDelay * 1000).toInt()),
            child: Container(
              width: 112,
              height: 112,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                border: Border.all(
                  color: theme.colorScheme.primary.withOpacity(0.1),
                  width: 2,
                ),
              ),
              child: ClipOval(
                child: Image.asset(
                  PortfolioData.avatarUrl,
                  fit: BoxFit.cover,
                  errorBuilder: (context, error, stackTrace) {
                    return Container(
                      color: theme.colorScheme.secondary,
                      child: Center(
                        child: Text(
                          PortfolioData.initials,
                          style: theme.textTheme.headlineMedium,
                        ),
                      ),
                    );
                  },
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildAboutSection() {
    final theme = Theme.of(context);

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        BlurFade(
          delay: Duration(milliseconds: (blurFadeDelay * 3000).toInt()),
          child: Text(
            "About",
            style: theme.textTheme.headlineSmall?.copyWith(
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        const SizedBox(height: 16),
        BlurFade(
          delay: Duration(milliseconds: (blurFadeDelay * 4000).toInt()),
          child: Text(
            PortfolioData.aboutText,
            style: theme.textTheme.bodyMedium?.copyWith(
              color: theme.textTheme.bodyMedium?.color?.withOpacity(0.7),
              height: 1.6,
            ),
          ),
        ),
      ],
    );
  }

  Widget _buildWorkExperienceSection() {
    final theme = Theme.of(context);

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        BlurFade(
          delay: Duration(milliseconds: (blurFadeDelay * 5000).toInt()),
          child: Text(
            "Work Experience",
            style: theme.textTheme.headlineSmall?.copyWith(
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        const SizedBox(height: 16),
        ...PortfolioData.workExperience.asMap().entries.map((entry) {
          final index = entry.key;
          final work = entry.value;
          return BlurFade(
            delay: Duration(
              milliseconds: ((blurFadeDelay * 6000) + (index * 50)).toInt(),
            ),
            child: Padding(
              padding: const EdgeInsets.only(bottom: 12),
              child: ResumeCard(
                logoUrl: work.logoUrl,
                title: work.company,
                subtitle: work.role,
                period: work.period,
                description: work.description,
                technologies: work.technologies,
              ),
            ),
          );
        }),
      ],
    );
  }

  Widget _buildEducationSection() {
    final theme = Theme.of(context);

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        BlurFade(
          delay: Duration(milliseconds: (blurFadeDelay * 7000).toInt()),
          child: Text(
            "Education",
            style: theme.textTheme.headlineSmall?.copyWith(
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        const SizedBox(height: 16),
        ...PortfolioData.education.asMap().entries.map((entry) {
          final index = entry.key;
          final edu = entry.value;
          return BlurFade(
            delay: Duration(
              milliseconds: ((blurFadeDelay * 8000) + (index * 50)).toInt(),
            ),
            child: Padding(
              padding: const EdgeInsets.only(bottom: 12),
              child: ResumeCard(
                logoUrl: edu.logoUrl,
                title: edu.school,
                subtitle: edu.degree,
                period: edu.period,
              ),
            ),
          );
        }),
      ],
    );
  }

  Widget _buildSkillsSection() {
    final theme = Theme.of(context);

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        BlurFade(
          delay: Duration(milliseconds: (blurFadeDelay * 9000).toInt()),
          child: Text(
            "Skills",
            style: theme.textTheme.headlineSmall?.copyWith(
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        const SizedBox(height: 16),
        Wrap(
          spacing: 8,
          runSpacing: 8,
          children: PortfolioData.skills.asMap().entries.map((entry) {
            final index = entry.key;
            final skill = entry.value;

            return AnimatedSkillChip(
              label: skill,
              delay: Duration(
                milliseconds:
                    (blurFadeDelay * 1000).toInt() + 300 + (index * 80),
              ),
              backgroundColor: theme.colorScheme.primary,
              textColor: theme.colorScheme.surface,
            );
          }).toList(),
        ),
      ],
    );
  }

  Widget _buildProjectsSection() {
    final theme = Theme.of(context);
    final size = MediaQuery.of(context).size;
    final isDesktop = size.width > 768;

    return Column(
      children: [
        BlurFade(
          delay: Duration(milliseconds: (blurFadeDelay * 11000).toInt()),
          child: Column(
            children: [
              Container(
                padding: const EdgeInsets.symmetric(
                  horizontal: 12,
                  vertical: 6,
                ),
                decoration: BoxDecoration(
                  color: theme.colorScheme.primary,
                  borderRadius: BorderRadius.circular(6),
                ),
                child: Text(
                  "My Projects",
                  style: theme.textTheme.bodySmall?.copyWith(
                    color: theme.colorScheme.surface,
                  ),
                ),
              ),
              const SizedBox(height: 16),
              Text(
                "Check out my latest work",
                style: theme.textTheme.displaySmall?.copyWith(
                  fontWeight: FontWeight.bold,
                  fontSize: 32,
                ),
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: 12),
              Text(
                "I've worked on a variety of projects, from simple Apps to complex API applications. Here are a few of my favorites.",
                style: theme.textTheme.bodyLarge?.copyWith(
                  color: theme.textTheme.bodyMedium?.color?.withOpacity(0.7),
                ),
                textAlign: TextAlign.center,
              ),
            ],
          ),
        ),
        const SizedBox(height: 48),
        LayoutBuilder(
          builder: (context, constraints) {
            // Determina quantas colunas baseado na largura disponível
            final crossAxisCount = constraints.maxWidth > 600 ? 2 : 1;
            final childWidth = crossAxisCount == 2
                ? (constraints.maxWidth - 16) / 2
                : constraints.maxWidth;

            return Wrap(
              spacing: 16,
              runSpacing: 16,
              children: PortfolioData.projects.asMap().entries.map((entry) {
                final index = entry.key;
                final project = entry.value;
                return BlurFade(
                  delay: Duration(
                    milliseconds: ((blurFadeDelay * 12000) + (index * 50))
                        .toInt(),
                  ),
                  child: SizedBox(
                    width: childWidth,
                    child: ProjectCard(
                      title: project.title,
                      description: project.description,
                      dates: project.dates,
                      technologies: project.technologies,
                      image: project.image,
                      links: project.links,
                    ),
                  ),
                );
              }).toList(),
            );
          },
        ),
      ],
    );
  }

  Widget _buildCertificationsSection() {
    final theme = Theme.of(context);

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        BlurFade(
          delay: Duration(milliseconds: (blurFadeDelay * 13000).toInt()),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Certifications",
                style: theme.textTheme.headlineSmall?.copyWith(
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 8),
              Text(
                "Here are some of my professional certifications",
                style: theme.textTheme.bodyMedium?.copyWith(
                  color: theme.textTheme.bodyMedium?.color?.withOpacity(0.7),
                ),
              ),
            ],
          ),
        ),
        const SizedBox(height: 24),
        ...PortfolioData.certifications.asMap().entries.map((entry) {
          final index = entry.key;
          final cert = entry.value;
          return BlurFade(
            delay: Duration(
              milliseconds: ((blurFadeDelay * 14000) + (index * 50)).toInt(),
            ),
            child: Padding(
              padding: const EdgeInsets.only(bottom: 12),
              child: CertificationCard(
                title: cert.title,
                organization: cert.organization,
                hours: cert.hours,
                logoUrl: cert.logoUrl,
              ),
            ),
          );
        }),
      ],
    );
  }

  Widget _buildContactSection() {
    final theme = Theme.of(context);

    return BlurFade(
      delay: Duration(milliseconds: (blurFadeDelay * 16000).toInt()),
      child: Column(
        children: [
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 6),
            decoration: BoxDecoration(
              color: theme.colorScheme.primary,
              borderRadius: BorderRadius.circular(6),
            ),
            child: Text(
              "Contact",
              style: theme.textTheme.bodySmall?.copyWith(
                color: theme.colorScheme.surface,
              ),
            ),
          ),
          const SizedBox(height: 16),
          Text(
            "Get in Touch",
            style: theme.textTheme.displaySmall?.copyWith(
              fontWeight: FontWeight.bold,
              fontSize: 32,
            ),
            textAlign: TextAlign.center,
          ),
          const SizedBox(height: 12),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: Column(
              children: [
                Text(
                  "Want to chat? Just shoot me a dm ",
                  style: theme.textTheme.bodyLarge?.copyWith(
                    color: theme.textTheme.bodyMedium?.color?.withOpacity(0.7),
                  ),
                  textAlign: TextAlign.center,
                ),
                GestureDetector(
                  onTap: () =>
                      _launchUrl(PortfolioData.socialLinks['linkedin']!.url),
                  child: Text(
                    "with a direct question on LinkedIn",
                    style: theme.textTheme.bodyLarge?.copyWith(
                      color: Color(0xFF10B981),
                      decoration: TextDecoration.underline,
                    ),
                    textAlign: TextAlign.center,
                  ),
                ),
                Text(
                  " and I'll respond whenever I can. Looking forward to connecting with you!",
                  style: theme.textTheme.bodyLarge?.copyWith(
                    color: theme.textTheme.bodyMedium?.color?.withOpacity(0.7),
                  ),
                  textAlign: TextAlign.center,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Future<void> _launchUrl(String url) async {
    final uri = Uri.parse(url);
    if (await canLaunchUrl(uri)) {
      await launchUrl(uri);
    }
  }
}
