import 'package:html/parser.dart' show parse;

parseClassFromHtml(String html) {
  var document = parse(html);
  var classListRaw = document
      .getElementsByClassName("kbcontent")
      .where((element) => element.classes.length == 1)
      .map((e) => e.innerHtml.split("---------------------<br>"));

  classListRaw.forEach((singleTimeCell) {
    singleTimeCell.forEach((singleClass) {
      var classTag = parse(singleClass);
      var fontTag = classTag.getElementsByTagName("font");
      Map<String, String> tagMap = {};
      fontTag.forEach((tag) {
        tagMap[tag.attributes["title"]] = tag.innerHtml;
      });
      if (tagMap.isEmpty) {
        return;
      }
      // {老师: 郑秀娟, 课堂名称: 教学班0513, 周次(节次): 1-4,6-9(周)[01-02节], 教室: 主楼211}
      var classWeekRaw = tagMap["周次(节次)"];
      var classWeek =
      classWeekRaw.substring(0, classWeekRaw.indexOf("(周)")).split(",");
      var classId = tagMap["课堂名称"];
      var classTeacher = tagMap["老师"] ?? classId ?? "临班";
      var classRoom = tagMap["教室"];
      var className = classTag.body.text
          .substring(0, classTag.body.text.indexOf(classTeacher));

      classWeek.forEach((week) {
        var times = week.split("-");
        var startTime = int.parse(times[0]);
        var endTime = int.parse(times[1]);
        print(
            "$className $classTeacher $classRoom $classId $startTime - $endTime");
      });
    });
  });
}
