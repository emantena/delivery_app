import 'package:delivery_app/src/base/api_service/failure.dart';
import 'package:delivery_app/src/features/domain/entities/dto/create_user_response_dto.dart';
import 'package:delivery_app/src/features/domain/interfaces/dto/user_dto.dart';

import '../../../../utils/Extensions/result.dart';

abstract class IUserRepository {
  Future<Result<CreateUserResponseDto, Failure>> createUser(
      {required UserDto user});
}
