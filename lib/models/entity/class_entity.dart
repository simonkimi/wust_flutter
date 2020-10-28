import 'package:floor/floor.dart';
import 'package:flutter/cupertino.dart';

@entity
class ClassEntity {
  @primaryKey
  final int id;
  final String className;  // 课程名称
  final String teacher;  // 老师
  final String classId;  // 教学班
  final String classRoom;  // 班级

  final int startWeek;  // 开始周
  final int endWeek;  // 结束周
  final int weekday;  // 星期几
  final int startTime;  // 开始时间
  final int lastTime;  // 结束时间

  ClassEntity(
    this.id,
    this.className,
    this.teacher,
    this.classId,
    this.classRoom,
    this.startWeek,
    this.endWeek,
    this.weekday,
    this.startTime,
    this.lastTime,
  );

  ClassEntity.build({
    this.id,
    @required this.weekday,
    @required this.className,
    @required this.teacher,
    @required this.classId,
    @required this.startWeek,
    @required this.endWeek,
    @required this.classRoom,
    @required this.startTime,
    @required this.lastTime,
  });
}
