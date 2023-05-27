import 'interfaces/i_signUp_service.dart';

class SignUpService extends ISignUpService {
  @override
  Future<Map<String, dynamic>> signUp({
    required Map<String, dynamic> body,
  }) {
    return apiService.postRequest(body: body, url: endpoint);
  }
}
