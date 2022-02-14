import 'package:flutter/material.dart';

abstract class AppPadding {
  static const paddingHalf = EdgeInsets.all(2.0);
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

  static const topPadding1 = EdgeInsets.only(top: 4.0);
  static const topPadding2 = EdgeInsets.only(top: 8.0);
  static const topPadding3 = EdgeInsets.only(top: 12.0);
  static const topPadding4 = EdgeInsets.only(top: 16.0);
  static const topPadding5 = EdgeInsets.only(top: 20.0);
  static const topPadding8 = EdgeInsets.only(top: 32.0);
}

abstract class AppMargin {
  static const marginHalf = EdgeInsets.all(2.0);
  static const margin1 = EdgeInsets.all(4.0);
  static const margin2 = EdgeInsets.all(8.0);
  static const margin3 = EdgeInsets.all(12.0);
  static const margin4 = EdgeInsets.all(16.0);
  static const margin5 = EdgeInsets.all(20.0);

  static const leftMargin1 = EdgeInsets.only(left: 4.0);
  static const leftMargin2 = EdgeInsets.only(left: 8.0);
  static const leftMargin3 = EdgeInsets.only(left: 12.0);
  static const leftMargin4 = EdgeInsets.only(left: 16.0);
  static const leftMargin5 = EdgeInsets.only(left: 20.0);
  static const leftMargin8 = EdgeInsets.only(left: 32.0);

  static const rightMargin1 = EdgeInsets.only(right: 4.0);
  static const rightMargin2 = EdgeInsets.only(right: 8.0);
  static const rightMargin3 = EdgeInsets.only(right: 12.0);
  static const rightMargin4 = EdgeInsets.only(right: 16.0);
  static const rightMargin5 = EdgeInsets.only(right: 20.0);
  static const rightMargin8 = EdgeInsets.only(right: 32.0);

  static const topMargin1 = EdgeInsets.only(top: 4.0);
  static const topMargin2 = EdgeInsets.only(top: 8.0);
  static const topMargin3 = EdgeInsets.only(top: 12.0);
  static const topMargin4 = EdgeInsets.only(top: 16.0);
  static const topMargin5 = EdgeInsets.only(top: 20.0);
  static const topMargin8 = EdgeInsets.only(top: 32.0);
}

abstract class AppRadius {
  static BorderRadius radius1 = BorderRadius.circular(12.0);
  static BorderRadius radius2 = BorderRadius.circular(16.0);
  static BorderRadius radius3 = BorderRadius.circular(20.0);
  static BorderRadius radius4 = BorderRadius.circular(24.0);
  static BorderRadius radius5 = BorderRadius.circular(40.0);
}
