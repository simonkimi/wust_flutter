import 'dart:math';

List randomList(List raw) {
  var len = raw.length;
  var rng = Random();
  var clone = List.of(raw);
  var result = [];
  for (var i = 0; i < len; i++) {
    var index = rng.nextInt(clone.length);
    result.add(clone[index]);
    clone.removeAt(index);
  }
  return result;
}
