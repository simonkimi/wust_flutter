import 'package:flutter/material.dart';
import 'package:wust_life/ui/pages/class_table/child_view/time_table_class.dart';
import 'package:wust_life/ui/pages/class_table/child_view/time_table_header.dart';


/// 构建课程表主体部分
/// 参数:
///   int thisWeek: 第一周的任何一个时间
///   DateTime dateTime: 现在的日期
///   List<ClassEntity> classLists: 所有的课程表
class TimeTableBody extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        TimeTableHeader(),
        TimeTableClass(),
      ],
    );
  }
}
