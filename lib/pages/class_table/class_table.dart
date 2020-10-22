import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:wuster/constants.dart';

import 'package:wuster/pages/class_table/child_view/time_table_body.dart';

class ClassTimeTablePage extends StatefulWidget {
  static String routeName = "classTimeTable";

  @override
  _ClassTimeTablePageState createState() => _ClassTimeTablePageState();
}

mixin ClassTimeTablePageState<T extends StatefulWidget> on State<T> {
  Size size;
  double classHeight;
  double classPadding;
  double classMainHeight;
  var isTransport = true;

  setTransport() {
    setState(() {
      isTransport = !isTransport;
    });
  }
}

class _ClassTimeTablePageState extends State<ClassTimeTablePage>
    with ClassTimeTablePageState {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: isTransport,
      appBar: AppBar(
        backgroundColor: isTransport ? Colors.black26 : kPrimaryColor,
        elevation: isTransport ? 0 : 4,
        automaticallyImplyLeading: false,
        title: Text(
          "我的课表",
          style: TextStyle(fontSize: 20, color: Colors.white),
        ),
        actions: [
          IconButton(
            icon: Icon(Icons.compare_arrows),
            onPressed: () {
              setTransport();
            },
          ),
        ],
      ),
      body: Container(
        child: buildBody(),
        decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage("assets/images/setu.png"), fit: BoxFit.cover),
        ),
      ),
    );
  }

  /// 构建主体
  Widget buildBody() {
    return SafeArea(child: TimeTableBody());
  }
}
