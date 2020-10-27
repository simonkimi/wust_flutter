import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:wuster/pages/class_table/child_view/time_table_body.dart';

class ClassTimeTablePage extends StatefulWidget {
  static String routeName = "classTimeTable";

  @override
  _ClassTimeTablePageState createState() => _ClassTimeTablePageState();
}

mixin ClassTimeTablePageState<T extends StatefulWidget> on State<T> {
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
                  child: buildPopupMenuItem(
                      context, "refresh", Icons.refresh, "刷新课表")),
              PopupMenuItem(
                  child: buildPopupMenuItem(
                      context, "selectTerm", Icons.wysiwyg, "选择学期")),
              PopupMenuItem(
                  child: buildPopupMenuItem(
                      context, "setThisWeek", Icons.settings, "修改本周时间")),
              PopupMenuItem(
                  child: buildPopupMenuItem(
                      context, "setTheme", Icons.color_lens, "设置主题")),
            ],
            onSelected: (String data) {},
          ),
        ],
      ),
      body: Container(
        child: buildBody(),
        decoration: Theme.of(context).brightness == Brightness.light
            ? BoxDecoration(
                image: DecorationImage(
                    image: AssetImage("assets/images/setu.png"),
                    fit: BoxFit.cover),
              )
            : BoxDecoration(),
      ),
    );
  }

  /// 构建主体
  Widget buildBody() {
    return SafeArea(child: TimeTableBody());
  }

  Widget buildPopupMenuItem(
      BuildContext context, String id, IconData iconData, String text) {
    return Row(
      children: [
        Padding(
          padding: EdgeInsets.only(right: 10),
          child: Icon(iconData, color: Theme.of(context).accentColor),
        ),
        Text(text)
      ],
    );
  }
}
