import 'package:flutter/material.dart';
import 'package:wuster/constants.dart';
import 'package:wuster/pages/login/child_view/welcome.dart';
import 'child_view/sign_form.dart';

class LoginPage extends StatelessWidget {
  static String routeName = "login";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(),
      body: buildBody(),
    );
  }

  Widget buildBody() {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          children: [
            Welcome(),
            SignForm(),
          ],
        ),
      ),
    );
  }

  Widget buildAppBar() {
    return AppBar(
      centerTitle: true,
      backgroundColor: Colors.white,
      elevation: 0,
      title: Text(
        "登录",
        style: TextStyle(
          fontSize: 18,
          color: Color(0xFF8B8B8B),
        ),
      ),
    );
  }
}


