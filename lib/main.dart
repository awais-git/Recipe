import 'package:flutter/material.dart';
import '../view/recipe_page.dart';
import '../utils/consts.dart';

void main() {
  runApp(
    MaterialApp(
      home: RecipePage(),
      theme: ThemeData(
        primarySwatch: Const.kPrimaryColor,
       
      ),
    ),
  );
}
