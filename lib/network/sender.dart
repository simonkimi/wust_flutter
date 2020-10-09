import 'package:dio/dio.dart';

class Sender {
  static final Sender _sender = Sender._internal();

  Dio _dio;
  bool isLogin = false;

  factory Sender() => _sender;

  Sender._internal() {
    this._dio = Dio()
      ..options.baseUrl = "http://bkjx.wust.edu.cn/"
      ..options.headers = {
        "Accept-Encoding": "gzip, deflate",
        "Accept-Language": "zh-CN,zh;q=0.9,en;q=0.8,en-GB;q=0.7,en-US;q=0.6",
        "User-Agent":
            "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.121 Safari/537.36 Edg/85.0.564.70",
        "X-Requested-With": "XMLHttpRequest",
      }
      ..options.connectTimeout = 10000
      ..interceptors.add(LogInterceptor(requestBody: true));
  }

  login(String username, String password) async {
    var flagResponse = await _dio.post("Logon.do?method=logon&flag=sess",
        data: {"method": "logon", "flag": "sess"});

    var loginResponse = await _dio.post("Logon.do?method=logon", data: {
      "userAccount": username,
      "userPassword": "",
      "encoded": encodePassword(flagResponse.data, "$username%%%$password")
    });
    print(loginResponse.isRedirect);
  }

  queryClass(String time) async {
    var data = await _dio
        .post("/jsxsd/framework/main_index_loadkb.jsp", data: {"rq": time});
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
}
