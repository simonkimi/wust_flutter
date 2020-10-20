import 'package:flutter/cupertino.dart';

List<Widget> createDivider(List<Widget> row, Widget divider) {
  var clone = row.map((e) => e).toList();
  for (var i = row.length; i >= 1; i--) {
    clone.insert(i, divider);
  }
  return clone;
}
