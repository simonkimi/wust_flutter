import 'package:flutter/material.dart';
import 'package:wust_life/ui/pages/class_table/state/class_store.dart';
import 'package:wust_life/ui/themes/theme_helper.dart';
import 'package:wust_life/util/date_util.dart';

/// 构建课程表的表头部分
/// 参数:
///   DateTime dateTime: 这一周的随便一天
///   int headerStartWeek: 一周起始时间
class TimeTableHeader extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: byBrightness(context, Colors.white24, Colors.white10),
      height: 50,
      child: Row(children: [
        Expanded(
          flex: kTimeTableLeftFlex,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(
                Icons.calendar_today_outlined,
                size: 16,
              )
            ],
          ),
        ),
        ...buildTableDate(context)
      ]),
    );
  }

  List<Widget> buildTableDate(BuildContext context) {
    var week = ["", "周一", "周二", "周三", "周四", "周五", "周六", "周日"];
    return getThisWeek(classStore.displayWeekDate, classStore.startWeekDay)
        .map<Widget>((e) => buildTableDateCell(context, week[e.weekday],
            "${e.month}/${e.day}", isSameDay(e, DateTime.now())))
        .toList();
  }

  /// 构建表头元素
  Widget buildTableDateCell(
      BuildContext context, String week, String date, bool isHighLight) {
    return Expanded(
      flex: kTimeTableRightFlex,
      child: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              week,
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 13),
            ),
            Text(
              date,
              style: TextStyle(fontSize: 12),
            )
          ],
        ),
        margin: EdgeInsets.all(3),
        decoration: isHighLight
            ? BoxDecoration(
                color: byBrightness(context, Colors.white54, Colors.black87),
                borderRadius: BorderRadius.all(Radius.circular(6)),
              )
            : BoxDecoration(),
      ),
    );
  }
}
