import 'package:flutter/material.dart';
import 'package:wuster/pages/class_table/class_table.dart';
import 'package:wuster/pages/login/login.dart';
import 'package:wuster/themes/theme_helper.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: '科大恒大楼',
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
