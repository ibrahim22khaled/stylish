import 'package:dio/dio.dart';

class ApiService {
  final Dio _dio;
  ApiService(this._dio);

  final baseUrl= "https://fakestoreapi.com";
  Future<Map<String,dynamic>> get({required String endPoint}) async{
   var response = await _dio.get('$baseUrl$endPoint');
   return response.data;
  }

}