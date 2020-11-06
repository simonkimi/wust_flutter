import 'package:dio/adapter.dart';
import 'package:dio/dio.dart';
import 'package:wust_life/util/debug.dart';

class Sender {
  static final Sender _sender = Sender._internal();

  final fiddlerProxy = "PROXY 192.168.2.199:8888";
  final localBaseUrl = "http://192.168.2.199:8000";
  final finalUrl = "";

  Dio _dio;
  var isLogin = false;
  var token = "";

  factory Sender() => _sender;

  Sender._internal() {
    // ko no DIO da
    _dio = Dio()
      ..options.connectTimeout = 10000;
    if (isDebugMode()) {
      // 是否使用fiddler
      connectLocalhost("8888").then((value) {
        if (value) {
          (_dio.httpClientAdapter as DefaultHttpClientAdapter)
              .onHttpClientCreate = (client) {
            client.findProxy = (url) => fiddlerProxy;
          };
        }
      });
      connectLocalhost("8000").then((value) {
        _dio.options.baseUrl = value ? localBaseUrl: finalUrl;
      });
    }
  }


  Future<void> fetchToken() async {

  }
}
