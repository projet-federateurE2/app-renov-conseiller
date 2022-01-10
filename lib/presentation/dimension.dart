import 'package:flutter/material.dart';

abstract class AppPadding {
  static const padding1 = EdgeInsets.all(4.0);
  static const padding2 = EdgeInsets.all(8.0);
  static const padding3 = EdgeInsets.all(12.0);
  static const padding4 = EdgeInsets.all(16.0);
  static const padding5 = EdgeInsets.all(20.0);
  static const leftPadding1 = EdgeInsets.only(left: 4.0);
  static const leftPadding2 = EdgeInsets.only(left: 8.0);
  static const leftPadding3 = EdgeInsets.only(left: 12.0);
  static const leftPadding4 = EdgeInsets.only(left: 16.0);
  static const leftPadding5 = EdgeInsets.only(left: 20.0);
  static const rightPadding1 = EdgeInsets.only(right: 4.0);
  static const rightPadding2 = EdgeInsets.only(right: 8.0);
  static const rightPadding3 = EdgeInsets.only(right: 12.0);
  static const rightPadding4 = EdgeInsets.only(right: 16.0);
  static const rightPadding5 = EdgeInsets.only(right: 20.0);
}

abstract class AppRadius {
  static BorderRadius radius1 = BorderRadius.circular(16.0);
  static BorderRadius radius2 = BorderRadius.circular(24.0);
  static BorderRadius radius3 = BorderRadius.circular(40.0);
}
