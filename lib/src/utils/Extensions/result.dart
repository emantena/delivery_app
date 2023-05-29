import 'enum/result_status.dart';

class Result<T, E> {
  final T? value;
  final E? error;
  final ResultStatus status;

  Result(this.status, this.value, this.error);

  Result.success(this.value)
      : status = ResultStatus.success,
        error = null;

  Result.failure(this.error)
      : status = ResultStatus.error,
        value = null;
}
