import 'package:dio/dio.dart';
import 'package:crypto/crypto.dart';
import 'dart:convert';

import 'package:wust_life/util/date_util.dart';


class DioSecureInterceptor extends Interceptor {
  final String key;

  DioSecureInterceptor(this.key);

  @override
  Future onRequest(RequestOptions options) async {
    int timeStamp = currentTimeMillis() ~/ 1000;
    var sign = md5.convert(utf8.encode("$key$timeStamp")).toString();
    options.headers['timestamp'] = timeStamp.toString();
    options.headers['sign'] = sign;
    return options;
  }
}