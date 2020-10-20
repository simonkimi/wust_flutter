import 'package:floor/floor.dart';
import 'package:flutter/cupertino.dart';

@entity
class ClassModel {
  @primaryKey
  final int id;
  final String className;
  final String teacher;
  final String classId;
  final String time;
  final String classRoom;

  ClassModel(
    this.id,
    this.className,
    this.teacher,
    this.classId,
    this.time,
    this.classRoom,
  );

  ClassModel.build(
      {this.id,
      @required this.className,
      @required this.teacher,
      @required this.classId,
      @required this.time,
      @required this.classRoom});
}
