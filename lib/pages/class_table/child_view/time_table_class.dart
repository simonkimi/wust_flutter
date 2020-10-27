import 'package:flutter/material.dart';
import 'package:wuster/components/class_card_empty.dart';
import 'package:wuster/models/entity/class_entity.dart';
import 'package:wuster/pages/class_table/child_view/time_table_left.dart';
import 'package:wuster/themes/theme_helper.dart';
import 'package:wuster/components/class_card.dart';

import 'card_space.dart';

class TimeTableClass extends StatelessWidget {
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
              child: buildTableRow(context, classMainHeight),
            )),
      ),
    );
  }

  Row buildTableRow(BuildContext context, double classMainHeight) {
    print("123123 $classMainHeight");
    return Row(
      children: [
        TimeTableLeft(),
        Expanded(
          flex: kTimeTableRightFlex,
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 1),
            child: Column(
              children: [
                ClassCard(
                  classLength: 1,
                  background: Colors.orange,
                  isShow: true,
                  classEntity: ClassEntity.build(
                      classId: "1",
                      className: "微机原理与应用实验",
                      classRoom: "信息楼208",
                      teacher: "梦之话",
                      startWeek: 1,
                      endWeek: 10,
                      id: 1),
                ),
                ClassCardEmpty(),
                ClassCard(
                  classLength: 1,
                  background: Colors.pink,
                  classEntity: ClassEntity.build(
                      classId: "1",
                      className: "计算机网络及物联网技术",
                      classRoom: "主楼211",
                      teacher: "测试",
                      startWeek: 1,
                      endWeek: 10,
                      id: 1),
                ),
                ClassCardEmpty(),
                ClassCard(
                  classLength: 2,
                  background: Colors.blue,
                  classEntity: ClassEntity.build(
                      classId: "1",
                      className: "金工实习",
                      classRoom: "实验楼101",
                      teacher: "测试",
                      startWeek: 1,
                      endWeek: 10,
                      id: 1),
                ),
              ],
            ),
          ),
        )
      ]..addAll(
          List(6).map(
            (e) {
              return Expanded(
                flex: kTimeTableRightFlex,
                child: Container(
                  height: classMainHeight,
                  padding: EdgeInsets.symmetric(horizontal: 1),
                ),
              );
            },
          ),
        ),
    );
  }

  Widget buildSigleDayColum(List<ClassEntity> classList, DateTime dateTime,
      int todayWeek, double classCardHeight, double classCardPadding) {
    List<Widget> column = [];
    for (var i = 0; i < 6;) {
      var findClass = classList
          .where((v) =>
              v.weekday == dateTime.weekday &&
              v.startWeek <= todayWeek &&
              v.endWeek >= todayWeek &&
              v.startTime == i)
          .toList();
      if (findClass.length != 0) {
        var classEntity = findClass[0];
        i += classEntity.lastTime;
        column.add(ClassCard(
          classLength: 2,
          background: Colors.blue,
          classEntity: classEntity,
        ));
      } else {
        i += 1;
        column.add(ClassCardEmpty());
      }
    }
  }
}
