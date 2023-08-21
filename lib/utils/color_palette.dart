import 'package:flutter/material.dart';

class ColorPalette {
  static  Color get primaryColor => const Color(0xFF05693A);
  static  Color get red => const Color(0xFFCE0E2D);
  static  Color get grey => const Color(0xFF303030);
  static  Color get formGrey => const Color(0xFF848280);

  static const MaterialColor materialPrimary = MaterialColor(
    0xFF05693A,
    <int, Color>{
      50: Color(0xFF05693A),
      100: Color(0xFF05693A),
      200: Color(0xFF05693A),
      300: Color(0xFF05693A),
      400: Color(0xFF05693A),
      500: Color(0xFF05693A),
      600: Color(0xFF05693A),
      700: Color(0xFF05693A),
      800: Color(0xFF05693A),
      900: Color(0xFF05693A),
    },
  );
  static const MaterialColor materialGrey = MaterialColor(
    0xFF6D737D,
    <int, Color>{
      50: Color(0xFF848280),
      100: Color(0xFF848280),
      200: Color(0xFF848280),
      300: Color(0xFF848280),
      400: Color(0xFF848280),
      500: Color(0xFF848280),
      600: Color(0xFF848280),
      700: Color(0xFF848280),
      800: Color(0xFF848280),
      900: Color(0xFF848280),
    },
  );
}

class HexColor extends Color {
  HexColor(final String hexColor) : super(_getColorFromHex(hexColor));

  static int _getColorFromHex(String hexColor) {
    hexColor = hexColor.toUpperCase().replaceAll('#', '');
    if (hexColor.length == 6) {
      hexColor = 'FF$hexColor';
    }
    return int.parse(hexColor, radix: 16);
  }
}
