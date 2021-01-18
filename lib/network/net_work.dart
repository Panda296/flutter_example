import 'package:dio/dio.dart';

import 'net_config.dart';

class net_work {
  static BaseOptions base_options = BaseOptions(
      baseUrl: HOST, connectTimeout: TIME_OUT, receiveTimeout: TIME_OUT);
  static final dio = Dio(base_options);

  static Future reques(String url, {String method = "get", Map params}) async {
    final options = Options(method: method);
    try {
      final result =
          await dio.request(url, queryParameters: params, options: options);
      print('get result');
      return result;
    } on DioError catch (e) {
      throw e;
    }
  }

  uploadFile() {}
}
