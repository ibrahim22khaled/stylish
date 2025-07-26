import 'package:dio/dio.dart';

class ApiService {
  final Dio _dio;
  ApiService(this._dio);

  final String baseUrl = "https://fakestoreapi.com/";

  Future<List<Map<String, dynamic>>> get({required String endPoint}) async {
    try {
      final response = await _dio.get('$baseUrl$endPoint');
      if (response.data is List) {
        return (response.data as List).cast<Map<String, dynamic>>();
      } else {
        throw Exception('API response is not a list');
      }
    } catch (e) {
      throw Exception('Failed to fetch data from API: $e');
    }
  }
}