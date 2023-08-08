import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_instance/get_instance.dart';
import 'package:project2/controller/popular_controller.dart';
import 'package:project2/controller/reccomended_controller.dart';
import 'package:project2/data/api/api_client.dart';
import 'package:project2/data/repositary/popular_product_repo.dart';
import 'package:project2/data/repositary/reccomended_repo.dart';
import 'package:project2/utils/app_constant.dart';

Future<void> init() async {
  Get.lazyPut(() => ApiClient(appBaseUrl: AppConstants.baseUrl));
  Get.lazyPut(() => PopularProductRepo(apiClient: Get.find()));
  Get.lazyPut(() => RecommendedProductRepo(apiClient: Get.find()));
  Get.lazyPut(
      () => RecommendedProductController(recommendedProductRepo: Get.find()));
  Get.lazyPut(() => PopularProductController(popularProductRepo: Get.find()));
}
