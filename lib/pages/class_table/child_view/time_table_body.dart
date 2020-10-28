import 'package:flutter/material.dart';
import 'package:wust_life/models/entity/class_entity.dart';
import 'package:wust_life/pages/class_table/child_view/time_table_class.dart';
import 'package:wust_life/pages/class_table/child_view/time_table_header.dart';

class TimeTableBody extends StatelessWidget {
  final int thisWeek;
  final DateTime dateTime;
  final List<ClassEntity> classLists;

  const TimeTableBody({
    Key key,
    @required this.dateTime,
    this.thisWeek = 5,
    this.classLists = const [],
  })  : assert(dateTime != null),
        super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        TimeTableHeader(
          dateTime: DateTime.now(),
          headerStartWeek: 1,
        ),
        TimeTableClass(
          dateTime: this.dateTime,
          thisWeek: thisWeek,
          classLists: classLists,
        ),
      ],
    );
  }
}
