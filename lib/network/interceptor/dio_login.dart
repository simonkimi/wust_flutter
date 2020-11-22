import 'package:dio/dio.dart';
import 'package:wust_life/network/login_util.dart';


class DioLoginInterceptor extends Interceptor {
  String token = "";
  final Dio dio;

  DioLoginInterceptor(this.dio);

  @override
  Future onRequest(RequestOptions options) async {
    if (token.length != 40 && !options.path.contains("user")) {
      token = await login(dio);
    }
    options.headers['authorization'] = "Token $token";
    return options;
  }
}
