import 'package:delivery_app/src/features/data/repositories/sign_up_repository.dart';
import 'package:delivery_app/src/features/domain/entities/sign_up_model.dart';
import 'package:delivery_app/src/features/domain/interfaces/repositories/i_sign_up_repository.dart';
import 'package:delivery_app/src/utils/Extensions/enum/result_status.dart';
import 'package:delivery_app/src/utils/Extensions/result.dart';
import 'package:delivery_app/src/features/domain/entities/dto/signup_create_dto.dart';
import 'package:delivery_app/src/base/api_service/failure.dart';

import '../interfaces/services/i_sign_up_service_service.dart';

class SignUpServiceService implements ISignUpServiceService {
  final SignUpRepository _signUpRepository;

  SignUpServiceService(this._signUpRepository);

  @override
  Future<Result<SignupCreateDto, Failure>> execute(
      {required SignupCreateDto params}) async {
    var user = await _signUpRepository.signUp(
      model: SignUpModel(
        params.email,
        params.password,
      ),
    );

    

    return params;
  }
}
