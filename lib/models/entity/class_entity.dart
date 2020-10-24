import 'package:floor/floor.dart';
import 'package:flutter/cupertino.dart';

@entity
class ClassEntity {
  @primaryKey
  final int id;
  final String className;
  final String teacher;
  final String classId;
  final String classRoom;

  final int startWeek;
  final int endWeek;
  final int week;
  final int startTime;
  final int lastTime;

  ClassEntity(
    this.id,
    this.className,
    this.teacher,
    this.classId,
    this.classRoom,
    this.startWeek,
    this.endWeek,
    this.week,
    this.startTime,
    this.lastTime,
  );

  ClassEntity.build({
    this.id,
    @required this.week,
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
