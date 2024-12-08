import 'package:flutter/material.dart';

class AppTheme {
  static ThemeData get lightTheme {
    return ThemeData(
      colorScheme: ColorScheme.fromSeed(
        seedColor: Colors.deepPurple,
      ),
      fontFamily: 'Roboto',
      textTheme: const TextTheme(
        headlineSmall: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
        titleLarge: TextStyle(fontSize: 24.0, fontWeight: FontWeight.bold),
        titleMedium: TextStyle(fontSize: 18.0, fontStyle: FontStyle.italic),
        bodyLarge: TextStyle(fontSize: 16.0),
        bodyMedium: TextStyle(fontSize: 14.0),
      ),
      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(
          backgroundColor: Colors.deepPurple,
          foregroundColor: Colors.white,
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(8),
          ),
        ),
      ),
    );
  }

  static ThemeData get darkTheme {
    return ThemeData.dark().copyWith(
      colorScheme: ColorScheme.fromSeed(
        seedColor: Colors.deepPurple,
        brightness: Brightness.dark,
      ),
      textTheme: const TextTheme(
        headlineSmall: TextStyle(
            fontSize: 20.0,
            fontFamily: 'Roboto',
            color: Color(0xFFE6E6E6),
            fontWeight: FontWeight.w700),
        titleLarge: TextStyle(
            fontSize: 24.0,
            fontFamily: 'Roboto',
            color: Color(0xFFE6E6E6),
            fontWeight: FontWeight.w700),
        bodyLarge: TextStyle(fontSize: 16.0, fontFamily: 'Roboto'),
        bodyMedium: TextStyle(
            fontSize: 16.0,
            fontFamily: 'Roboto',
            color: Color(0xFFA1A1A1),
            fontWeight: FontWeight.w400),
      ),
      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(
          backgroundColor: Colors.deepPurple,
          foregroundColor: Colors.white,
          padding: const EdgeInsets.symmetric(horizontal: 18, vertical: 10),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20),
          ),
          textStyle: const TextStyle(
              fontSize: 14, fontFamily: 'Roboto', fontWeight: FontWeight.w700),
        ),
      ),
    );
  }
}
