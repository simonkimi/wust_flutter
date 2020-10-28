import 'package:floor/floor.dart';
import 'package:flutter/cupertino.dart';

@entity
class ClassEntity {
  @primaryKey
  final int id;
  final String className; // 课程名称
  final String teacher; // 老师
  final String classId; // 教学班
  final String classRoom; // 班级

  final String week; // 持续周 "1 2 3 4 10 11 12"

  final int weekday; // 星期几
  final int startTime; // 开始时间
  final int lastTime; // 结束时间

  final int color; // 卡片颜色

  ClassEntity(
    this.id,
    this.className,
    this.teacher,
    this.classId,
    this.classRoom,
    this.weekday,
    this.startTime,
    this.lastTime,
    this.color, this.week,
  );

  ClassEntity.build({
    this.id,
    @required this.weekday,
    @required this.className,
    @required this.teacher,
    @required this.classId,
    @required this.week,
    @required this.classRoom,
    @required this.startTime,
    @required this.lastTime,
    @required this.color,
  });
}
