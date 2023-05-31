import 'package:delivery_app/src/features/domain/entities/error/app_failure_message.dart';
import 'package:delivery_app/src/services/firebase/realtime_database/interfaces/i_real_time_data_base_service.dart';
import 'package:delivery_app/src/utils/Extensions/result.dart';
import 'package:delivery_app/src/features/domain/interfaces/dto/user_dto.dart';
import 'package:delivery_app/src/features/domain/entities/dto/create_user_response_dto.dart';
import 'package:delivery_app/src/base/api_service/failure.dart';

import '../../domain/interfaces/repositories/i_user_repository.dart';

class UserRepository extends IUserRepository {
  final String userCollection = "users/";
  final IRealTimeDataBaseService _realTimeDataBaseService;

  UserRepository(this._realTimeDataBaseService);

  @override
  Future<Result<CreateUserResponseDto, Failure>> createUser(
      {required UserDto user}) async {
    if (user.localId == null) {
      return Result.failure(
          Failure.fromMessage(message: AppFailureMessage.unexperatedError));
    }

    var path = userCollection + user.localId!;

    try {
      final result = await _realTimeDataBaseService.putData(
          body: user.toJson(), path: path);

      var response = CreateUserResponseDto.fromJson(result);

      return Result.success(response);
    } on Failure catch (f) {
      return Result.failure(f);
    }
  }
}
