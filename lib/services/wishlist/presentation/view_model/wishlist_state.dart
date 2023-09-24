part of 'wishlist_cubit.dart';

abstract class WishlistState {}

class WishlistInitial extends WishlistState {}

class WishlistAddProductLoading extends WishlistState {}

class WishlistAddProductSuccess extends WishlistState {}

class WishlistAddProductFailure extends WishlistState {
  final String errMessage;

  WishlistAddProductFailure(this.errMessage);
}

class GetWishlistProductsLoading extends WishlistState {}

class GetWishlistProductsSuccess extends WishlistState {}

class GetWishlistProductsFailure extends WishlistState {
  final String errMessage;

  GetWishlistProductsFailure(this.errMessage);
}
