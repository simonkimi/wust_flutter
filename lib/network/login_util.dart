import 'package:wust_life/util/debug.dart';
import 'package:flutter/services.dart';
import 'dart:convert';
import 'package:dio/dio.dart';

import 'bean/login_entity.dart';

Future<String> login(Dio dio) async {
  var defaultUser;
  if (isDebugMode()) {
    // 测试所用用户
    defaultUser =
        (await rootBundle.loadString("assets/keys/user.key")).split("|");
  } else {
    defaultUser = "admin|admin";
  }
  // var username = SpUtil.getString("username", defValue: defaultUser[0]);
  // var password = SpUtil.getString("password", defValue: defaultUser[1]);
  // var response = await dio.post<List<int>>("user/",
  //     data: FormData.fromMap({"username": username, "password": password}),
  //     options: Options(responseType: ResponseType.bytes));
  // return LoginEntity.fromJson(json.decode(String.fromCharCodes(response.data))).token;
  return "";
}
