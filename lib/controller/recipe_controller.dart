import 'package:get/get.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';
import '../model/recipe_model.dart';


class RecipeController extends GetxController {
  @override
  void onInit() async {
    getRecipe();
    super.onInit();
  }

  RxBool loading = false.obs;

  List<RecipeModel> recipesList = [];
  Future<List<RecipeModel>> getRecipe() async {
    var uri = Uri.https(
      'yummly2.p.rapidapi.com',
     '/feeds/list',
      {"limit": "18", "start": "0", "tag": "list.recipe.popular"}
    );
    final response = await http.get(
      uri,
      headers: {
        'X-RapidAPI-Host': 'yummly2.p.rapidapi.com',
        'X-RapidAPI-Key': '2a89df7079mshd829b95ace1c138p123c60jsna2e5a4f01a66',
         "useQueryString": "true"
      },
    );

    Map data = jsonDecode(response.body);
    List _temp = [];
    for (var i in data['feed']) {
      _temp.add(i['content']['details']);
    }
   
    return RecipeModel.recipeSnapShot(_temp);

   
  }
}
