import 'i_base_real_time_database_service.dart';

abstract class IRealTimeDataBaseService extends IBaseRealTimeDatabaseService {
  Future<Map<String, dynamic>> postData({
    required Map<String, dynamic> body,
    required String path,
  });

  Future<Map<String, dynamic>> putData({
    required Map<String, dynamic> body,
    required String path,
  });

  Future<Map<String, dynamic>> getData({
    required String path,
  });
}
