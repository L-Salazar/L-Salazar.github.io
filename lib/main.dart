import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:salazar_site/screens/home_screen.dart';

void main() {
  runApp(const PortfolioApp());
}

class PortfolioApp extends StatefulWidget {
  const PortfolioApp({super.key});

  @override
  State<PortfolioApp> createState() => _PortfolioAppState();
}

class _PortfolioAppState extends State<PortfolioApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Salazar Portfolio',
      debugShowCheckedModeBanner: false,
      theme: _buildDarkTheme(),
      home: HomeScreen(),
    );
  }

  ThemeData _buildDarkTheme() {
    const primaryColor = Color(0xFF10B981); // Verde esmeralda
    const backgroundColor = Color(0xFF0A0F0D); // Preto esverdeado
    const surfaceColor = Color(0xFF111716); // Cinza escuro esverdeado
    const cardColor = Color(0xFF1A1F1E); // Card levemente mais claro

    return ThemeData(
      useMaterial3: true,
      brightness: Brightness.dark,
      scaffoldBackgroundColor: backgroundColor,
      cardTheme: CardThemeData(color: cardColor, elevation: 0),
      colorScheme: const ColorScheme.dark(
        primary: primaryColor,
        secondary: cardColor,
        surface: surfaceColor,
        onPrimary: Colors.black,
        onSecondary: Colors.white,
        onSurface: Colors.white,
      ),

      textTheme: GoogleFonts.poppinsTextTheme()
          .copyWith(
            displayLarge: GoogleFonts.montserrat(
              fontSize: 57,
              fontWeight: FontWeight.bold,
            ),
            displayMedium: GoogleFonts.montserrat(
              fontSize: 45,
              fontWeight: FontWeight.bold,
            ),
            displaySmall: GoogleFonts.montserrat(
              fontSize: 36,
              fontWeight: FontWeight.bold,
            ),
            headlineLarge: GoogleFonts.montserrat(
              fontSize: 32,
              fontWeight: FontWeight.bold,
            ),
            headlineMedium: GoogleFonts.montserrat(
              fontSize: 28,
              fontWeight: FontWeight.bold,
            ),
            headlineSmall: GoogleFonts.montserrat(
              fontSize: 24,
              fontWeight: FontWeight.bold,
            ),
            // Corpo usa Poppins
          )
          .apply(
            bodyColor: const Color(0xFFFAFAFA),
            displayColor: const Color(0xFFFAFAFA),
          ),
    );
  }
}
