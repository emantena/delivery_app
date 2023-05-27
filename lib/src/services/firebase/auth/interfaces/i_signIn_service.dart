import 'i_base_firebase_service.dart';

abstract class ISignInService extends IBaseFireBaseService {
  String endpoint = IBaseFireBaseService.baseUrl +
      IBaseFireBaseService.signInPath +
      IBaseFireBaseService.apiKey;

  Future<Map<String, dynamic>> signIn({required Map<String, dynamic> body});
}