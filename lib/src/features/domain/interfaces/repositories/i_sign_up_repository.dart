import 'package:delivery_app/src/base/api_service/failure.dart';
import 'package:delivery_app/src/features/domain/entities/sign_up_model.dart';
import 'package:delivery_app/src/services/firebase/auth/decodables/sign_in_decodable.dart';
import 'package:delivery_app/src/utils/Extensions/result.dart';

abstract class ISignUpRepository {
  Future<Result<SignInDecodable, Failure>> signUp({
    required SignUpModel model,
  });
}
