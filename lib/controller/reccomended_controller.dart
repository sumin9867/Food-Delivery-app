import 'package:get/get.dart';
import 'package:project2/data/repositary/reccomended_repo.dart';
import 'package:project2/models/prodcut_model.dart';

class RecomendedProductController extends GetxController {
  final RecommendedProductRepo RecomendedProductRepo;
  RecomendedProductController({required this.RecomendedProductRepo});
  List<dynamic> _recommendedProductList = [];
  List<dynamic> get recommendedProductList => _recommendedProductList;
  bool _isLoaded = false;
  bool get isLoaded => _isLoaded;

  Future<void> getRecomendedProductList() async {
    Response response = await RecomendedProductRepo.getRecomendedProductList();
    if (response.statusCode == 200) {
      _recommendedProductList = [];
      _recommendedProductList.addAll(Product.fromJson(response.body).products);
      _isLoaded = true;
      update();
    } else {}
  }
}
