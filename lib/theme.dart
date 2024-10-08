import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MyThemeData {
  static const Color primaryColor = Color(0xffB7935F);
  static ThemeData lightTheme = ThemeData(
      scaffoldBackgroundColor: Colors.transparent,
      appBarTheme: AppBarTheme(
        centerTitle: true,
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      textTheme: TextTheme(
          bodyLarge: GoogleFonts.elMessiri(
              fontSize: 30, fontWeight: FontWeight.bold, color: Colors.black),
          bodyMedium: GoogleFonts.elMessiri(
              fontSize: 25, fontWeight: FontWeight.w600, color: Colors.black),
          bodySmall: GoogleFonts.elMessiri(
              fontSize: 20,
              fontWeight: FontWeight.normal,
              color: Colors.black)),
      bottomNavigationBarTheme: const BottomNavigationBarThemeData(
          showSelectedLabels: false,
          showUnselectedLabels: false,
          // type: BottomNavigationBarType.shifting,
          backgroundColor: primaryColor,
          selectedItemColor: Colors.black,
          unselectedItemColor: Colors.white));
  static ThemeData darkTheme = ThemeData();
}
