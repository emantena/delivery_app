import '../../../../base/api_service/failure.dart';
import '../../../../utils/Extensions/result.dart';
import '../../entities/dto/signup_create_dto.dart';
import '../../entities/user_entity.dart';

abstract class ISignUpServiceService {
  Future<Result<UserEntity, Failure>> execute(
      {required SignupCreateDto params});
}
