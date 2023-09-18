import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:laza/services/home/data/models/product_model.dart';
import 'package:laza/services/home/data/repos/home_repo.dart';

part 'home_state.dart';

class HomeCubit extends Cubit<HomeState> {
  HomeCubit(this.homeRepo) : super(HomeInitial());

  final HomeRepo homeRepo;

  Future<void> getProducts() async {
    emit(HomeGetProductsLoading());
    var result = await homeRepo.getProducts();
    result.fold((failure) {
      emit(HomeGetProductsFailure(failure.errMessage));
    }, (result) {
      emit(HomeGetProductsSuccess(result));
    });
  }
}
