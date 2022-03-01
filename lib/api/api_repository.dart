import 'dart:convert';
import 'package:git/model/category.dart';
import 'package:git/model/step.dart';
import 'package:http/http.dart' as http;

class apiRepository{
  static final apiRepository _instance = apiRepository._internal();

  apiRepository._internal();

  factory apiRepository() => _instance;

  Future<List<Category>> doCategoryQuery() async {
    String linkApi =
        "http://app-264b90dd-7d1e-417a-ab1c-733d0b96c1d0.cleverapps.io/v1/projet/template";

    var _res = await http.get(Uri.parse(linkApi));
    var _json = jsonDecode(_res.body);
    List<Category> _categoriesApi = [];

    for(int i=0; i < _json.length; i++){
      List<Step> _listSteps = [];
      _json[i]["travaux"].forEach((step) {
        _listSteps.add(Step(step["nom"], step["conseils"], step["etapes"]));
      });
      _categoriesApi.add(Category(
          _json[i]["type"],
          _json[i]["pitch"],
          _json[i]["description"],
          _listSteps
      ));
    }

    return _categoriesApi;
  }
}