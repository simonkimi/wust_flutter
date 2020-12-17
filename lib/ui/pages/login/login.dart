import 'package:flutter/material.dart';
import 'package:wust_life/ui/pages/class_table/class_table.dart';

class LoginPage extends StatelessWidget {
  static String routeName = "login";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            decoration: BoxDecoration(color: Theme.of(context).primaryColor),
            child: Center(
              child: Container(
                width: 270,
                height: 300,
                child: Card(
                  elevation: 5,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(Radius.circular(10)),
                  ),
                  child: Padding(
                    padding: EdgeInsets.all(20),
                    child: Column(
                      children: [
                        Text(
                          "欢迎回来",
                          style: TextStyle(
                              color: Theme.of(context).primaryColor,
                              fontWeight: FontWeight.bold,
                              fontSize: 18),
                        ),
                        Expanded(
                          child: Container(
                            height: double.infinity,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                TextField(
                                  decoration: InputDecoration(labelText: "用户名"),
                                ),
                                TextField(
                                  decoration: InputDecoration(labelText: "密码"),
                                ),
                              ],
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 25,
                        ),
                        FlatButton(
                          onPressed: () {
                            Navigator.pushNamed(
                                context, ClassTimeTablePage.routeName);
                          },
                          child: Text("登录"),
                          minWidth: double.infinity,
                          color: Theme.of(context).primaryColor,
                          textColor: Colors.white,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.all(Radius.circular(3)),
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ),
          Align(
            child: TextButton(
              onPressed: () {},
              child: Text(
                "用户协议",
                style: TextStyle(
                  color: Colors.white,
                  decoration: TextDecoration.underline,
                ),
              ),
            ),
            alignment: Alignment.bottomCenter,
          )
        ],
      ),
    );
  }
}
