import 'package:dio/dio.dart';

class ApiService {
  ApiService(this._dio);

  final String _baseUrl = 'https://api.escuelajs.co/api/v1';
  final Dio _dio;

  Future<List<dynamic>> get(
      {required String endPoint, Map<String, dynamic>? queryParams}) async {
    var response = await _dio.get(
      _baseUrl + endPoint,
      queryParameters: queryParams,
    );
    return response.data;
  }
}
