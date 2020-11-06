import 'package:dio/dio.dart';

bool isDebugMode() {
  bool debugMode = false;
  assert(debugMode = true);
  return debugMode;
}

Future<bool> connectLocalhost(String port) async {
  try {
    Dio dio = Dio()..options.connectTimeout = 100;
    await dio.get("http://192.168.2.199:$port");
    return true;
  } catch (e) {}
  return false;
}