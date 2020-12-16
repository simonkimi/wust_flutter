import 'package:flutter/material.dart';
import 'package:wust_life/ui/themes/theme_helper.dart';
import 'child_view/sign_form.dart';
import 'child_view/welcome.dart';

class LoginPage extends StatelessWidget {
  static String routeName = "login";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(context),
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

  Widget buildAppBar(BuildContext context) {
    return AppBar(
      centerTitle: true,
      elevation: 0,
      backgroundColor: accordingToTheme(
          context, Colors.white, Theme.of(context).primaryColor),
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
