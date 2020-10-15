List getThisWeek(DateTime nowDate) {
  var date = nowDate.add(Duration(days: -nowDate.weekday + 1));
  var week = ["", "MON", "TUE", "WEN", "TUR", "FRI", "SAT", "SUN"];
  var result = [];
  for (var i = 1; i <= 7; i++) {
    result.add(["${date.month}/${date.day}", week[date.weekday]]);
    date = date.add(Duration(days: 1));
  }
  return result;
}
