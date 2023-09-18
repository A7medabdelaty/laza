import 'package:dartz/dartz.dart';
import 'package:laza/core/failures/failure.dart';
import 'package:laza/services/home/data/models/product_model.dart';

abstract class HomeRepo {
  Future<Either<Failure, List<ProductModel>>> getProducts();
}
