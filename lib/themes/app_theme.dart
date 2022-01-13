import 'dart:ui';

import 'package:flutter/material.dart';

// Couleurs pas encore définies (c'est un copié/collé d'une autre application)
final darkTheme = ThemeData(
  bottomAppBarColor: AppColors.darkPrimaryColor,
  scaffoldBackgroundColor: AppColors.darkPrimaryBackground,
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
  primaryColor: AppColors.darkPrimaryColor,
);

const activeTheme = lightTheme;

// Thème clair
abstract class lightTheme {

  static const Color bottomAppBarColor = AppColors.lightPrimaryColor;
  static const Color scaffoldBackgroundColor = AppColors.white;
  static const Color primaryColor = AppColors.lightPrimaryColor;

  static const TextStyle headline1 = TextStyle(
      fontWeight: FontWeight.w500,
      color: AppColors.lightSecondaryColor,
      fontSize: 60);

  static const TextStyle headline2 = TextStyle(
      fontWeight: FontWeight.w600,
      color: AppColors.lightSecondaryColor,
      fontSize: 48);

  static const TextStyle headline3 = TextStyle(
      fontWeight: FontWeight.w600,
      color: AppColors.lightSecondaryColor,
      fontSize: 40);

  static const TextStyle headline4 = TextStyle(
      fontWeight: FontWeight.w500,
      color: AppColors.lightSecondaryColor,
      fontSize: 30);

  static const TextStyle headline5 = TextStyle(
      fontWeight: FontWeight.w600,
      color: AppColors.lightSecondaryColor,
      fontSize: 24);

  static const TextStyle headline6 = TextStyle(
      fontWeight: FontWeight.w600,
      color: AppColors.lightSecondaryColor,
      fontSize: 24);

  static const TextStyle subtitle1 = TextStyle(
      fontWeight: FontWeight.w500,
      color: AppColors.lightSecondaryColor,
      fontSize: 12);

  static const TextStyle bodyText1 = TextStyle(
      fontWeight: FontWeight.w500,
      color: AppColors.lightSecondaryColor,
      fontSize: 16);

  static const TextStyle buttonFull = TextStyle(
    fontWeight: FontWeight.w600,
    color: AppColors.white,
    fontSize: 20,
  );

  static const TextStyle buttonEmpty = TextStyle(
    //fontFamily: 'Lexend',
    fontWeight: FontWeight.w600,
    color: AppColors.lightPrimaryColor,
    fontSize: 20,
  );
}

// Couleurs des maquettes
abstract class AppColors {
  static const Color darkPrimaryBackground = Color(0xFF343A43);
  static const Color darkSecondaryBackground = Color(0xFF343A43);
  static const Color white = Color(0xFFFFFFFF);
  static const Color grey1 = Color(0xFFC4C4C4);
  static const Color grey2 = Color(0xFF7F8287);
  static const Color grey3 = Color(0xFF707070);
  static const Color darkPrimaryColor = Color(0xFF02C780);
  static const Color darkSecondaryColor = Color(0xFF27453A);

  // Light theme
  static const Color lightPrimaryColor = Color(0xFF4CD8AD);
  static const Color lightPrimaryColorLight = Color(0xFFE2F9F2);
  static const Color lightSecondaryColor = Color(0xFF052948);
}
