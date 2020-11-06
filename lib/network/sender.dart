import 'package:wust_life/network/http.dart';

class Sender {
  static final Sender _sender = Sender._internal();
  Http http;

  factory Sender() => _sender;

  Sender._internal() {
    http = Http();
  }


}
