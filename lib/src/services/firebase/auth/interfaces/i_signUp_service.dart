import 'i_base_firebase_service.dart';

abstract class ISignUpService extends IBaseFireBaseService {
  String endpoint = IBaseFireBaseService.baseUrl +
      IBaseFireBaseService.signUpPath +
      IBaseFireBaseService.apiKey;

  Future<Map<String, dynamic>> signUp({required Map<String, dynamic> body});
}