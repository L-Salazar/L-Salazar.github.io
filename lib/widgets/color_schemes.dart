import 'package:flutter/material.dart';

/// Esquemas de cores para o portfolio dark
/// Troque facilmente entre diferentes paletas de cores
class ColorSchemes {
  // ============================================
  // ESQUEMA 1: VERDE ESMERALDA (Atual)
  // ============================================
  // Sofisticado, tech, empresarial
  // Inspirado em: Stripe, Spotify
  static const emeraldGreen = _ColorScheme(
    name: 'Esmeralda Verde',
    primary: Color(0xFF10B981),
    background: Color(0xFF0A0F0D),
    surface: Color(0xFF111716),
    card: Color(0xFF1A1F1E),
    description: 'Sofisticado e tech, perfeito para portfolios profissionais',
  );

  // ============================================
  // ESQUEMA 2: AZUL ELÉTRICO
  // ============================================
  // Moderno, tech, inovador
  // Inspirado em: Discord, Twitter
  static const electricBlue = _ColorScheme(
    name: 'Azul Elétrico',
    primary: Color(0xFF3B82F6),
    background: Color(0xFF0A0E14),
    surface: Color(0xFF111827),
    card: Color(0xFF1F2937),
    description: 'Moderno e tech, ótimo para desenvolvedores',
  );

  // ============================================
  // ESQUEMA 3: ROXO CYBER
  // ============================================
  // Futurista, criativo, único
  // Inspirado em: Twitch, cyberpunk
  static const cyberPurple = _ColorScheme(
    name: 'Roxo Cyber',
    primary: Color(0xFF8B5CF6),
    background: Color(0xFF0D0A0F),
    surface: Color(0xFF1A1424),
    card: Color(0xFF251E2E),
    description: 'Futurista e criativo, para portfolios únicos',
  );

  // ============================================
  // ESQUEMA 4: LARANJA NEON
  // ============================================
  // Energético, ousado, vibrante
  // Inspirado em: SoundCloud, designs modernos
  static const neonOrange = _ColorScheme(
    name: 'Laranja Neon',
    primary: Color(0xFFFF6B35),
    background: Color(0xFF0F0A08),
    surface: Color(0xFF1A1210),
    card: Color(0xFF2A1E1A),
    description: 'Energético e ousado, destaque garantido',
  );

  // ============================================
  // ESQUEMA 5: AZUL CIANO
  // ============================================
  // Clean, tech, minimalista
  // Inspirado em: Vercel, Next.js
  static const cyanBlue = _ColorScheme(
    name: 'Azul Ciano',
    primary: Color(0xFF06B6D4),
    background: Color(0xFF0A0E11),
    surface: Color(0xFF111418),
    card: Color(0xFF1A1E23),
    description: 'Clean e minimalista, estilo Vercel',
  );

  // ============================================
  // ESQUEMA 6: ROSA FÚCSIA
  // ============================================
  // Ousado, criativo, design-focused
  // Inspirado em: Dribbble, designs criativos
  static const fuchsiaPink = _ColorScheme(
    name: 'Rosa Fúcsia',
    primary: Color(0xFFEC4899),
    background: Color(0xFF0F0A0E),
    surface: Color(0xFF1A1216),
    card: Color(0xFF261A22),
    description: 'Ousado e criativo, para designers',
  );

  // ============================================
  // ESQUEMA 7: AMARELO ÂMBAR
  // ============================================
  // Quente, acolhedor, único
  // Inspirado em: designs vintage modernos
  static const amberYellow = _ColorScheme(
    name: 'Amarelo Âmbar',
    primary: Color(0xFFF59E0B),
    background: Color(0xFF0F0D0A),
    surface: Color(0xFF1A1611),
    card: Color(0xFF252119),
    description: 'Quente e único, destaca-se da multidão',
  );

  // ============================================
  // ESQUEMA 8: VERDE LIMA
  // ============================================
  // Vibrante, jovem, energético
  // Inspirado em: Android, designs modernos
  static const limeGreen = _ColorScheme(
    name: 'Verde Lima',
    primary: Color(0xFF84CC16),
    background: Color(0xFF0A0F08),
    surface: Color(0xFF111710),
    card: Color(0xFF1A2118),
    description: 'Vibrante e energético, moderno',
  );

  // ============================================
  // ESQUEMA 9: VERMELHO RUBI
  // ============================================
  // Forte, confiante, impactante
  // Inspirado em: Netflix, designs premium
  static const rubyRed = _ColorScheme(
    name: 'Vermelho Rubi',
    primary: Color(0xFFEF4444),
    background: Color(0xFF0F0808),
    surface: Color(0xFF1A1010),
    card: Color(0xFF261818),
    description: 'Forte e impactante, chama atenção',
  );

  // ============================================
  // ESQUEMA 10: AZUL ÍNDIGO
  // ============================================
  // Profissional, confiável, corporativo
  // Inspirado em: LinkedIn, IBM
  static const indigoBlue = _ColorScheme(
    name: 'Azul Índigo',
    primary: Color(0xFF6366F1),
    background: Color(0xFF0A0B0F),
    surface: Color(0xFF111318),
    card: Color(0xFF1A1D25),
    description: 'Profissional e confiável, corporativo',
  );

  /// Lista de todos os esquemas para fácil acesso
  static const List<_ColorScheme> all = [
    emeraldGreen,
    electricBlue,
    cyberPurple,
    neonOrange,
    cyanBlue,
    fuchsiaPink,
    amberYellow,
    limeGreen,
    rubyRed,
    indigoBlue,
  ];
}

class _ColorScheme {
  final String name;
  final Color primary;
  final Color background;
  final Color surface;
  final Color card;
  final String description;

  const _ColorScheme({
    required this.name,
    required this.primary,
    required this.background,
    required this.surface,
    required this.card,
    required this.description,
  });
}
