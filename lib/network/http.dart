import 'package:dio/adapter.dart';
import 'package:dio/dio.dart';
import 'package:wust_life/util/debug.dart';
import 'dart:io';

class Http {
  static final Http _http = Http._internal();

  factory Http() {
    return _http;
  }

  final fiddlerProxy = "PROXY 192.168.2.199:8888";
  final localBaseUrl = "http://192.168.2.199:8000";
  final remoteUrl = "";

  Dio _dio;
  var isLogin = false;
  var token = "";

  Http._internal() {
    // ko no DIO da
    _dio = Dio()..options.connectTimeout = 10000;
  }

  Future<void> initDio() async {
    if (isDebugMode()) {
      // fiddler
      if (await connectLocalhost("8888")) {
        (_dio.httpClientAdapter as DefaultHttpClientAdapter)
            .onHttpClientCreate = (client) {
          client.findProxy = (url) => fiddlerProxy;
        };
      }
      // localhost
      _dio.options.baseUrl =
          await connectLocalhost("8000") ? localBaseUrl : remoteUrl;
    }
  }

  Future<String> get<T>() async {
    var response = await _dio.get<List<int>>("",
        options: Options(responseType: ResponseType.bytes));
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


    return String.fromCharCodes(bytes);
  }
}
