import 'package:wust_life/network/bean/class_table_entity.dart';

classTableEntityFromJson(ClassTableEntity data, Map<String, dynamic> json) {
	if (json['count'] != null) {
		data.count = json['count']?.toInt();
	}
	if (json['next'] != null) {
		data.next = json['next'];
	}
	if (json['previous'] != null) {
		data.previous = json['previous'];
	}
	if (json['results'] != null) {
		data.results = new List<ClassTableResult>();
		(json['results'] as List).forEach((v) {
			data.results.add(new ClassTableResult().fromJson(v));
		});
	}
	return data;
}

Map<String, dynamic> classTableEntityToJson(ClassTableEntity entity) {
	final Map<String, dynamic> data = new Map<String, dynamic>();
	data['count'] = entity.count;
	data['next'] = entity.next;
	data['previous'] = entity.previous;
	if (entity.results != null) {
		data['results'] =  entity.results.map((v) => v.toJson()).toList();
	}
	return data;
}

classTableResultFromJson(ClassTableResult data, Map<String, dynamic> json) {
	if (json['class_base'] != null) {
		data.classBase = new ClassTableResultsClassBase().fromJson(json['class_base']);
	}
	if (json['class_teacher'] != null) {
		data.classTeacher = json['class_teacher']?.toString();
	}
	if (json['class_id'] != null) {
		data.classId = json['class_id']?.toString();
	}
	if (json['class_term'] != null) {
		data.classTerm = json['class_term']?.toString();
	}
	if (json['class_table_time'] != null) {
		data.classTableTime = new List<ClassTableResultsClassTableTime>();
		(json['class_table_time'] as List).forEach((v) {
			data.classTableTime.add(new ClassTableResultsClassTableTime().fromJson(v));
		});
	}
	return data;
}

Map<String, dynamic> classTableResultToJson(ClassTableResult entity) {
	final Map<String, dynamic> data = new Map<String, dynamic>();
	if (entity.classBase != null) {
		data['class_base'] = entity.classBase.toJson();
	}
	data['class_teacher'] = entity.classTeacher;
	data['class_id'] = entity.classId;
	data['class_term'] = entity.classTerm;
	if (entity.classTableTime != null) {
		data['class_table_time'] =  entity.classTableTime.map((v) => v.toJson()).toList();
	}
	return data;
}

classTableResultsClassBaseFromJson(ClassTableResultsClassBase data, Map<String, dynamic> json) {
	if (json['class_index'] != null) {
		data.classIndex = json['class_index']?.toString();
	}
	if (json['class_name'] != null) {
		data.className = json['class_name']?.toString();
	}
	return data;
}

Map<String, dynamic> classTableResultsClassBaseToJson(ClassTableResultsClassBase entity) {
	final Map<String, dynamic> data = new Map<String, dynamic>();
	data['class_index'] = entity.classIndex;
	data['class_name'] = entity.className;
	return data;
}

classTableResultsClassTableTimeFromJson(ClassTableResultsClassTableTime data, Map<String, dynamic> json) {
	if (json['week_day'] != null) {
		data.weekDay = json['week_day']?.toInt();
	}
	if (json['class_room'] != null) {
		data.classRoom = json['class_room']?.toString();
	}
	if (json['class_week'] != null) {
		data.classWeek = json['class_week']?.toString();
	}
	if (json['start_time'] != null) {
		data.startTime = json['start_time']?.toInt();
	}
	if (json['last_time'] != null) {
		data.lastTime = json['last_time']?.toInt();
	}
	return data;
}

Map<String, dynamic> classTableResultsClassTableTimeToJson(ClassTableResultsClassTableTime entity) {
	final Map<String, dynamic> data = new Map<String, dynamic>();
	data['week_day'] = entity.weekDay;
	data['class_room'] = entity.classRoom;
	data['class_week'] = entity.classWeek;
	data['start_time'] = entity.startTime;
	data['last_time'] = entity.lastTime;
	return data;
}