import 'package:flutter/material.dart';
import 'package:wuster/constants.dart';
import 'package:wuster/models/entity/class_model.dart';
import 'package:wuster/pages/class_table/child_view/time_table_left.dart';

import 'class_card.dart';

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
            Expanded(
              flex: kTimeTableRightFlex,
              child: Column(
                children: [
                  ClassCard(
                    classPadding: classPadding,
                    classDisplayType: 1,
                    background: Color(0xFFFFFF00),
                    classHeight: classHeight,
                    classModel: ClassModel.build(
                        classId: "1",
                        className: "测试",
                        classRoom: "101",
                        teacher: "测试",
                        time: "10~10",
                        id: 1),
                  ),
                  ClassCard(
                    classPadding: classPadding,
                    classDisplayType: 4,
                    background: Color(0xFFFFFF00),
                    classHeight: classHeight,
                    classModel: ClassModel.build(
                        classId: "1",
                        className: "测试",
                        classRoom: "101",
                        teacher: "测试",
                        time: "10~10",
                        id: 1),
                  ),
                  ClassCard(
                    classPadding: classPadding,
                    classDisplayType: 0,
                    background: Color(0xFFFFFF00),
                    classHeight: classHeight,
                    classModel: ClassModel.build(
                        classId: "1",
                        className: "测试",
                        classRoom: "101",
                        teacher: "测试",
                        time: "10~10",
                        id: 1),
                  ),
                  ClassCard(
                    classPadding: classPadding,
                    classDisplayType: 0,
                    background: Color(0xFFFFFF00),
                    classHeight: classHeight,
                    classModel: ClassModel.build(
                        classId: "1",
                        className: "测试",
                        classRoom: "101",
                        teacher: "测试",
                        time: "10~10",
                        id: 1),
                  ),
                  ClassCard(
                    classPadding: classPadding,
                    classDisplayType: 0,
                    background: Color(0xFFFFFF00),
                    classHeight: classHeight,
                    classModel: ClassModel.build(
                        classId: "1",
                        className: "测试",
                        classRoom: "101",
                        teacher: "测试",
                        time: "10~10",
                        id: 1),
                  ),
                  ClassCard(
                    classPadding: classPadding,
                    classDisplayType: 1,
                    background: Color(0xFFFFFF00),
                    classHeight: classHeight,
                    classModel: ClassModel.build(
                        classId: "1",
                        className: "测试",
                        classRoom: "101",
                        teacher: "测试",
                        time: "10~10",
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
