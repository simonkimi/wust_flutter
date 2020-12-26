class ClassTableEntity {
  int count;
  dynamic next;
  dynamic previous;
  List<ClassTableResult> results;
}

class ClassTableResult {
  ClassTableResultsClassBase classBase;
  String classTeacher;
  String classId;
  String classTerm;
  List<ClassTableResultsClassTableTime> classTableTime;
}

class ClassTableResultsClassBase {
  String classIndex;
  String className;
}

class ClassTableResultsClassTableTime {
  int weekDay;
  String classRoom;
  String classWeek;
  int startTime;
  int lastTime;
}
