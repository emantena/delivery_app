import 'dart:convert';
import 'dart:io';

import 'package:delivery_app/src/base/api_service/api_service.dart';
import 'package:delivery_app/src/base/api_service/exceptions.dart';
import 'package:http/http.dart' as http;

import 'failure.dart';

class DefaultApiService extends ApiService {
  @override
  Future<Map<String, dynamic>> getRequest({
    required String url,
    Map<String, String>? headers,
  }) async {
    final uri = Uri.parse(url);
    final response = await http.get(uri, headers: headers);

    try {
      if (!response.statusCode.toString().contains('20')) {
        throw Failure.fromBody(body: response.body);
      }

      var jsonData = jsonDecode(response.body);
      return jsonData;
    } on SocketException {
      throw Failure.fromMessage(message: Exceptions.socketExceptionMessage);
    } on HttpException {
      throw Failure.fromMessage(message: Exceptions.httpException);
    } on FormatException {
      throw Failure.fromMessage(message: Exceptions.formatException);
    }
  }

  @override
  Future<Map<String, dynamic>> postRequest({
    required Map<String, dynamic> body,
    required String url,
    Map<String, String>? headers,
  }) async {
    final uri = Uri.parse(url);
    final bodyEncode = json.encode(body);

    final response = await http.post(
      uri,
      headers: headers,
      body: bodyEncode,
    );

    try {
      if (!response.statusCode.toString().contains('20')) {
        throw Failure.fromBody(body: response.body);
      }

      var jsonData = jsonDecode(response.body);
      return jsonData;
    } on SocketException {
      throw Failure.fromMessage(message: Exceptions.socketExceptionMessage);
    } on HttpException {
      throw Failure.fromMessage(message: Exceptions.httpException);
    } on FormatException {
      throw Failure.fromMessage(message: Exceptions.formatException);
    }
  }

  @override
  Future<Map<String, dynamic>> putRequest({
    required Map<String, dynamic> body,
    required String url,
    Map<String, String>? headers,
  }) async {
    final uri = Uri.parse(url);
    final bodyEncode = json.encode(body);
    final response = await http.put(uri, headers: headers, body: bodyEncode);

    try {
      if (!response.statusCode.toString().contains('20')) {
        throw Failure.fromBody(body: response.body);
      }

      var jsonData = jsonDecode(response.body);
      return jsonData;
    } on SocketException {
      throw Failure.fromMessage(message: Exceptions.socketExceptionMessage);
    } on HttpException {
      throw Failure.fromMessage(message: Exceptions.httpException);
    } on FormatException {
      throw Failure.fromMessage(message: Exceptions.formatException);
    }
  }
}
