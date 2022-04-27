import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../components/recipe_widget.dart';
import '../components/shimmer_effect.dart';
import '../utils/consts.dart';
import '../controller/recipe_controller.dart';

class RecipePage extends StatelessWidget {
  RecipePage({Key? key}) : super(key: key);

  final RecipeController controller = Get.put(RecipeController());
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          elevation: 0,
          title: const Text(
            'Recipes',
            style: TextStyle(
              fontSize: 20,
              color: Const.whiteColor,
            ),
          ),
        ),
        body: FutureBuilder(
          future: controller.getRecipe(),
          builder: (BuildContext context, AsyncSnapshot<List> snapShot) {
            if (snapShot.connectionState == ConnectionState.waiting) {
              return const Skeleton();
            } else {
              if (snapShot.hasError) {
                const Center(
                  child: Text(
                    "Sorry, Some error occured",
                    style: TextStyle(color: Const.redColor, fontSize: 30),
                  ),
                );
              }
            }
            return ListView.separated(
                itemBuilder: (BuildContext context, int index) {
                  return RecipeWidgetContainer(
                    picture: controller.recipesList[index].name,
                    recipeName: controller.recipesList[index].name,
                    rating: controller.recipesList[index].rating,
                    time: controller.recipesList[index].totalTime,
                  );
                },
                separatorBuilder: (BuildContext context, int index) {
                  return SizedBox(
                    height: Const.padding,
                  );
                },
                itemCount: controller.recipesList.length);
            // return
            // const RecipeWidgetContainer();
          },
        ),
      ),
    );
  }
}
