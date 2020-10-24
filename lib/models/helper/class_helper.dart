import 'package:html/parser.dart' as htmlParse;
import 'package:wuster/models/entity/class_entity.dart';

List<ClassEntity> parseClassFromHtml(String html) {
  var document = htmlParse.parse(html);
  var classListRaw = document
      .getElementsByClassName("kbcontent")
      .where((element) => element.classes.length == 1)
      .map((e) => e.innerHtml.split("---------------------<br>"));

  var timeWeek = 1;
  List<ClassEntity> result = [];
  classListRaw.forEach((singleTimeCell) {
    singleTimeCell.forEach((singleClass) {
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
          classTimeRaw.substring(0, classTimeRaw.indexOf("(周)")).split(",");
      var classId = tagMap["课堂名称"] ?? "未命名";
      var classTeacher = tagMap["老师"] ?? "";
      var classRoom = tagMap["教室"] ?? "未定义";
      var classTime = classTimeRaw
          .substring(
              classTimeRaw.indexOf("[") + 1, classTimeRaw.indexOf("]") - 1)
          .split("-");

      var timeStartTime = ((int.parse(classTime[0]) + 1) / 2).round();
      var timeLastTime =
          (((int.parse(classTime[1]) - int.parse(classTime[0])) + 1) / 2)
              .round();

      classWeek.forEach((week) {
        var times = week.split("-");
        var startWeek = int.parse(times[0]);
        var endWeek = int.parse(times[1]);
        result.add(ClassEntity.build(
            week: timeWeek,
            className: className,
            teacher: classTeacher,
            classId: classId,
            startWeek: startWeek,
            endWeek: endWeek,
            classRoom: classRoom,
            startTime: timeStartTime,
            lastTime: timeLastTime));
      });
    });
    timeWeek += 1;
    if (timeWeek >= 8) {
      timeWeek = 1;
    }
  });
  return result;
}
