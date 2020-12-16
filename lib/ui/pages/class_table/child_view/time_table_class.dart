import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:wust_life/models/entity/class_entity.dart';
import 'package:wust_life/ui/components/class_card.dart';
import 'package:wust_life/ui/components/class_card_empty.dart';
import 'package:wust_life/ui/pages/class_table/child_view/time_table_left.dart';
import 'package:wust_life/ui/themes/theme_helper.dart';
import 'package:wust_life/util/date_util.dart';
import 'package:wust_life/ui/pages/class_table/state/class_store.dart';

import 'card_space_widget.dart';


class TimeTableClass extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery
        .of(context)
        .size;
    var classCardHeight = size.height / 6;
    var classCardPadding = kPrimaryPadding / 5;
    var classMainHeight = classCardHeight * 6 + classCardPadding * 5;

    return Expanded(
      child: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Container(
          margin: EdgeInsets.only(top: 5),
          child: InheritedClassSpaceWidget(
            classCardHeight: classCardHeight,
            classCardPadding: classCardPadding,
            classMainHeight: classMainHeight,
            child: buildTableRow(context, classCardHeight, classCardPadding),
          ),
        ),
      ),
    );
  }

  Widget buildTableRow(BuildContext context, double classCardHeight,
      double classCardPadding) {
    return Observer(builder: (_) {
      return Row(
        children: [
          TimeTableLeft(),
        ]
          ..addAll(
              getThisWeek(classStore.displayWeekDate, classStore.startWeekDay)
                  .map(
                    (todayDate) =>
                    buildSingleDayColumn(
                        classStore.classList, todayDate, classCardHeight,
                        classCardPadding),
              )),
      );
    });
  }

  /// 构建一天的列
  /// classList: 课程列表
  /// dateTime
  Widget buildSingleDayColumn(List<ClassEntity> classList,
      DateTime thisWeekDate,
      double classCardHeight, double classCardPadding) {
    List<Widget> column = [];
    for (var i = 1; i <= 6;) {
      var findClass = classList
          .where((v) =>
      v.weekday == thisWeekDate.weekday &&
          v.week.split(" ").contains(classStore.displayWeek) &&
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
