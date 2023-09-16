import 'package:laza/services/home/data/models/product_model.dart';

abstract class HomeRepo {
  Future<List<ProductModel>> getNewestProducts();
}
