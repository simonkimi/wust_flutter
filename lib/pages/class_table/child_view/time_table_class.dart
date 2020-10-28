import 'package:flutter/material.dart';
import 'package:wust_life/components/class_card_empty.dart';
import 'package:wust_life/models/entity/class_entity.dart';
import 'package:wust_life/pages/class_table/child_view/time_table_left.dart';
import 'package:wust_life/themes/theme_helper.dart';
import 'package:wust_life/components/class_card.dart';
import 'package:wust_life/util/date_util.dart';

import 'card_space_widget.dart';

class TimeTableClass extends StatelessWidget {
  final DateTime dateTime;
  final int thisWeek;
  final List<ClassEntity> classLists;

  const TimeTableClass(
      {Key key, @required this.dateTime, this.thisWeek, this.classLists})
      : assert(dateTime != null),
        super(key: key);

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
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

  Row buildTableRow(
      BuildContext context, double classCardHeight, double classCardPadding) {
    return Row(
      children: [
        TimeTableLeft(),
      ]..addAll(getThisWeek(this.dateTime, 1).map(
          (e) => buildSingleDayColumn(
              classLists, e, thisWeek, classCardHeight, classCardPadding),
        )),
    );
  }

  Widget buildSingleDayColumn(List<ClassEntity> classList, DateTime dateTime,
      int todayWeek, double classCardHeight, double classCardPadding) {
    List<Widget> column = [];
    for (var i = 1; i <= 6;) {
      var findClass = classList
          .where((v) =>
              v.weekday == dateTime.weekday &&
              v.week.split(" ").contains(todayWeek.toString()) &&
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
