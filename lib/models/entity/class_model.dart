import 'package:floor/floor.dart';

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
}


