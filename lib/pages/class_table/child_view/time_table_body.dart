import 'package:flutter/material.dart';
import 'package:wuster/constants.dart';
import 'package:wuster/pages/class_table/child_view/time_table_left.dart';

class TimeTableBody extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Row(
          children: [
            TimeTableLeft(),
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
