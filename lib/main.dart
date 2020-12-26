import 'package:flutter/material.dart';
import 'package:wust_life/network/http.dart';
import 'package:wust_life/ui/pages/class_table/class_table.dart';
import 'package:wust_life/ui/pages/login/login.dart';
import 'package:wust_life/ui/themes/theme_helper.dart';
import 'package:wust_life/util/debug.dart';
import 'package:wust_life/util/log_util.dart';

void main() async {
  await Http().initDio();
  LogUtil.init(tag: "WustLife", isDebug: isDebugMode());
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Wust Life',
      theme: primaryTheme,
      darkTheme: darkTheme,
      home: LoginPage(),
      routes: {
        LoginPage.routeName: (context) => LoginPage(),
        ClassTimeTablePage.routeName: (context) => ClassTimeTablePage()
      },
    );
  }
}
