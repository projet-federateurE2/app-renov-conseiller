import 'dart:convert';
import 'package:git/model/category.dart';
import 'package:git/model/step.dart';
import 'package:http/http.dart' as http;

class ApiRepository{
  static final ApiRepository _instance = ApiRepository._internal();

  ApiRepository._internal();

  factory ApiRepository() => _instance;

  /// We get the data from the api
  Future<List<Category>> doCategoryQuery() async {
    String linkApi =
        "https://app-ef3e460c-a183-4eb1-a1a6-ea2f0282e0cd.cleverapps.io/v1/projet/template";

    var _res = await http.get(Uri.parse(linkApi));
    var _json = jsonDecode(_res.body);
    List<Category> _categoriesApi = [];

    // we convert list from response into list of objects
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