import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class UAppTheme {
  static const _baseBlue = 0xFF30A5BD;

  static ThemeData baseTheme = ThemeData(
    // brightness: Brightness.dark,
    primaryColorLight: const Color(0xFFEAF6F8),
    primaryColor: const Color(_baseBlue),
    primarySwatch: const MaterialColor(_baseBlue, <int, Color>{
      50: Color(0xFFEAF6F8),
      100: Color(0xFFBFE3EB),
      200: Color(0xFFA0D6E1),
      300: Color(0xFF74C3D3),
      400: Color(0xFF59B7CA),
      500: Color(_baseBlue),
      600: Color(0xFF2C96AC),
      700: Color(0xFF227586),
      800: Color(0xFF1A5B68),
      900: Color(0xFF14454F),
    }),
    scaffoldBackgroundColor: const Color.fromARGB(255, 36, 43, 42),
    textTheme: GoogleFonts.poppinsTextTheme(),
  );
}
