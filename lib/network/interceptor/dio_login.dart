import 'package:dio/dio.dart';

class DioLoginInterceptor extends Interceptor {
  String token;

  @override
  Future onRequest(RequestOptions options) async {
    // TODO 验证是否有Token, 进行登录请求
  }

  @override
  Future onError(DioError err) async {
    if (err.response.statusCode == 401) {
      // TODO 重新进行身份认证
    }
  }
}
