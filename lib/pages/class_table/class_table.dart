import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:wuster/constants.dart';
import 'package:wuster/pages/class_table/child_view/time_table_class.dart';
import 'child_view/time_table_body.dart';
import 'child_view/time_table_header.dart';

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
  var isTransport = false;

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
        backgroundColor: isTransport ? Colors.transparent : kPrimaryColor,
        automaticallyImplyLeading: false,
        actions: [
          IconButton(
              icon: Icon(Icons.picture_as_pdf),
              onPressed: () {
                setTransport();
              })
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
