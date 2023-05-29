import 'package:delivery_app/src/base/api_service/failure.dart';

import '../../features/domain/entities/error/firebase_error_message.dart';
import '../../services/firebase/auth/decodables/auth_error_decodable.dart';

class FirebaseFailure extends Failure {
  FirebaseFailure.fromBody({required super.body}) : super.fromBody();

  static getFirebaseAuthErrorMessage({
    required Map<String, dynamic> error,
  }) {
    var errorDecodable = AuthErrorDecodable.fromJson(error);

    var message = "";
    errorDecodable.error?.errors?.forEach((error) {
      message = error.message ?? "";
    });

    switch (message) {
      case "EMAIL_NOT_FOUND":
        return Failure.fromMessage(
            message: FirebaseErrorMessage.emailNotFoundMessage);
      case "INVALID_PASSWORD":
        return Failure.fromMessage(
            message: FirebaseErrorMessage.invalidPasswordMessage);
      case "EMAIL_EXISTS":
        return Failure.fromMessage(
            message: FirebaseErrorMessage.emailExistMessage);
      case "TOO_MANY_ATTEMPTS_TRY_LATER":
        return Failure.fromMessage(
            message: FirebaseErrorMessage.tooManyAttemptsMessage);
      case "INVALID_ID_TOKEN":
        return Failure.fromMessage(
            message: FirebaseErrorMessage.invalidIdTokenMessage);
      case "USER_NOT_FOUND":
        return Failure.fromMessage(
            message: FirebaseErrorMessage.userNotFoundMessage);
      default:
        return Failure.fromMessage(message: message);
    }
  }
}
