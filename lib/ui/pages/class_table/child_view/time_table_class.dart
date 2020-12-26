import 'package:flutter/material.dart';
import 'package:wust_life/models/entity/class_entity.dart';
import 'package:wust_life/ui/pages/class_table/child_view/time_table_left.dart';
import 'package:wust_life/ui/themes/theme_helper.dart';
import 'package:wust_life/util/date_util.dart';
import 'package:wust_life/ui/pages/class_table/state/class_store.dart';

import 'class_card.dart';
import 'class_card_empty.dart';



class TimeTableClass extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;

    var classCardHeight = size.height / 6;
    var classCardPadding = kPrimaryPadding / 5;

    classStore.setCardDisplay(classCardHeight, classCardPadding);


    return Expanded(
      child: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Container(
          margin: EdgeInsets.only(top: 5),
          child: buildTableRow(context, classCardHeight, classCardPadding),
        ),
      ),
    );
  }

  Widget buildTableRow(
      BuildContext context, double classCardHeight, double classCardPadding) {
    var timeTableRight =
        getThisWeek(classStore.displayWeekDate, classStore.startWeekDay).map(
            (todayDate) => buildSingleDayColumn(classStore.classList, todayDate,
                classCardHeight, classCardPadding));

    return Row(
      children: [TimeTableLeft(), ...timeTableRight],
    );
  }

  /// 构建一天的列
  /// classList: 课程列表
  /// dateTime
  Widget buildSingleDayColumn(List<ClassEntity> classList,
      DateTime thisWeekDate, double classCardHeight, double classCardPadding) {
    List<Widget> column = [];
    for (var i = 1; i <= 6;) {
      var findClass = classList
          .where((v) =>
              v.weekday == thisWeekDate.weekday &&
              v.week.split(" ").contains(classStore.displayWeek.toString()) &&
              v.startTime == i)
          .toList();
      if (findClass.length != 0) {
        var classEntity = findClass[0];
        i += classEntity.lastTime;
        column.add(ClassCard(
          classLength: classEntity.lastTime,
          background: Color(classEntity.color),
          classEntity: classEntity,
        ));
      } else {
        i += 1;
        column.add(ClassCardEmpty());
      }
    }
    return Expanded(
      flex: kTimeTableRightFlex,
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 1),
        child: Column(
          children: column,
        ),
      ),
    );
  }
}
