import 'package:flustars/flustars.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:wust_life/network/http.dart';
import 'package:mockito/mockito.dart';
import 'package:http/http.dart' as http;


class MockNet extends Mock implements http.Client {}


main() async {
  setUpAll((){
    TestWidgetsFlutterBinding.ensureInitialized();
    LogUtil.init(tag: "WustLife", isDebug: true, maxLen: 500);
  });

  test("启动接口", () async {
    var client = MockNet();
    when(client.get("http://192.168.2.1:8000/test/"))
    .thenAnswer((realInvocation) async {
      return http.Response("Hello", 200);
    });
  });


  test("测试本地", () async {
    Http http = Http();
    await http.initDio();
    var data = await http.get("test/");
    print(data);
  });
}