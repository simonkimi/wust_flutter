import 'package:flutter/material.dart';
import 'package:html/parser.dart' as htmlParse;
import 'package:wust_life/models/entity/class_entity.dart';
import 'package:wust_life/util/list_util.dart';

List<ClassEntity> parseClassFromHtml(String html) {
  // 解析课表
  var document = htmlParse.parse(html);
  var classListRaw = document
      .getElementsByClassName("kbcontent")
      .where((element) => element.classes.length == 1)
      .map((e) => e.innerHtml.split("---------------------<br>"));

  var timeWeek = 1;

  // 定义颜色
  var colorsIndex = 0;
  Map<String, int> colorsStore = {};
  var colors = randomList([
    Colors.red[700].value,
    Colors.pink[400].value,
    Colors.orange.value,
    Colors.green.value,
    Colors.cyan.value,
    Colors.blueAccent.value,
    Colors.indigo[600].value,
    Colors.purple.value,
  ]);

  List<ClassEntity> result = [];

  classListRaw.forEach((singleTimeCell) {
    // 解析时间表格细胞, 每个细胞包含多节课
    singleTimeCell.forEach((singleClass) {
      // 解析单节课

      // 解析标签, 生成书籍
      var classTag = htmlParse.parse(singleClass);
      var fontTag = classTag.getElementsByTagName("font");
      if (fontTag.isEmpty) {
        return;
      }
      Map<String, String> tagMap = {};
      fontTag.forEach((tag) {
        tagMap[tag.attributes["title"]] = tag.innerHtml;
      });
      // {老师: 郑秀娟, 课堂名称: 教学班0513, 周次(节次): 1-4,6-9(周)[01-02节], 教室: 主楼211}
      var className = classTag.body.firstChild.text;
      var classTimeRaw = tagMap["周次(节次)"];
      var classWeek =
          classTimeRaw.substring(0, classTimeRaw.indexOf("(周)"));
      var classId = tagMap["课堂名称"] ?? "未命名";
      var classTeacher = tagMap["老师"] ?? "";
      var classRoom = tagMap["教室"] ?? "";

      // 解析节数
      var classTime = classTimeRaw
          .substring(
              classTimeRaw.indexOf("[") + 1, classTimeRaw.indexOf("]") - 1)
          .split("-");
      var timeStartTime = ((int.parse(classTime[0]) + 1) / 2).round();
      var timeLastTime =
          (((int.parse(classTime[classTime.length - 1]) - int.parse(classTime[0])) + 1) / 2)
              .round();

      // 解析颜色
      int classColor;
      if (colorsStore.containsKey("$className$classTeacher")) {
        classColor = colorsStore["$className$classTeacher"];
      } else {
        classColor = colors[colorsIndex];
        colorsStore["$className$classTeacher"] = classColor;
        colorsIndex += 1;
        if (colorsIndex >= colors.length) {
          colorsIndex = 0;
        }
      }
      // 加入数据库
      result.add(
        ClassEntity.build(
          weekday: timeWeek,
          className: className,
          teacher: classTeacher,
          classId: classId,
          week: parseWeek(classWeek),
          classRoom: classRoom,
          startTime: timeStartTime,
          lastTime: timeLastTime,
          color: classColor,
        ),
      );
    });
    timeWeek += 1;
    if (timeWeek >= 8) {
      timeWeek = 1;
    }
  });
  return result;
}

String parseWeek(String raw) {
  // raw = "3,5,7,9,11,13-14"
  var time = [];
  var timeCell = raw.split(",");
  timeCell.forEach((element) {
    if (element.contains("-")) {
      var startEnd = element.split("-");
      for (var i = int.parse(startEnd[0]); i<=int.parse(startEnd[1]); i++) {
        time.add(i.toString());
      }
    } else {
      time.add(element);
    }
  });
  return time.join(" ");
}
