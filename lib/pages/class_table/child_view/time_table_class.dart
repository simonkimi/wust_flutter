import 'package:flutter/material.dart';
import 'package:wuster/components/class_card_empty.dart';
import 'package:wuster/constants.dart';
import 'package:wuster/models/entity/class_entity.dart';
import 'package:wuster/pages/class_table/child_view/time_table_left.dart';

import '../../../components/class_card.dart';

class TimeTableClass extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    var classCardHeight = size.height / 5;
    var classCardPadding = kPrimaryPadding / 5;
    var classMainHeight = classCardHeight * 6 + classCardPadding * 5;

    return Expanded(
      child: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Row(
          children: [
            TimeTableLeft(
              classCardHeight: classCardHeight,
              classMainHeight: classMainHeight,
              classCardPadding: classCardPadding,
            ),
            Expanded(
              flex: kTimeTableRightFlex,
              child: Column(
                children: [
                  ClassCard(
                    classCardPadding: classCardPadding,
                    classLength: 1,
                    background: Colors.orange,
                    classCardHeight: classCardHeight,
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
                  ClassCardEmpty(
                    classCardHeight: classCardHeight,
                    classCardPadding: classCardPadding,
                  ),
                  ClassCard(
                    classCardPadding: classCardPadding,
                    classLength: 1,
                    background: Colors.pink,
                    classCardHeight: classCardHeight,
                    classEntity: ClassEntity.build(
                        classId: "1",
                        className: "计算机网络及物联网技术",
                        classRoom: "主楼211",
                        teacher: "测试",
                        startWeek: 1,
                        endWeek: 10,
                        id: 1),
                  ),
                  ClassCardEmpty(
                    classCardHeight: classCardHeight,
                    classCardPadding: classCardPadding,
                  ),
                  ClassCard(
                    classCardPadding: classCardPadding,
                    classLength: 2,
                    background: Colors.blue,
                    classCardHeight: classCardHeight,
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
            )
          ]..addAll(
              List(6).map(
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
