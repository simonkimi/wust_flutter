List getThisWeek(DateTime nowDate, int startWeekday) {
  var date = nowDate;
  while (date.weekday != startWeekday) {
    date = date.add(Duration(days: -1));
  }
  var result = [];
  for (var i = 1; i <= 7; i++) {
    result.add(date);
    date = date.add(Duration(days: 1));
  }
  return result;
}

bool isSameDay(DateTime time1, DateTime time2) {
  return time1.year == time2.year &&
      time1.month == time2.month &&
      time1.day == time2.day;
}

int currentTimeMillis() {
  return new DateTime.now().millisecondsSinceEpoch;
}
