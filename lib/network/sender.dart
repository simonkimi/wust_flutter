import 'dart:io';

import 'package:cookie_jar/cookie_jar.dart';
import 'package:dio/adapter.dart';
import 'package:dio/dio.dart';
import 'package:dio_cookie_manager/dio_cookie_manager.dart';

class Sender {
  static final Sender _sender = Sender._internal();

  Dio _dio;
  bool isLogin = false;
  CookieJar cookieJar = CookieJar();

  factory Sender() => _sender;

  Sender._internal() {
    _dio = Dio()
      ..options.baseUrl = "http://bkjx.wust.edu.cn/"
      ..options.headers = {
        "Accept-Encoding": "gzip, deflate",
        "Accept-Language": "zh-CN,zh;q=0.9,en;q=0.8,en-GB;q=0.7,en-US;q=0.6",
        "User-Agent":
            "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.121 Safari/537.36 Edg/85.0.564.70",
        "X-Requested-With": "XMLHttpRequest",
      }
      ..options.connectTimeout = 10000
      ..interceptors.add(CookieManager(cookieJar));

    this.isUseFiddler().then((value) {
      if (value) {
        (_dio.httpClientAdapter as DefaultHttpClientAdapter)
            .onHttpClientCreate = (client) {
          client.findProxy = (url) {
            return "PROXY 192.168.2.199:8888";
          };
        };
      }
    });
  }

  login(String username, String password) async {
    await _dio.get("");
    // 第一次登录获取code
    var flagResponse = await _dio.post("Logon.do?method=logon&flag=sess",
        data: {"method": "logon", "flag": "sess"});
    // 第二次登录发送密码
    var response = await _dio.post("Logon.do?method=logon",
        data: {
          "userAccount": username,
          "userPassword": "",
          "encoded": encodePassword(flagResponse.data, "$username%%%$password")
        },
        options: Options(
            contentType: "application/x-www-form-urlencoded",
            validateStatus: (code) => code == 302,
            followRedirects: false));
    // 第三次登录重定向取cookie
    var location = response.headers['location'][0];
    response = await _dio.get(location,
        options: Options(
            validateStatus: (code) => code == 302, followRedirects: false));

    // 第四次登录进入主页
    location = response.headers['location'][0];
    await _dio.get(location);
  }

  queryClass(String time) async {
    var data = await _dio.post("jsxsd/xskb/xskb_list.do?sfFD=1&xnxq01id=2020-2021-1");
    print(data.data);
  }

  /// 编码密码
  String encodePassword(String flag, String code) {
    var scode = flag.split("#")[0];
    var sxh = flag.split("#")[1];

    var encoded = "";
    for (var i = 0; i < code.length; i++) {
      if (i < 20) {
        encoded += code[i] + scode.substring(0, int.parse(sxh[i]));
        scode = scode.substring(int.parse(sxh[i]));
      } else {
        encoded += code.substring(i);
        break;
      }
    }
    return encoded;
  }

  Future<bool> isUseFiddler() async {
    try {
      bool debugMode = false;
      assert(debugMode = true);
      if (debugMode) {
        Dio dio = Dio()..options.connectTimeout = 100;
        await dio.get("http://192.168.2.199:8888");
        return true;
      }
    } catch (e) {}
    return false;
  }
}
