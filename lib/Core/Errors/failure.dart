// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:dio/dio.dart';

abstract class Failure {}

class ServerFailure extends Failure {
  final String errorMessage;
  ServerFailure(this.errorMessage);

  factory ServerFailure.fromDioError(DioException dioException) {
    switch (dioException.type) {
      case DioExceptionType.connectionTimeout:
        return ServerFailure('Connection timeout with ApiServer');
      case DioExceptionType.sendTimeout:
        return ServerFailure('Send timeout with ApiServer');
      case DioExceptionType.receiveTimeout:
        return ServerFailure('Recive timeout with ApiServer');
      case DioExceptionType.badCertificate:
        return ServerFailure('Bad Certificate');

      case DioExceptionType.badResponse:
        return ServerFailure.fromResponse(dioException.response!.statusCode!, dioException.response!.data);
      case DioExceptionType.cancel:
        return ServerFailure('Request to ApiServer was canceled');
      case DioExceptionType.connectionError:
        return ServerFailure('Connection error, Please check your internet connection and try again');
      case DioExceptionType.unknown:
        if (dioException.message!.contains('SocketExeption')) {
          return ServerFailure('Internet connection error');
        }
        return ServerFailure('Unexpexted error , please try again');
    }
  }

  factory ServerFailure.fromResponse(int statusCode, dynamic response) {
    if (statusCode == 400 || statusCode == 401 || statusCode == 403) {
      return ServerFailure(response['error']['message']);
    } else if (statusCode == 404) {
      return ServerFailure('Your request not found, Please try  later!');
    } else if (statusCode == 500) {
      return ServerFailure('Internal Server error, Please try  later!');
    } else {
      return ServerFailure('Opps There was an Error, Please try again');
    }
  }
}
