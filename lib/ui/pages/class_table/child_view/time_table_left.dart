import 'package:flutter/material.dart';
import 'package:wust_life/ui/pages/class_table/state/class_store.dart' show classStore;
import 'package:wust_life/ui/themes/theme_helper.dart';
import 'package:wust_life/util/widget_util.dart';
import 'package:wust_life/constants.dart';



/// 构建课程表左边时间表的事件
class TimeTableLeft extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: kTimeTableLeftFlex,
      child: Column(
        children: buildLeftTimeList(context, "qs"),
      ),
    );
  }

  /// 构建左边时间单位
  Container buildLeftTime(BuildContext context, String startTime, String endTime) {
    var textStyle = TextStyle(fontSize: 10);
    return Container(
      height: classStore.classCardHeight,
      width: double.infinity,
      color: byBrightness(context, Colors.white24, Colors.white10),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Column(
            children: [
              Text(startTime, style: textStyle),
              SizedBox(height: 20),
              Text("|", style: textStyle),
              SizedBox(height: 20),
              Text(endTime, style: textStyle),
            ],
          ),
        ],
      ),
    );
  }

  List<Widget> buildLeftTimeList(BuildContext context, String schoolState) {
    return createDivider(
      kClassTimeRange[schoolState]
          .map((e) => buildLeftTime(context, e[0], e[1]))
          .toList(),
      SizedBox(
        height: classStore.classCardPadding,
      ),
    );
  }
}
