import 'package:dio/dio.dart';

import '../constants.dart';

bool isDebugMode() {
  bool debugMode = false;
  assert(debugMode = true);
  return debugMode;
}

Future<bool> connectLocalhost(String port) async {
  try {
    Dio dio = Dio()..options.connectTimeout = 100;
    await dio.get("http://$localHost:$port");
    return true;
  } catch (e) {}
  return false;
}