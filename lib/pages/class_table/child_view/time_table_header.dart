import 'package:flutter/material.dart';
import 'package:wuster/util/date_util.dart';
import 'package:wuster/constants.dart';

class TimeTableHeader extends StatelessWidget {
  final DateTime dateTime;

  TimeTableHeader({Key key, @required this.dateTime}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: kTransportWhite,
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
        ]..addAll(
            getThisWeek(this.dateTime).map((e) => buildTableDate(e[1], e[0]))),
      ),
      margin: EdgeInsets.only(bottom: 2),
    );
  }

  /// 构建表头元素
  Widget buildTableDate(String week, String date) {
    return Expanded(
      flex: kTimeTableRightFlex,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            week,
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
          Text(
            date,
            style: TextStyle(fontSize: 12),
          )
        ],
      ),
    );
  }
}
