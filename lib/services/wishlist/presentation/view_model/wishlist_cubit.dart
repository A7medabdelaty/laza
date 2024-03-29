import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:laza/services/home/data/models/product_model.dart';
import 'package:laza/services/wishlist/data/repos/wishlist_repo.dart';

part 'wishlist_state.dart';

class WishlistCubit extends Cubit<WishlistState> {
  WishlistCubit(this.wishlistRepo) : super(WishlistInitial());
  final WishlistRepo wishlistRepo;

  void addProductToWishlist(ProductModel product) async {
    emit(WishlistAddProductLoading());
    var result = await wishlistRepo.addProductToWishlist(product: product);
    result.fold((failure) {
      emit(WishlistAddProductFailure(failure.errMessage));
    }, (success) {
      emit(WishlistAddProductSuccess());
    });
  }

  void removeProductFromWishlist(ProductModel product) async {
    emit(WishlistRemoveProductLoading());
    var result = await wishlistRepo.removeProductFromWishlist(product: product);
    result.fold((failure) {
      emit(WishlistRemoveProductFailure(failure.errMessage));
    }, (result) {
      emit(WishlistRemoveProductSuccess());
      getWishlistProducts();
    });
  }

  List<ProductModel> wishList = [];

  Future<void> getWishlistProducts() async {
    emit(GetWishlistProductsLoading());
    var result = await wishlistRepo.getWishlistProducts();
    result.fold((failure) {
      emit(GetWishlistProductsFailure(failure.errMessage));
    }, (result) {
      wishList = result;
      emit(GetWishlistProductsSuccess());
    });
  }

  void onWishlistIconPressed({required ProductModel product}) {
    if (product.inWishlist ?? false) {
      removeProductFromWishlist(product);
    } else {
      addProductToWishlist(product);
    }
  }
}
