import 'package:flutter/material.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:project2/pages/food/recomdedfooddetail.dart';
import 'package:project2/pages/home/main_FoodPage.dart';
<<<<<<< HEAD
import 'helper/dependencies.dart' as dep;
=======
>>>>>>> 2496d9711bc54c6d504865d10ab174788406d4c0

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
    return GetMaterialApp(
        debugShowCheckedModeBanner: false, home: MainFoodPage());
  }
}
