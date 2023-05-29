import '../../../../base/api_service/failure.dart';
import '../../../../utils/Extensions/result.dart';
import '../../entities/dto/signup_create_dto.dart';

abstract class ISignUpServiceService {
  Future<Result<SignupCreateDto, Failure>> execute(
      {required SignupCreateDto params});
}
