import 'package:laza/core/utils/services/api_service.dart';
import 'package:laza/services/home/data/models/product_model.dart';
import 'package:laza/services/home/data/repos/home_repo.dart';

class HomeRepoImpl extends HomeRepo {
  final ApiService apiService;

  HomeRepoImpl(this.apiService);

  @override
  Future<List<ProductModel>> getNewestProducts() async{
    List<ProductModel> products = [];
    var result =
        await apiService.get(endPoint: '/products', queryParams: {'categoryId': 1});
    products.add(ProductModel.fromJson(result));
    return products;
  }
}
