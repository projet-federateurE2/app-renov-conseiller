import 'package:git/model/step.dart';

// Category class witch allows to create a category
class Category {
  String name;
  String desc;
  String pitch;
  List<Step> steps;

  Category(
      this.name, this.desc, this.pitch, this.steps);

  factory Category.fromJson(Map<dynamic, dynamic> json) {
    return Category(
      json['type'],
      json['description'],
      json['pitch'],
      json['travaux'],
    );
  }
}
