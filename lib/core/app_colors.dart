import 'package:flutter/material.dart';

/// Cores personalizadas para o App.
class AppColors {
  static const Color primaryColor = Color(0xFFEB5E28);
  static const Color backgroundColor = Color(0xFF252422);
  static const Color secondaryColor = Color(0xFF403D39);
  static const Color variantColor = Color(0xFFCCC5B9);
  static const Color textColor = Color(0xFFFFFCF2);
}

/// Usado exclusivamente para o primarySwatch
///
///Como usar:
/// - createMaterialColor(const Color(0xFF_COR_)),
MaterialColor createMaterialColor(Color color) {
  List strengths = <double>[.05];
  final swatch = <int, Color>{};
  final int r = color.red, g = color.green, b = color.blue;

  for (int i = 1; i < 10; i++) {
    strengths.add(0.1 * i);
  }
  for (var strength in strengths) {
    final double ds = 0.5 - strength;
    swatch[(strength * 1000).round()] = Color.fromRGBO(
      r + ((ds < 0 ? r : (255 - r)) * ds).round(),
      g + ((ds < 0 ? g : (255 - g)) * ds).round(),
      b + ((ds < 0 ? b : (255 - b)) * ds).round(),
      1,
    );
  }
  return MaterialColor(color.value, swatch);
}