import 'package:delivery_app/src/base/api_service/failure.dart';
import 'package:delivery_app/src/base/api_service/firebase_failure.dart';
import 'package:delivery_app/src/features/domain/entities/sign_up_model.dart';
import 'package:delivery_app/src/services/firebase/auth/decodables/sign_in_decodable.dart';
import 'package:delivery_app/src/services/firebase/auth/decodables/sign_up_decodable.dart';
import 'package:delivery_app/src/services/firebase/auth/interfaces/i_signUp_service.dart';
import 'package:delivery_app/src/services/firebase/auth/sign_up_service.dart';
import 'package:delivery_app/src/utils/Extensions/result.dart';

import '../../domain/interfaces/repositories/i_sign_up_repository.dart';

class SignUpRepository implements ISignUpRepository {
  final ISignUpService _signUpService;

  SignUpRepository({ISignUpService? signUpService})
      : _signUpService = signUpService ?? SignUpService();

  @override
  Future<Result<SignInDecodable, Failure>> signUp({
    required SignUpModel model,
  }) async {
    final result = await _signUpService.signUp(body: model.toMap());
    var decodable = SignUpDecodable.fromJson(result);
    return Result.success(decodable);
  }

  // @override
  // Future<Result<SignUpDecodable, Failure>> signUp({
  //   required SignUpModel model,
  // }) async {
  //   try {
  //     final result = await _signUpService.signUp(body: model.toMap());
  //     var decodable = SignUpDecodable.fromJson(result);
  //     return Result.success(decodable);
  //   } on Failure catch (f) {
  //     return Result.failure(FirebaseFailure.getFirebaseAuthErrorMessage(error: f.error));
  //   }
  // }
}
