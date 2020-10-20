import 'package:flutter/material.dart';
import 'package:wuster/util/widget_util.dart';
import 'package:wuster/constants.dart';

class TimeTableLeft extends StatelessWidget {
  final double classMainHeight;
  final double classCardHeight;
  final double classCardPadding;

  const TimeTableLeft(
      {Key key,
      @required this.classMainHeight,
      @required this.classCardHeight,
      @required this.classCardPadding})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: kTimeTableLeftFlex,
      child: Column(
        children: buildLeftTimeList("qs"),
      ),
    );
  }

  /// 构建左边时间单位
  Container buildLeftTime(String startTime, String endTime) {
    var textStyle = TextStyle(fontSize: 10);
    return Container(
      height: classCardHeight,
      width: double.infinity,
      color: kTransportWhite,
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

  List<Widget> buildLeftTimeList(String schoolState) {
    return createDivider(
      kClassTimeRange[schoolState]
          .map((e) => buildLeftTime(e[0], e[1]))
          .toList(),
      SizedBox(
        height: classCardPadding,
      ),
    );
  }
}
