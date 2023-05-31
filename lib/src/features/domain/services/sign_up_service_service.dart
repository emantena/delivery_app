import 'package:delivery_app/src/features/domain/entities/sign_up_model.dart';
import 'package:delivery_app/src/utils/Extensions/enum/result_status.dart';
import 'package:delivery_app/src/utils/Extensions/result.dart';
import 'package:delivery_app/src/features/domain/entities/dto/signup_create_dto.dart';
import 'package:delivery_app/src/base/api_service/failure.dart';

import '../entities/error/app_failure_message.dart';
import '../entities/user_entity.dart';
import '../interfaces/repositories/i_sign_up_repository.dart';
import '../interfaces/services/i_sign_up_service_service.dart';

class SignUpServiceService extends ISignUpServiceService {
  final ISignUpRepository _signUpRepository;

  SignUpServiceService(this._signUpRepository);

  @override
  Future<Result<UserEntity, Failure>> execute(
      {required SignupCreateDto params}) async {
    var result = await _signUpRepository.signUp(
      model: SignUpModel(
        email: params.email,
        password: params.password,
      ),
    );

    if (result.value == null) {
      return Result.failure(
        Failure.fromMessage(
          message: AppFailureMessage.unexperatedError,
        ),
      );
    }

    if (result.status == ResultStatus.error) {
      return Result.failure(result.error);
    }

    var entity = UserEntity.fromJson(result.value!.toJson());

    return Result.success(entity);
  }
}
