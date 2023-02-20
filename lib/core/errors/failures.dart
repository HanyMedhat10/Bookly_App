import 'package:dio/dio.dart';

abstract class Failure {
  final String errMessage;

  const Failure(this.errMessage);
}

class ServerFailure extends Failure {
  ServerFailure(super.errMessage);
  factory ServerFailure.fromDioError(DioError dioError) {
    switch (dioError.type) {
      case DioErrorType.connectionTimeout:
        return ServerFailure('Connection timeout with ApiServer');
      case DioErrorType.sendTimeout:
        return ServerFailure('Send timeout with ApiServer');
      case DioErrorType.receiveTimeout:
        return ServerFailure('Receive timeout with ApiServer');
      case DioErrorType.badCertificate:
        return ServerFailure('Bad Certificate');
      case DioErrorType.badResponse:
        return ServerFailure.fromRespense(
            dioError.response!.statusCode, dioError.response!.data);
      case DioErrorType.cancel:
        return ServerFailure('Request to ApiServer was cancel');
      case DioErrorType.connectionError:
        if (dioError.message!.contains('SocketException')) {
          return ServerFailure('No Interner Connection');
        } else {
          return ServerFailure('Unexpected Error , please try again');
        }
      case DioErrorType.unknown:
        return ServerFailure('Opps There was an Error, Please try again');
    }
  }
  factory ServerFailure.fromRespense(dynamic statusCode, dynamic response) {
    if (statusCode == 400 || statusCode == 401 || statusCode == 402) {
      return ServerFailure(response['error']['message']);
    } else if (statusCode == 404) {
      return ServerFailure('Your request not found, Please try later!');
    } else if (statusCode == 500) {
      return ServerFailure('Internal SErver error , Please try later');
    } else {
      return ServerFailure('Opps There was an Error, Please try again');
    }
  }
}
