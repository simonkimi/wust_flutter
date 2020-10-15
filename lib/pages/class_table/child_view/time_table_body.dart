import 'package:flutter/material.dart';
import 'package:wuster/pages/class_table/child_view/time_table_class.dart';
import 'package:wuster/pages/class_table/child_view/time_table_header.dart';

class TimeTableBody extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        TimeTableHeader(dateTime: DateTime.now()),
        SizedBox(height: 2),
        TimeTableClass(),
      ],
    );
  }
}
