import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:dartz/dartz.dart';
import 'package:laza/core/failures/failure.dart';
import 'package:laza/core/failures/firebase_failures.dart';
import 'package:laza/core/failures/general_failures.dart';
import 'package:laza/core/utils/services/remote/storage_service.dart';
import 'package:laza/services/home/data/models/product_model.dart';
import 'package:laza/services/wishlist/data/repos/wishlist_repo.dart';

class WishlistRepoImpl extends WishlistRepo {
  WishlistRepoImpl(this.storageService);

  final StorageService storageService;

  @override
  Future<Either<Failure, List<ProductModel>>> getWishlistProducts() {
    // TODO: implement getWishlistProducts
    throw UnimplementedError();
  }

  @override
  Future<Either<Failure, DocumentReference<ProductModel>>> addProductToWishlist(
      {required ProductModel product}) async {
    try {
      return Right(await storageService.addProductToWishlist(product));
    } on FirebaseException catch (e) {
      return Left(FirebaseFailure(e.message.toString()));
    } catch (e) {
      return Left(GeneralFailures(
          'error while storing document, try again later, ${e.toString()}'));
    }
  }
}
