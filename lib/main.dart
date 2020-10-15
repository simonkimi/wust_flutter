import 'package:flutter/material.dart';
import 'file:///E:/Android-Project/project/wuster/lib/pages/class_table/class_table.dart';
import 'file:///E:/Android-Project/project/wuster/lib/pages/login/login.dart';
import 'package:wuster/constants.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Wust',
      theme: ThemeData(
        primaryColor: kPrimaryColor,
        scaffoldBackgroundColor: Colors.white,
      ),
      home: LoginPage(),
      routes: {
        LoginPage.routeName: (context) => LoginPage(),
        ClassTimeTablePage.routeName: (context) => ClassTimeTablePage()
      },
    );
  }
}
