import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import 'package:wuster/network/sender.dart';

mixin _LoginStateMixin<T extends StatefulWidget> on State<T> {
  TextEditingController usernameController =
      TextEditingController(text: "201804134155");
  TextEditingController passwordController =
      TextEditingController(text: "xusong404");

  Sender sender = Sender();

  login() {
    var username = usernameController.text;
    var password = passwordController.text;
    sender.login(username, password);
  }
}

class _LoginState extends State<LoginPage> with _LoginStateMixin {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage("assets/images/l2.png"), fit: BoxFit.fill)),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [buildBody()],
        ),
      ),
    );
  }

  Widget buildBody() {
    return Center(
      child: Container(
        width: 300,
        height: 300,
        child: Card(
          elevation: 8,
          child: Column(
            children: [
              SizedBox(height: 10),
              buildTitle(),
              buildInput(),
              buildLogin()
            ],
          ),
        ),
      ),
    );
  }

  Widget buildInput() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 40),
      child: Column(
        children: [
          TextField(
            decoration: InputDecoration(labelText: "用户名"),
            controller: usernameController,
          ),
          TextField(
            decoration: InputDecoration(labelText: "密码"),
            controller: passwordController,
          )
        ],
      ),
    );
  }

  Widget buildTitle() {
    return Row(
      children: [
        Container(
          decoration: BoxDecoration(color: Color(0xFF124B7D)),
          child: SizedBox(
            width: 8,
            height: 45,
          ),
        ),
        Container(
          margin: EdgeInsets.only(left: 32),
          child: Text(
            "登录",
            style: TextStyle(
              color: Color(0xFF296AA3),
              fontSize: 18,
            ),
          ),
        )
      ],
    );
  }

  Widget buildLogin() {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 40),
      child: OutlinedButton(
        onPressed: () {
          login();
        },
        child: Text("登录"),
      ),
    );
  }
}

class LoginPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _LoginState();
  }
}
