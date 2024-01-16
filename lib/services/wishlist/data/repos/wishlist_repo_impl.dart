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
  Future<Either<Failure, List<ProductModel>>> getWishlistProducts() async {
    List<ProductModel> wishlist = [];
    try {
      var result = await storageService.getWishlistProducts();
      for (var element in result.docs) {
        var item = ProductModel.fromJson(element);
        item.inWishlist = true;
        wishlist.add(item);
      }
      return Right(wishlist);
    } on FirebaseException catch (e) {
      return Left(FirebaseFailure(e.message.toString()));
    } catch (e) {
      return Left(GeneralFailures(
          'error while storing document, try again later, ${e.toString()}'));
    }
  }

  @override
  Future<Either<Failure, DocumentReference<ProductModel>>> addProductToWishlist(
      {required ProductModel product}) async {
    try {
      product.inWishlist = true;
      return Right(await storageService.addProductToWishlist(product));
    } on FirebaseException catch (e) {
      return Left(FirebaseFailure(e.message.toString()));
    } catch (e) {
      return Left(GeneralFailures(
          'error while storing document, try again later, ${e.toString()}'));
    }
  }

  @override
  Future<Either<Failure, void>> removeProductFromWishlist(
      {required ProductModel product}) async {
    try {
      product.inWishlist = false;
      return Right(await storageService.removeProductFromWishlist(product));
    } on FirebaseException catch (e) {
      return Left(FirebaseFailure(e.message.toString()));
    } catch (e) {
      return Left(GeneralFailures(
          'error while storing document, try again later, ${e.toString()}'));
    }
  }
}
