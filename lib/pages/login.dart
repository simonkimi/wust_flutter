import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:wuster/components/default_button.dart';
import 'package:wuster/constants.dart';
import 'package:wuster/pages/class_table.dart';

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
            buildWelcome(),
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

  Widget buildWelcome() {
    return SizedBox(
      width: double.infinity,
      child: Column(
        children: [
          Text(
            "欢迎回来",
            style: TextStyle(
                color: Colors.black, fontSize: 28, fontWeight: FontWeight.bold),
          ),
          Text(
            "请使用新版教务系统学号和密码登录",
            textAlign: TextAlign.center,
            style: TextStyle(color: kTextColor),
          )
        ],
      ),
    );
  }
}

class SignForm extends StatefulWidget {
  SignForm({Key key}) : super(key: key);

  @override
  _SignFormState createState() => _SignFormState();
}

class _SignFormState extends State<SignForm> {
  Size size;

  @override
  Widget build(BuildContext context) {
    size = MediaQuery.of(context).size;
    return Form(
      child: Column(
        children: [
          SizedBox(height: size.height * 0.08),
          buildUsernameField(),
          SizedBox(height: 20),
          buildPasswordField(),
          SizedBox(height: 20),
          SizedBox(height: size.height * 0.08),
          DefaultButton(
            text: "登录",
            onPressed: () {
              Navigator.pushNamed(context, ClassTimeTablePage.routeName);
            },
          )
        ],
      ),
    );
  }

  Widget buildPasswordField() {
    return TextField(
      obscureText: true,
      decoration: InputDecoration(
        labelText: "密码",
        hintText: "请输入新版教务密码",
        floatingLabelBehavior: FloatingLabelBehavior.always,
        contentPadding: EdgeInsets.symmetric(horizontal: 30, vertical: 20),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(20),
          borderSide: BorderSide(color: kTextColor),
          gapPadding: 10,
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(20),
          borderSide: BorderSide(color: kTextColor),
          gapPadding: 10,
        ),
        suffixIcon: Padding(
          padding: const EdgeInsets.all(12),
          child: SvgPicture.asset("assets/icons/password.svg", height: 18),
        ),
      ),
    );
  }

  Widget buildUsernameField() {
    return TextField(
      decoration: InputDecoration(
        labelText: "学号",
        hintText: "请输入新版教务学号",
        floatingLabelBehavior: FloatingLabelBehavior.always,
        contentPadding: EdgeInsets.symmetric(horizontal: 30, vertical: 20),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(20),
          borderSide: BorderSide(color: kTextColor),
          gapPadding: 10,
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(20),
          borderSide: BorderSide(color: kTextColor),
          gapPadding: 10,
        ),
        suffixIcon: Padding(
          padding: const EdgeInsets.all(12),
          child: SvgPicture.asset("assets/icons/idcard.svg", height: 18),
        ),
      ),
    );
  }
}
