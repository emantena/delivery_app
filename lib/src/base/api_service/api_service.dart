abstract class ApiService {
  Future<Map<String, dynamic>> postRequest({
    required Map<String, dynamic> body,
    required String url,
    Map<String, String>? headers,
  });

  Future<Map<String, dynamic>> putRequest({
    required Map<String, dynamic> body,
    required String url,
    Map<String, String>? headers,
  });

  Future<Map<String, dynamic>> getRequest({
    required String url,
    Map<String, String>? headers,
  });
}
