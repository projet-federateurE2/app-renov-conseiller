import 'package:flutter/material.dart';

class Category {
  String name;
  String iconPath;
  String pitch;
  String desc;
  List<String> tips;
  List<Step> steps;

  Category(
      this.name, this.iconPath, this.pitch, this.desc, this.tips, this.steps);
}
