import 'package:dio/adapter.dart';
import 'package:dio/dio.dart';
import 'package:wust_life/util/debug.dart';

class Http {
  static final Http _http = Http._internal();

  factory Http() {
    return _http;
  }

  final fiddlerProxy = "PROXY 192.168.2.199:8888";
  final localBaseUrl = "http://192.168.2.199:8000";
  final finalUrl = "";

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
          await connectLocalhost("8000") ? localBaseUrl : finalUrl;
    }
  }



  Future<Response<T>> get<T>() async {
    var response = await _dio.get<T>("test");
    print(response.headers.map);
    return response;
  }
}
