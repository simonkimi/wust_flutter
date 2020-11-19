import 'package:dio/adapter.dart';
import 'package:dio/dio.dart';
import 'package:wust_life/util/debug.dart';
import 'package:flutter/services.dart' show rootBundle;
import 'interceptor/dio_backend_err.dart';
import 'interceptor/dio_crypto.dart';
import 'interceptor/dio_encode.dart';
import 'interceptor/dio_logger.dart';
import 'interceptor/dio_login.dart';

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
    _dio = Dio()
      ..options.connectTimeout = 10000
      ..options.baseUrl = remoteUrl
      ..interceptors.add(DioEncodeInterceptor())
      ..interceptors.add(DioBackendErrInterceptor())
      ..interceptors.add(DioLoggerInterceptor())
      ..interceptors.add(DioLoginInterceptor(_dio));

    rootBundle
        .loadString('assets/keys/secret.key')
        .then((value) => _dio.interceptors.add(DioSecureInterceptor(value)));
    initDioDebug();
  }

  initDioDebug() async {
    if (isDebugMode()) {
      // fiddler
      if (await connectLocalhost("8888")) {
        (_dio.httpClientAdapter as DefaultHttpClientAdapter)
            .onHttpClientCreate = (client) {
          client.findProxy = (url) => fiddlerProxy;
        };
      }
      // localhost
      if (await connectLocalhost("8000")) {
        _dio.options.baseUrl = localBaseUrl;
      }
    }
  }

  Future<String> get(path) async {
    var response = await _dio.get<List<int>>(path,
        options: Options(responseType: ResponseType.bytes));
    return String.fromCharCodes(response.data);
  }

  Future<String> post(String path, dynamic data) async {
    var response = await _dio.post<List<int>>(path,
        data: data, options: Options(responseType: ResponseType.bytes));
    return String.fromCharCodes(response.data);
  }
}
