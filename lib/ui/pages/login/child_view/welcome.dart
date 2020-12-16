import 'package:flutter/material.dart';

class Welcome extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Column(
        children: [
          Text("欢迎回来", style: Theme.of(context).textTheme.headline1),
          Text(
            "请使用新版教务系统学号和密码登录",
            textAlign: TextAlign.center,
            style: Theme.of(context).textTheme.subtitle1,
          )
        ],
      ),
    );
  }
}
