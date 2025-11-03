import 'package:flutter/material.dart';
import 'dart:ui';

/// Background com gradientes elegantes para o portfolio
/// Inspirado em designs modernos com blur effects
class GradientBackground extends StatelessWidget {
  final Widget child;

  const GradientBackground({super.key, required this.child});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        // Background base
        Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              colors: [
                Color(0xFF0A0F0D), // Preto esverdeado
                Color(0xFF0D1411), // Levemente mais claro
                Color(0xFF0A0F0D), // De volta ao escuro
              ],
              stops: [0.0, 0.5, 1.0],
            ),
          ),
        ),

        // Gradiente verde esmeralda - canto superior esquerdo
        Positioned(
          top: -100,
          left: -100,
          child: Container(
            width: 400,
            height: 400,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              gradient: RadialGradient(
                colors: [
                  const Color(0xFF10B981).withOpacity(0.15), // Verde esmeralda
                  const Color(0xFF10B981).withOpacity(0.05),
                  Colors.transparent,
                ],
                stops: const [0.0, 0.5, 1.0],
              ),
            ),
          ),
        ),

        // Gradiente verde esmeralda - canto inferior direito
        Positioned(
          bottom: -150,
          right: -150,
          child: Container(
            width: 500,
            height: 500,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              gradient: RadialGradient(
                colors: [
                  const Color(0xFF10B981).withOpacity(0.12), // Verde esmeralda
                  const Color(0xFF10B981).withOpacity(0.04),
                  Colors.transparent,
                ],
                stops: const [0.0, 0.6, 1.0],
              ),
            ),
          ),
        ),

        // Gradiente azul-verde - meio direita
        Positioned(
          top: MediaQuery.of(context).size.height * 0.3,
          right: -200,
          child: Container(
            width: 450,
            height: 450,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              gradient: RadialGradient(
                colors: [
                  const Color(
                    0xFF059669,
                  ).withOpacity(0.08), // Verde mais escuro
                  const Color(0xFF047857).withOpacity(0.03),
                  Colors.transparent,
                ],
                stops: const [0.0, 0.5, 1.0],
              ),
            ),
          ),
        ),

        // Gradiente sutil - centro
        Positioned(
          top: MediaQuery.of(context).size.height * 0.4,
          left: MediaQuery.of(context).size.width * 0.2,
          child: Container(
            width: 350,
            height: 350,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              gradient: RadialGradient(
                colors: [
                  const Color(0xFF10B981).withOpacity(0.06),
                  const Color(0xFF10B981).withOpacity(0.02),
                  Colors.transparent,
                ],
                stops: const [0.0, 0.6, 1.0],
              ),
            ),
          ),
        ),

        // Efeito de blur (glassmorphism leve)
        BackdropFilter(
          filter: ImageFilter.blur(sigmaX: 100, sigmaY: 100),
          child: Container(color: Colors.transparent),
        ),

        // Conteúdo
        child,
      ],
    );
  }
}
