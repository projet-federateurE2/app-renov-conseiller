import 'package:git/model/step.dart';

class Category {
  String name;
  String pitch;
  String desc;
  List<Step> steps;

  Category(
      this.name, this.pitch, this.desc, this.steps);
}
