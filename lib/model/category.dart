import 'package:git/model/step.dart';

// Category class witch allows to create a category
class Category {
  String name;
  String pitch;
  String desc;
  List<Step> steps;

  Category(
      this.name, this.pitch, this.desc, this.steps);
}
