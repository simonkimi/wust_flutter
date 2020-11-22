import 'package:dio/adapter.dart';
import 'package:dio/dio.dart';
import 'package:wust_life/util/debug.dart';
import 'package:flutter/services.dart' show rootBundle;
import '../constants.dart';
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

  final fiddlerProxy = "PROXY $localHost:8888";
  final localBaseUrl = "http://$localHost:8000/";
  final remoteUrl = "http://$localHost:8000/";

  Dio _dio;
  var isLogin = false;
  var token = "";

  Http._internal();

  initDio() async {
    // ko no DIO da
    _dio = Dio()
      ..options.connectTimeout = 10000
      ..options.baseUrl = remoteUrl
      ..interceptors.add(DioEncodeInterceptor())
      ..interceptors.add(DioBackendErrInterceptor())
      ..interceptors.add(DioLoggerInterceptor());

    _dio.interceptors.add(DioLoginInterceptor(_dio));
    _dio.interceptors.add(DioSecureInterceptor(
        await rootBundle.loadString('assets/keys/secret.key')));
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
