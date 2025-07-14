import 'package:dio/dio.dart';
abstract class Failure {
  final String message;

  Failure(this.message);
}

class ServerFailure extends Failure {
  ServerFailure(super.message);

 factory ServerFailure.fromDioException(DioException e) {
    switch (e.type) {
      case DioExceptionType.connectionTimeout:
        return ServerFailure('Connection timeout. Please check your internet connection.');
      case DioExceptionType.sendTimeout:
        return ServerFailure('Request send timeout. Please try again later.');
      case DioExceptionType.receiveTimeout:
        return ServerFailure('Server response timeout. Please try again later.');
      ////////////////////////////////////////////////////////////////////////////////////
      case DioExceptionType.badResponse:
        return ServerFailure.fromResponse(e.response!.statusCode!, e.response!.data);
        //////////////////////////////////////////////////////////////////////////////////
      case DioExceptionType.cancel:
        return ServerFailure('Request was cancelled. Please try again.');
      case DioExceptionType.connectionError:
        return ServerFailure('Connection error. Please check your network.');
      case DioExceptionType.badCertificate:
        return ServerFailure('Invalid SSL certificate. Please contact support.');
      case DioExceptionType.unknown:
      return ServerFailure('An unexpected error occurred: ${e.message}');
    }
  }
  factory ServerFailure.fromResponse(int? statusCode, dynamic response){
     switch (statusCode) {
      // here we can access the error message from our API about 400,401,403
      /// return ServerFailure(response[][]) that's an example!
      case 400:
        return ServerFailure('Bad request. Please check the provided data.');
      case 401:
        return ServerFailure('Unauthorized. Please log in again.');
      case 403:
        return ServerFailure('Forbidden. You do not have access to this resource.');
      case 404:
        return ServerFailure('Resource not found. Please try again.');
      case 500:
        return ServerFailure('Internal server error. Please try again later.');
      case 502:
        return ServerFailure('Bad gateway. Please try again later.');
      case 503:
        return ServerFailure('Service unavailable. Please try again later.');
      default:
        return ServerFailure('Unexpected server error. Please try again.');
    }
  }
}


