import 'package:dartz/dartz.dart';
import 'package:laza/core/failures/failure.dart';
import 'package:laza/services/home/data/models/product_model.dart';

abstract class WishlistRepo {
  Future<Either<Failure, List<ProductModel>>> getWishlistProducts();

  Future<Either<Failure, void>> addProductToWishlist({
    required ProductModel product,
  });
}
