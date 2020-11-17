import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:wust_life/components/popup_menu.dart';
import 'package:wust_life/models/entity/class_entity.dart';
import 'package:wust_life/pages/class_table/child_view/time_table_body.dart';
import 'package:wust_life/models/helper/class_helper.dart';
import 'package:wust_life/test/test_table_data.dart';

class ClassTimeTablePage extends StatefulWidget {
  static String routeName = "classTimeTable";

  @override
  _ClassTimeTablePageState createState() => _ClassTimeTablePageState();
}

mixin ClassTimeTablePageState<T extends StatefulWidget> on State<T> {
  var isTransport = true;

  List<ClassEntity> classList = [];
  int thisWeek = 0;
  int displayWeek = 0;

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
      appBar: buildAppBar(context),
      body: buildBody(context),
    );
  }

  Container buildBody(BuildContext context) {
    return Container(
      child: SafeArea(
        child: TimeTableBody(
          dateTime: DateTime.now(),
          thisWeek: 5,
          classLists: parseClassFromHtml(classTableHtml),
        ),
      ),
      decoration: Theme.of(context).brightness == Brightness.light
          ? BoxDecoration(
              image: DecorationImage(
                image: AssetImage("assets/images/setu.png"),
                fit: BoxFit.cover,
              ),
            )
          : BoxDecoration(),
    );
  }

  AppBar buildAppBar(BuildContext context) {
    return AppBar(
      backgroundColor:
          isTransport ? Colors.black26 : Theme.of(context).primaryColor,
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
        PopupMenuButton(
          itemBuilder: (BuildContext context) => <PopupMenuItem<String>>[
            PopupMenuItem(
                child: PopupIconMenu("refresh", Icons.refresh, "刷新课表")),
            PopupMenuItem(
                child: PopupIconMenu("selectTerm", Icons.wysiwyg, "选择学期")),
            PopupMenuItem(
                child: PopupIconMenu("setThisWeek", Icons.settings, "修改本周时间")),
            PopupMenuItem(
                child: PopupIconMenu("setTheme", Icons.color_lens, "设置主题")),
          ],
          onSelected: (String data) {},
        ),
      ],
    );
  }
}
