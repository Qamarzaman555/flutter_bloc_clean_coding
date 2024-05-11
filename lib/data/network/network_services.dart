import 'dart:async';
import 'dart:convert';
import 'dart:io';

import 'package:http/http.dart' as http;

import '../exceptions/app_exceptions.dart';
import 'base_api_services.dart';

class NetworkServicesApi implements BaseApiServices {
  @override
  Future<dynamic> getApi(String url) async {
    dynamic jsonResponse;
    try {
      final response =
          await http.get(Uri.parse(url)).timeout(const Duration(seconds: 10));
      jsonResponse = returnResponse(response);
      if (response.statusCode == 200) {}
    } on SocketException {
      throw NoInternetException('');
    } on TimeoutException {
      throw GeneralException('Time out try again');
    } catch (e) {
      return e;
    }

    return jsonResponse;
  }

  @override
  Future<dynamic> postApi(String url, var data) async {
    dynamic jsonResponse;
    try {
      final response = await http
          .post(Uri.parse(url), body: data)
          .timeout(const Duration(seconds: 10));
      jsonResponse = returnResponse(response);
      if (response.statusCode == 200) {}
    } on SocketException {
      throw NoInternetException('');
    } on TimeoutException {
      throw GeneralException('Time out try again');
    } catch (e) {
      return e;
    }

    return jsonResponse;
  }

  @override
  Future<dynamic> deleteApi(String url) async {
    dynamic jsonResponse;
    try {
      final response = await http
          .delete(Uri.parse(url))
          .timeout(const Duration(seconds: 10));
      jsonResponse = returnResponse(response);
      if (response.statusCode == 200) {}
    } on SocketException {
      throw NoInternetException('');
    } on TimeoutException {
      throw GeneralException('Time out try again');
    } catch (e) {
      return e;
    }

    return jsonResponse;
  }

  dynamic returnResponse(response) {
    switch (response) {
      case 200:
        dynamic jsonResponse = jsonDecode(response.body);
        return jsonResponse;
      case 400:
        dynamic jsonResponse = jsonDecode(response.body);
        return jsonResponse;
      case 401:
        throw UnauthorisedException();
      case 500:
        throw GeneralException(
            'Error communicating wiht server${response.statusCode}');
      default:
        throw GeneralException('Something went wrong');
    }
  }
}
