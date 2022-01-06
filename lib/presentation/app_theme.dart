import 'dart:ui';

import 'package:flutter/material.dart';

// Couleurs pas encore définies (c'est un copié/collé d'une autre application)
final lightTheme = ThemeData(
  bottomAppBarColor: AppColors.accentColor,
  scaffoldBackgroundColor: AppColors.primaryBackground,
  textTheme: const TextTheme(
    headline1: TextStyle(
        fontFamily: 'Lexend',
        fontWeight: FontWeight.w500,
        color: AppColors.grey2,
        fontSize: 60),
    headline2: TextStyle(
        fontFamily: 'Lexend',
        fontWeight: FontWeight.w600,
        color: AppColors.white,
        fontSize: 48),
    headline3: TextStyle(
        fontFamily: 'Lexend',
        fontWeight: FontWeight.w600,
        color: AppColors.white,
        fontSize: 40),
    headline4: TextStyle(
        fontFamily: 'Lexend',
        fontWeight: FontWeight.w500,
        color: AppColors.white,
        fontSize: 30),
    headline5: TextStyle(
        fontFamily: 'Lexend',
        fontWeight: FontWeight.w600,
        color: AppColors.white,
        fontSize: 24),
    headline6: TextStyle(
        fontFamily: 'Lexend',
        fontWeight: FontWeight.w600,
        color: AppColors.grey2,
        fontSize: 24),
    subtitle1: TextStyle(
        fontFamily: 'Lexend',
        fontWeight: FontWeight.w500,
        color: AppColors.grey3,
        fontSize: 12),
    bodyText1: TextStyle(
        fontFamily: 'Lexend',
        fontWeight: FontWeight.w500,
        color: AppColors.white,
        fontSize: 16),
  ),
);

// Couleurs des maquettes
abstract class AppColors {
  static const Color primaryBackground = Color(0xFF343A43);
  static const Color secondaryBackground = Color(0xFF343A43);
  static const Color white = Color(0xFFFFFFFF);
  static const Color grey1 = Color(0xFFC4C4C4);
  static const Color grey2 = Color(0xFF7F8287);
  static const Color grey3 = Color(0xFF707070);
  static const Color accentColor = Color(0xFF02C780);
  static const Color darkAccentColor = Color(0xFF27453A);
}
