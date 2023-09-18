part of 'home_cubit.dart';

abstract class HomeState {}

class HomeInitial extends HomeState {}

class HomeGetProductsLoading extends HomeState {}

class HomeGetProductsSuccess extends HomeState {
  final List<ProductModel> products;

  HomeGetProductsSuccess(this.products);
}

class HomeGetProductsFailure extends HomeState {
  final String errMessage;

  HomeGetProductsFailure(this.errMessage);
}
