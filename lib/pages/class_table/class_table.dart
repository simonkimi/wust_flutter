import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:wuster/models/entity/class_entity.dart';
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
                  fit: BoxFit.cover,
                ),
              )
            : BoxDecoration(),
      ),
    );
  }

  /// 构建主体
  Widget buildBody() {
    return SafeArea(
      child: TimeTableBody(
        dateTime: DateTime.now(),
        thisWeek: 1,
        classLists: [
          ClassEntity.build(
            className: "电力电子技术",
            weekday: 1,
            teacher: "郑秀娟",
            classId: "教学班0513",
            startWeek: 1,
            endWeek: 4,
            classRoom: "主楼411",
            startTime: 1,
            lastTime: 1,
          ),
          ClassEntity.build(
            className: "电力电子技术",
            weekday: 3,
            teacher: "郑秀娟",
            classId: "教学班0513",
            startWeek: 1,
            endWeek: 4,
            classRoom: "主楼211",
            startTime: 1,
            lastTime: 1,
          ),
          ClassEntity.build(
            className: "微机原理与应用",
            weekday: 2,
            teacher: "蒋峥",
            classId: "教学班0503",
            startWeek: 1,
            endWeek: 4,
            classRoom: "主楼311",
            startTime: 2,
            lastTime: 1,
          ),
          ClassEntity.build(
            className: "微机原理与应用",
            weekday: 4,
            teacher: "蒋峥",
            classId: "教学班0503",
            startWeek: 1,
            endWeek: 4,
            classRoom: "主楼311",
            startTime: 2,
            lastTime: 1,
          ),
          ClassEntity.build(
            className: "自动控制原理",
            weekday: 1,
            teacher: "柴利",
            classId: "教学班0508",
            startWeek: 1,
            endWeek: 4,
            classRoom: "主楼312",
            startTime: 3,
            lastTime: 1,
          ),
          ClassEntity.build(
            className: "自动控制原理",
            weekday: 3,
            teacher: "柴利",
            classId: "教学班0508",
            startWeek: 1,
            endWeek: 4,
            classRoom: "主楼213",
            startTime: 3,
            lastTime: 1,
          ),
        ],
      ),
    );
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
