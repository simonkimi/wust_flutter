List getThisWeek() {
  var nowDate = DateTime.now();
  nowDate = nowDate.add(Duration(days: -nowDate.weekday + 1));
  var week = ["", "MON", "TUE", "WEN", "TUR", "FRI", "SAT", "SUN"];
  var result = [];
  for (var i = 1; i <= 7; i++) {
    result.add(["${nowDate.month}/${nowDate.day}", week[nowDate.weekday]]);
    nowDate = nowDate.add(Duration(days: 1));
  }
  return result;
}
