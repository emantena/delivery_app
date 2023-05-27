import 'interfaces/i_signIn_service.dart';

class SignInService extends ISignInService {
  @override
  Future<Map<String, dynamic>> signIn({
    required Map<String, dynamic> body,
  }) {
    return apiService.postRequest(body: body, url: endpoint);
  }
}
