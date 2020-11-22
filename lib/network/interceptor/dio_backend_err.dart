import 'dart:convert';

import 'package:dio/dio.dart';

class DioBackendErrInterceptor extends Interceptor {
  @override
  Future onError(DioError err) async {
    // 400 Bad Request
    // if (err.response?.statusCode == 400) {
    //   var errMsg = "";
    //   Map<String, List<String>> errData = json.decode(err.response.data);
    //   errData.forEach((_, value) => errMsg += value[0]);
    //   err.error = errMsg;
    // }
    return err;
  }
}
