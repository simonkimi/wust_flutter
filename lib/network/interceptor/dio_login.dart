import 'dart:convert';
import 'package:dio/dio.dart';
import 'package:flustars/flustars.dart';
import 'package:wust_life/network/bean/login_entity.dart';
import 'package:flutter/services.dart';
import 'package:wust_life/util/debug.dart';

class DioLoginInterceptor extends Interceptor {
  String token = "";
  final Dio dio;

  DioLoginInterceptor(this.dio);

  @override
  Future onRequest(RequestOptions options) async {
    if (token.length != 32 && !options.path.contains("user")) {
      await login();
    }
    options.headers['authorization'] = "Token $token";
    return options;
  }

  @override
  Future onError(DioError err) async {
    if (err.response?.statusCode == 401) {
      await login();
    }
    return err;
  }

  Future<void> login() async {
    var defaultUser;
    if (isDebugMode()) {
      // 测试所用用户
      defaultUser = (await rootBundle.loadString("assets/keys/user.key")).split("|");
    } else {
      defaultUser = "admin|admin";
    }
    var username = SpUtil.getString("username", defValue: defaultUser[0]);
    var password = SpUtil.getString("password", defValue: defaultUser[1]);
    var response = await dio.post<List<int>>("user",
        data: FormData.fromMap({"username": username, "password": password}),
        options: Options(responseType: ResponseType.bytes));
    token = LoginEntity()
        .fromJson(json.decode(String.fromCharCodes(response.data)))
        .token;
  }
}
