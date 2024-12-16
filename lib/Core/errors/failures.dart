import 'package:dio/dio.dart';

abstract class Failures {
  final String errorMessage;
  const Failures(this.errorMessage);
}

class ServerFailure extends Failures {
  ServerFailure(super.errorMessage);

  factory ServerFailure.fromDioError(DioException dioError) {
    switch (dioError.type) {
      case DioExceptionType.connectionTimeout:
        return ServerFailure("Connection Time Out");
      case DioExceptionType.sendTimeout:
        return ServerFailure("Send Time Out");
      case DioExceptionType.receiveTimeout:
        return ServerFailure("Receive Time Out");
      case DioExceptionType.badCertificate:
        return ServerFailure("Bad certificates");
      case DioExceptionType.badResponse:
        return ServerFailure.fromResponse(
          dioError.response!.statusCode!,
          dioError.response,
        );
      case DioExceptionType.cancel:
        return ServerFailure("Canceled");
      case DioExceptionType.connectionError:
        return ServerFailure("Connection Error");
      case DioExceptionType.unknown:
        if (dioError.message!.contains("SocketException")) {
          return ServerFailure("No Internet Connection");
        }
        return ServerFailure("Something went wrong , please try again");
    }
  }

  factory ServerFailure.fromResponse(int statusCode, dynamic response) {
    if (statusCode == 400 || statusCode == 401 || statusCode == 403) {
      return ServerFailure(response['error']['message']);
    } else if (statusCode == 404) {
      return ServerFailure("Not Found :/ , Please try again later");
    } else if (statusCode == 500) {
      return ServerFailure(
          "Internal Server Error(working on it) , Please try again Later");
    } else {
      return ServerFailure("oops Something went wrong please try again ");
    }
  }
}
