import 'package:delivery_app/src/base/api_service/api_service.dart';
import 'package:delivery_app/src/base/api_service/default_api_service.dart';
import 'package:delivery_app/src/base/api_service/failure.dart';

import 'interfaces/i_real_time_data_base_service.dart';

class RealTimeDataBaseService extends IRealTimeDataBaseService {
  final ApiService _apiService;

  RealTimeDataBaseService({ApiService? apiService})
      : _apiService = apiService ?? DefaultApiService();

  @override
  Future<Map<String, dynamic>> getData({required String path}) async {
    var endpoint = baseUrl + path + endUrl;
    try {
      final result = await _apiService.getRequest(url: endpoint);
      return result;
    } on Failure catch (f) {
      return f.error;
    }
  }

  @override
  Future<Map<String, dynamic>> postData({
    required Map<String, dynamic> body,
    required String path,
  }) async {
    var endpoint = baseUrl + path + endUrl;
    try {
      final result = await _apiService.postRequest(body: body, url: endpoint);
      return result;
    } on Failure catch (f) {
      return f.error;
    }
  }

  @override
  Future<Map<String, dynamic>> putData({
    required Map<String, dynamic> body,
    required String path,
  }) async {
    var endpoint = baseUrl + path + endUrl;
    try {
      final result = await _apiService.putRequest(body: body, url: endpoint);
      return result;
    } on Failure catch (f) {
      return f.error;
    }
  }
}
