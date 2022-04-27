import 'package:flutter/material.dart';
import 'package:recipie/components/recipe_componet.dart';
import '../utils/consts.dart';

class RecipeWidgetContainer extends StatelessWidget {
  final String recipeName;
  final double rating;
  final String time;
  final String picture;
  const RecipeWidgetContainer({
    required this.recipeName,
    required this.rating,
    required this.time,
    required this.picture,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(
        horizontal: Const.margin,
        vertical: Const.margin / 2,
      ),
      height: 200,
      width: double.infinity,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        image:  DecorationImage(
          image: NetworkImage(
            picture,
          ),
          fit: BoxFit.cover,
        ),
      ),
      child: Stack(
        children: [
           Center(
            child: Text(
             recipeName,
              style: const TextStyle(
                fontSize: 15,
                color: Const.blackColor,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          Positioned(
            bottom: Const.padding,
            left: Const.padding,
            child:  Component(
              icon: Icons.star,
              title: rating.toString(),
            ),
          ),
          Positioned(
            right: Const.padding,
            bottom: Const.padding,
            child:  Component(
              icon: Icons.timer_rounded,
              title: time,
            ),
          ),
        ],
      ),
    );
  }
}
