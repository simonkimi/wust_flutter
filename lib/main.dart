import 'package:flustars/flustars.dart';
import 'package:flutter/material.dart';
import 'package:wust_life/pages/class_table/class_table.dart';
import 'package:wust_life/pages/login/login.dart';
import 'package:wust_life/themes/theme_helper.dart';

void main() {
  LogUtil.init(tag: "WustLife", isDebug: true);
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
