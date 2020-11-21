import 'package:dio/dio.dart';
import 'package:flustars/flustars.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:wust_life/network/http.dart';
import 'package:wust_life/util/debug.dart';


main() async {
  setUpAll((){
    TestWidgetsFlutterBinding.ensureInitialized();
    LogUtil.init(tag: "WustLife", isDebug: true, maxLen: 500);
  });

  test("测试本地", () async {
    // var usingFiddler = await connectLocalhost("8888");
    // print("${usingFiddler ? "使用": "不使用"}Fiddler");
    Dio dio = Dio();
    await dio.get("http://192.168.2.158:8888/");
  });


  // test("测试网络", () async {
  //   Http http = Http();
  //   await http.initDio();
  //   var data = await http.get("test");
  //   print(data);
  // });
}