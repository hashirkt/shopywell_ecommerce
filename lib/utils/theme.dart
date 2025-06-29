import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

abstract class AppTheme {
  // 🔷 Colors
  static const Color white = Colors.white;
  static const Color black = Colors.black;
  static const Color primaryColor = Color(
    0xFFF40000,
  ); // Used for buttons, highlights
  static const Color secondaryColor = Color(0xFFF3F3F3);
  static const Color scaffoldBgColor = Colors.white;
  static const Color borderColor = Color(0xffA8A8A9);
  static const Color lightColor = Color(0xFF676767);
  static const Color lightGreenColor = Color(0x26489270);
  static const Color cardLightColor = Color(0xFFF6F6F6);
  static const Color buttonColor = Color(0xFFF26063);
  static const Color outOfStockColor = Color(0xFFE2353A);
  static const Color dividerColor = Color(0xFFD9D9D9);

  // 🔷 ThemeData
  static final ThemeData lightTheme = ThemeData(
    useMaterial3: false,
    primaryColor: primaryColor,
    scaffoldBackgroundColor: scaffoldBgColor,
    fontFamily: GoogleFonts.montserrat().fontFamily,
    colorScheme: const ColorScheme.light(primary: black),
    dividerColor: dividerColor,

    appBarTheme: const AppBarTheme(
      backgroundColor: cardLightColor,
      elevation: 0,
      iconTheme: IconThemeData(color: black),
      titleTextStyle: TextStyle(
        fontSize: 20,
        fontWeight: FontWeight.w600,
        color: black,
      ),
      centerTitle: false,
    ),

    textTheme: const TextTheme(
      // Used in major headings
      displayLarge: TextStyle(
        fontSize: 30,
        fontWeight: FontWeight.w700,
        color: primaryColor,
      ),
      displayMedium: TextStyle(
        fontSize: 18,
        fontWeight: FontWeight.w600,
        color: black,
      ),
      displaySmall: TextStyle(
        fontSize: 12,
        fontWeight: FontWeight.w500,
        color: lightColor,
      ),

      // Section Titles
      headlineLarge: TextStyle(
        fontSize: 30,
        fontWeight: FontWeight.bold,
        color: black,
      ),
      headlineMedium: TextStyle(
        fontSize: 16,
        fontWeight: FontWeight.w600,
        color: primaryColor,
      ),
      headlineSmall: TextStyle(
        fontSize: 10,
        fontWeight: FontWeight.w500,
        color: primaryColor,
      ),

      // Input/Field Labels
      titleLarge: TextStyle(
        fontSize: 18,
        fontWeight: FontWeight.w500,
        color: black,
      ),
      titleMedium: TextStyle(
        fontSize: 14,
        fontWeight: FontWeight.w500,
        color: primaryColor,
      ),
      titleSmall: TextStyle(
        fontSize: 14,
        fontWeight: FontWeight.w500,
        color: secondaryColor,
      ),

      // Body / Paragraphs
      bodyLarge: TextStyle(
        fontSize: 17,
        fontWeight: FontWeight.w700,
        color: black,
      ),
      bodyMedium: TextStyle(
        fontSize: 14,
        fontWeight: FontWeight.w600,
        color: black,
      ),
      bodySmall: TextStyle(
        fontSize: 12,
        fontWeight: FontWeight.w400,
        color: secondaryColor,
      ),

      // Label / Button Texts
      labelLarge: TextStyle(
        fontSize: 20,
        fontWeight: FontWeight.w600,
        color: white,
      ),
      labelMedium: TextStyle(
        fontSize: 16,
        fontWeight: FontWeight.w500,
        color: black,
      ),
      labelSmall: TextStyle(
        fontSize: 18,
        fontWeight: FontWeight.w400,
        color: secondaryColor,
      ),
    ),
  );
}
