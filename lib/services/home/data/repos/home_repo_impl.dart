import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:laza/core/failures/api_failures.dart';
import 'package:laza/core/failures/failure.dart';
import 'package:laza/core/failures/general_failures.dart';
import 'package:laza/core/utils/services/api_service.dart';
import 'package:laza/services/home/data/models/product_model.dart';
import 'package:laza/services/home/data/repos/home_repo.dart';

class HomeRepoImpl extends HomeRepo {
  final ApiService apiService;

  HomeRepoImpl(this.apiService);

  @override
  Future<Either<Failure, List<ProductModel>>> getProducts() async {
    List<ProductModel> products = [];
    try {
      List results = await apiService.get(endPoint: '/products');
      for (var element in results) {
        products.add(ProductModel.fromJson(element));
      }
    } on DioException catch (dioException) {
      return Left(ApiFailure.fromDioException(dioException));
    } catch (exception) {
      return Left(GeneralFailures(
          'Something went wrong, try again later, code ${exception.toString()}'));
    }
    return Right(products);
  }
}
