import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

// Couleurs pas encore définies (c'est un copié/collé d'une autre application)
final lightTheme = ThemeData(
    primaryColor: const Color(0xFF4F9AE6),
    primaryColorLight: const Color(0xFF47CBE1),
    primaryColorDark: const Color(0xFF4F92D9),
    errorColor: const Color(0xFFEC4E75),
    scaffoldBackgroundColor: Colors.white,
    textTheme: GoogleFonts.openSansTextTheme(),
    inputDecorationTheme: InputDecorationTheme(
      border: OutlineInputBorder(
        borderRadius: BorderRadius.circular(8),
      ),
    ),
    appBarTheme: const AppBarTheme(
        backgroundColor: Colors.white,
        elevation: 0,
        centerTitle: true,
        iconTheme: IconThemeData(color: Color(0xFF828282))),
    iconTheme: const IconThemeData(color: Color(0xFF333333)),
    colorScheme:
        ColorScheme.fromSwatch().copyWith(secondary: const Color(0xFF828282)));

abstract class AppColors {
  static const Color transparentWhite = Color.fromARGB(150, 255, 255, 255);
  static const Color lightGrey = Color(0xFFBDBDBD);
  static const Color yellow = Color(0xFFEEC846);
  static const Color green = Color(0xFF34BD47);
  static const Color blue = Color(0xFF4F9AE6);
  static const Color red = Color(0xFFEC4E75);
  static const Color black = Color(0xFF333333);
}
