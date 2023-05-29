import 'package:delivery_app/src/base/api_service/failure.dart';
import 'package:delivery_app/src/features/domain/entities/sign_up_model.dart';
import 'package:delivery_app/src/services/firebase/auth/decodables/sign_up_decodable.dart';
import 'package:delivery_app/src/utils/Extensions/result.dart';

abstract class ISignUpRepository {
  Future<Result<SignUpDecodable, Failure>> signUp({
    required SignUpModel model,
  });
}
