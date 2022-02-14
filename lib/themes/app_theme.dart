import 'dart:ui';

import 'package:flutter/material.dart';

const activeTheme = lightTheme;

// Thème clair
abstract class lightTheme {
  static const Color bottomAppBarColor = AppColors.lightPrimaryColor;
  static const Color scaffoldBackgroundColor = AppColors.white;
  static const Color primaryColor = AppColors.lightPrimaryColor;

  static const TextStyle headline1 = TextStyle(
      fontFamily: 'Poppins',
      fontWeight: FontWeight.w600,
      color: AppColors.lightSecondaryColor,
      fontSize: 32);

  static const TextStyle headline2 = TextStyle(
      fontFamily: 'Poppins',
      fontWeight: FontWeight.w500,
      color: AppColors.lightSecondaryColor,
      fontSize: 27);

  static const TextStyle headline3 = TextStyle(
      fontFamily: 'Poppins',
      fontWeight: FontWeight.w600,
      color: AppColors.lightSecondaryColor,
      fontSize: 16);

  static const TextStyle headline4 = TextStyle(
      fontFamily: 'Poppins',
      fontWeight: FontWeight.w500,
      color: AppColors.lightSecondaryColor,
      fontSize: 10);

  static const TextStyle subtitle1 = TextStyle(
      fontFamily: 'Roboto',
      fontWeight: FontWeight.w300,
      color: AppColors.lightSecondaryColor,
      fontSize: 17);

  static const TextStyle subtitle2 = TextStyle(
      fontFamily: 'Roboto',
      fontWeight: FontWeight.w300,
      color: AppColors.lightSecondaryColor,
      fontSize: 11);

  static const TextStyle subtitle3 = TextStyle(
      fontFamily: 'Roboto',
      fontWeight: FontWeight.w300,
      color: AppColors.lightSecondaryColor,
      fontSize: 9);

  static const TextStyle bodyText1 = TextStyle(
      fontFamily: 'Roboto',
      fontWeight: FontWeight.w500,
      color: AppColors.lightSecondaryColor,
      fontSize: 25);

  static const TextStyle buttonFull = TextStyle(
    fontFamily: 'Roboto',
    fontWeight: FontWeight.w500,
    color: AppColors.white,
    fontSize: 20,
  );

  static const TextStyle buttonEmpty = TextStyle(
    fontFamily: 'Roboto',
    fontWeight: FontWeight.w500,
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
