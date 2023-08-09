import 'package:get/get.dart';
import 'package:get/get_navigation/src/root/parse_route.dart';
import 'package:project2/pages/food/popular_food_detail.dart';
import 'package:project2/pages/food/recomdedfooddetail.dart';
import 'package:project2/pages/home/main_FoodPage.dart';

class RouteHelper {
  static const String splash = '/splash-page';
  static const String initial = '/';
  static const String popularFood = '/popular-food';
  static const String recommendedFood = '/recommended-food';
  static String getPopularFood(int pageId) => "$popularFood?pageId=$pageId";
  static String getRecommendedFood(int pageId) =>
      "$recommendedFood?pageId=$pageId";
  static String getInitial() => "$initial";

  static List<GetPage> routes = [
    GetPage(name: "/", page: () => MainFoodPage()),
    GetPage(
        name: popularFood,
        page: () {
          var pageId = Get.parameters["pageId"];

          return FoodDetail(pageId: int.parse(pageId!));
        },
        transition: Transition.circularReveal),
    GetPage(
      name: recommendedFood,
      page: () {
        var pageId = Get.parameters["pageId"];
        return RecomendedFoodDetail(pageId: int.parse(pageId!));
      },
    )
  ];
}
