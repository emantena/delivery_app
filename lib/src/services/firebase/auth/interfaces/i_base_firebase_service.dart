import 'package:delivery_app/src/base/api_service/api_service.dart';
import 'package:delivery_app/src/base/api_service/default_api_service.dart';

abstract class IBaseFireBaseService {
  ApiService apiService = DefaultApiService();
  static String baseUrl = "https://identitytoolkit.googleapis.com/v1";
  static String apiKey = "AIzaSyAsnWwJOuDh5gYjGVxUdbcS_BW1DOWxZEA";
  static String signUpPath = "accounts:signUp?key=";
  static String signInPath = "accounts:signInWithPassword?key=";
}




