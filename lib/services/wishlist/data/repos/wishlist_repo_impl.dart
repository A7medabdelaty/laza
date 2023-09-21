import 'package:dartz/dartz.dart';
import 'package:laza/core/failures/failure.dart';
import 'package:laza/services/home/data/models/product_model.dart';
import 'package:laza/services/wishlist/data/repos/wishlist_repo.dart';

class WishlistRepoImpl extends WishlistRepo{
  @override
  Future<Either<Failure, List<ProductModel>>> getWishlistProducts() {
    // TODO: implement getWishlistProducts
    throw UnimplementedError();
  }

  @override
  Future<Either<Failure, void>> addProductToWishlist({required ProductModel product}) {
    // TODO: implement addProductToWishlist
    throw UnimplementedError();
  }

}