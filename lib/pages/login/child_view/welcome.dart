import 'package:flutter/material.dart';
import 'package:wuster/constants.dart';

class Welcome extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
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
