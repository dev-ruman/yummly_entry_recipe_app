import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:yummly_entry_recipe_app/models/recipe.dart';

class RecipeApi {
  static Future<List> getRecipe() async {
    var uri = Uri.https(
        'yummly2.p.rapidapi.com', '/feeds/list', {'limit': '24', 'start': '0'});
    final response = await http.get(uri, headers: {
      'X-RapidAPI-Key': 'e1d53e6f0cmsh521763fda23dd02p10cac4jsn35e1aaf602b6',
      'X-RapidAPI-Host': 'yummly2.p.rapidapi.com'
    });

    Map data = jsonDecode(response.body);

    List _temp = [];

    for (var i in data['feed']) {
      _temp.add(i['content']['details']);
    }

    return Recipe.recipesFromSnapshot(_temp);
  }
}
