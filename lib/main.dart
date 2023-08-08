import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:project2/controller/popular_controller.dart';
import 'package:project2/controller/reccomended_controller.dart';
import 'package:project2/pages/food/recomdedfooddetail.dart';
import 'package:project2/pages/home/main_FoodPage.dart';
import 'package:project2/routes/route_helper.dart';
import 'helper/dependencies.dart' as dep;

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await dep.init();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    Get.find<PopularProductController>().getPopularProductList();
    Get.find<RecommendedProductController>().getRecomendedProductList();
    return GetMaterialApp(
        debugShowCheckedModeBanner: false,
        initialRoute: RouteHelper.initial,
        getPages: RouteHelper.routes,
        home: MainFoodPage());
  }
}
