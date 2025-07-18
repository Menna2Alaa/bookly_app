import 'package:dio/dio.dart';

abstract class Failures {
  final String errMessage;

  const Failures({required this.errMessage});
}

class ServerFailure extends Failures {
  ServerFailure({required super.errMessage});

  factory ServerFailure.fromDioException(DioException dioException) {
    switch (dioException.type) {
      case DioExceptionType.connectionTimeout:
        return ServerFailure(errMessage: 'Connection timeout with api server');
      case DioExceptionType.sendTimeout:
        return ServerFailure(errMessage: 'Send timeout with api server');
      case DioExceptionType.receiveTimeout:
        return ServerFailure(errMessage: 'Receive timeout with api server');
      case DioExceptionType.badCertificate:
        return ServerFailure(errMessage: 'badCertificate');
      case DioExceptionType.badResponse:
        return ServerFailure.fromResponse(
          dioException.response!.statusCode!,
          dioException.response!.data,
        );
      case DioExceptionType.cancel:
        return ServerFailure(errMessage: 'Request to api server was canceled');
      case DioExceptionType.connectionError:
        return ServerFailure(errMessage: 'There was an error with connection');
      case DioExceptionType.unknown:
        if (dioException.message?.contains('SocketException') ?? false) {
          return ServerFailure(errMessage: 'No internet connection');
        }
        return ServerFailure(errMessage: 'Unexpected error, Please try again!');
    }
  }

  factory ServerFailure.fromResponse(int statusCode, dynamic response) {
    if (statusCode == 400 || statusCode == 401 || statusCode == 403) {
      return ServerFailure(errMessage: response['error']['message']);
    } else if (statusCode == 404) {
      return ServerFailure(
        errMessage: 'Your request not found, Please try again later!',
      );
    } else if (statusCode == 500) {
      return ServerFailure(
        errMessage: 'Internal server error, Please try again later!',
      );
    } else {
      return ServerFailure(
        errMessage: 'Opps, There was an error, Please try again1',
      );
    }
  }
}
