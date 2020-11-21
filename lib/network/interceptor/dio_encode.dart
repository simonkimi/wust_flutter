import 'dart:io';
import 'package:dio/dio.dart';

class DioEncodeInterceptor extends Interceptor {
  @override
  Future onResponse(Response response) async {
    var encode = (response.headers.map["encode"] ?? [""])[0];
    var crypto = encode.split(",");
    var bytes = response.data;
    if (crypto.contains("zlib")) {
      var zlib = ZLibCodec();
      bytes = zlib.decode(response.data);
    }
    if (crypto.contains("gzip")) {
      var gzip = GZipCodec();
      bytes = gzip.decode(response.data);
    }
    response.data = bytes;
    return response;
  }

  @override
  Future onRequest(RequestOptions options) async {
    return options;
  }
}
