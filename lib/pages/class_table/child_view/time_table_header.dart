import 'package:flutter/material.dart';
import 'package:wuster/util/date_util.dart';
import 'package:wuster/themes/theme_helper.dart';

class TimeTableHeader extends StatelessWidget {
  final DateTime dateTime;
  final int headerStartWeek;

  TimeTableHeader({Key key, @required this.dateTime, this.headerStartWeek = 1})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: accordingToTheme(context, Colors.white24, Colors.white10),
      height: 50,
      child: Row(
        children: [
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
        ]..addAll(buildTableDate(context, headerStartWeek)),
      ),
    );
  }

  List<Widget> buildTableDate(BuildContext context, startWeekday) {
    var week = ["", "周一", "周二", "周三", "周四", "周五", "周六", "周日"];
    return getThisWeek(this.dateTime, startWeekday)
        .map<Widget>((e) => buildTableDateCell(context, week[e.weekday],
            "${e.month}/${e.day}", isSameDay(e, this.dateTime)))
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
                color:
                    accordingToTheme(context, Colors.white54, Colors.black87),
                borderRadius: BorderRadius.all(Radius.circular(6)),
              )
            : BoxDecoration(),
      ),
    );
  }
}
