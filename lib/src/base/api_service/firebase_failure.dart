import 'package:delivery_app/src/base/api_service/failure.dart';

import '../../services/firebase/auth/decodables/auth_error_decodable.dart';

class FirebaseFailure extends Failure {
  static String emailNotFoundMessage =
      "There is no user record corresponding to this identifier. The user may have been deleted.";
  static String invalidPasswordMessage =
      "The password is invalid or the user does not have a password.";
  static String emailExistMessage =
      "La dirección de correo electrónico ya está siendo utilizada por otra cuenta.";
  static String tooManyAttemptsMessage =
      "Hemos bloqueado todas las solicitudes de este dispositivo debido a una actividad inusual. Vuelve a intentarlo más tarde.";
  static String invalidIdTokenMessage =
      "La credencial del usuario ya no es válida. El usuario debe iniciar sesión nuevamente.";
  static String userNotFoundMessage =
      "No hay ningún registro de usuario que corresponda a este identificador. Es posible que se haya eliminado al usuario.";

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
        return Failure.fromMessage(message: emailNotFoundMessage);
      case "INVALID_PASSWORD":
        return Failure.fromMessage(message: invalidPasswordMessage);
      case "EMAIL_EXISTS":
        return Failure.fromMessage(message: emailExistMessage);
      case "TOO_MANY_ATTEMPTS_TRY_LATER":
        return Failure.fromMessage(message: tooManyAttemptsMessage);
      case "INVALID_ID_TOKEN":
        return Failure.fromMessage(message: invalidIdTokenMessage);
      case "USER_NOT_FOUND":
        return Failure.fromMessage(message: userNotFoundMessage);
      default:
        return Failure.fromMessage(message: message);
    }
  }
}
