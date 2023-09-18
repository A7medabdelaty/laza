import 'package:dio/dio.dart';

import 'failure.dart';

class ApiFailure extends Failure {
  @override
  ApiFailure(super.errMessage);

  factory ApiFailure.fromDioException(DioException dioException) {
    switch (dioException.type) {
      case DioExceptionType.connectionTimeout:
        return ApiFailure('Connection time out!');
      case DioExceptionType.sendTimeout:
        return ApiFailure('Sending time out, try later!');
      case DioExceptionType.receiveTimeout:
        return ApiFailure('Receive timeout, try later!');
      case DioExceptionType.connectionError:
        return ApiFailure('Connection error!');
      case DioExceptionType.badResponse:
        return ApiFailure.fromResponse(
            statusCode: dioException.response!.statusCode!,
            response: dioException.response!.data);
      case DioExceptionType.badCertificate:
        return ApiFailure('Bad request!');
      case DioExceptionType.cancel:
        return ApiFailure('Request was canceled!');
      case DioExceptionType.unknown:
        return ApiFailure('Something went wrong, try later!');
    }
  }

  factory ApiFailure.fromResponse(
      {required int statusCode, required Map<String, dynamic> response}) {
    if (statusCode == 400 || statusCode == 401 || statusCode == 403) {
      return ApiFailure(response['error']['message']);
    } else if (statusCode == 404) {
      return ApiFailure('Not Found');
    } else if (statusCode == 500 || statusCode == 501 || statusCode == 502) {
      return ApiFailure('Internal Server Error');
    } else {
      return ApiFailure('Unexpected exception');
    }
  }
}
