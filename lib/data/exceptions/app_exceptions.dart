class AppExceptions implements Exception {
  final String? message;
  final String? prefix;
  AppExceptions(this.message, this.prefix);

  @override
  String toString() {
    return '$message$prefix';
  }
}

class NoInternetException extends AppExceptions {
  NoInternetException([String? message])
      : super(message, 'No Internet Connection');
}

class UnauthorisedException extends AppExceptions {
  UnauthorisedException([String? message])
      : super(message, 'You dont have the access to this');
}

class RequestTimeoutException extends AppExceptions {
  RequestTimeoutException([String? message])
      : super(message, 'Request Time out');
}

class GeneralException extends AppExceptions {
  GeneralException([String? message]) : super(message, '');
}
