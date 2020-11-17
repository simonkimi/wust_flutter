import 'package:dio/dio.dart';
import 'package:flustars/flustars.dart';
import 'package:crypto/crypto.dart';
import 'dart:convert';


class DioSecureInterceptor extends Interceptor {
  final String key;

  DioSecureInterceptor(this.key);

  @override
  Future onRequest(RequestOptions options) async {
    int timeStamp = DateUtil.getNowDateMs() ~/ 1000;
    var sign = md5.convert(utf8.encode("$key$timeStamp")).toString();
    options.headers['timestamp'] = timeStamp.toString();
    options.headers['sign'] = sign;
    return options;
  }
}