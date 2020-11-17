import 'package:wust_life/generated/json/base/json_convert_content.dart';
import 'package:wust_life/generated/json/base/json_field.dart';

class ClassTableEntity with JsonConvert<ClassTableEntity> {
	int count;
	dynamic next;
	dynamic previous;
	List<ClassTableResult> results;
}

class ClassTableResult with JsonConvert<ClassTableResult> {
	@JSONField(name: "class_base")
	ClassTableResultsClassBase classBase;
	@JSONField(name: "class_teacher")
	String classTeacher;
	@JSONField(name: "class_id")
	String classId;
	@JSONField(name: "class_term")
	String classTerm;
	@JSONField(name: "class_table_time")
	List<ClassTableResultsClassTableTime> classTableTime;
}

class ClassTableResultsClassBase with JsonConvert<ClassTableResultsClassBase> {
	@JSONField(name: "class_index")
	String classIndex;
	@JSONField(name: "class_name")
	String className;
}

class ClassTableResultsClassTableTime with JsonConvert<ClassTableResultsClassTableTime> {
	@JSONField(name: "week_day")
	int weekDay;
	@JSONField(name: "class_room")
	String classRoom;
	@JSONField(name: "class_week")
	String classWeek;
	@JSONField(name: "start_time")
	int startTime;
	@JSONField(name: "last_time")
	int lastTime;
}
