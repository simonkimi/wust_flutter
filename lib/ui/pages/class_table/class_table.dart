import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:wust_life/models/helper/class_helper.dart';
import 'package:wust_life/test/test_table_data.dart';
import 'package:wust_life/ui/components/popup_menu.dart';
import 'package:wust_life/ui/pages/class_table/state/class_store.dart';

import 'child_view/time_table_body.dart';


class ClassTimeTablePage extends StatelessWidget {
  static String routeName = "classTimeTable";
  final store = classStore;

  @override
  Widget build(BuildContext context) {
    // 初始化数据
    classStore.setClassList(parseClassFromHtml(classTableHtml));


    return Scaffold(
      extendBodyBehindAppBar: store.transportTheme,
      appBar: buildAppBar(context),
      body: buildBody(context),
    );
  }

  Container buildBody(BuildContext context) {
    return Container(
      child: SafeArea(
        child: TimeTableBody(),
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

  Widget buildAppBar(BuildContext context) {
    return AppBar(
      backgroundColor:
      classStore.transportTheme ? Colors.black26 : Theme.of(context).primaryColor,
      elevation: classStore.transportTheme ? 0 : 4,
      automaticallyImplyLeading: false,
      title: Text(
        "我的课表",
        style: TextStyle(fontSize: 20, color: Colors.white),
      ),
      actions: [
        IconButton(
          icon: Icon(Icons.compare_arrows),
          onPressed: () {
            classStore.setTransport(!classStore.transportTheme);
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
