import 'package:flutter/material.dart';
import 'package:wuster/constants.dart';
import 'package:wuster/pages/class_table/child_view/time_table_left.dart';

class TimeTableClass extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    var classHeight = size.height / 6;
    var classPadding = kPrimaryPadding / 5;
    var classMainHeight = classHeight * 6 + classPadding * 5;

    return Expanded(
      child: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Row(
          children: [
            TimeTableLeft(
              classHeight: classHeight,
              classMainHeight: classMainHeight,
              classPadding: classPadding,
            ),
          ]..addAll(
              List(7).map(
                (e) {
                  return Expanded(
                    flex: kTimeTableRightFlex,
                    child: Container(
                      height: classMainHeight,
                    ),
                  );
                },
              ),
            ),
        ),
      ),
    );
  }
}
