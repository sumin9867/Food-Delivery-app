import 'package:flutter/material.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:project2/pages/food/popular_food_detail.dart';
import 'package:project2/pages/home/main_FoodPage.dart';
import 'package:project2/widget/recomdedfooddetail.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
        debugShowCheckedModeBanner: false, home: RecomendedFoodDetail());
  }
}
