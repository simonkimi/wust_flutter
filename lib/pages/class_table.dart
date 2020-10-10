import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:wuster/constants.dart';

class ClassTimeTablePage extends StatefulWidget {
  static String routeName = "classTimeTable";

  @override
  _ClassTimeTablePageState createState() => _ClassTimeTablePageState();
}

class _ClassTimeTablePageState extends State<ClassTimeTablePage> {
  Size size;

  @override
  Widget build(BuildContext context) {
    size = MediaQuery.of(context).size;
    return Scaffold(
      // extendBodyBehindAppBar: true,
      appBar: AppBar(
        backgroundColor: kPrimaryColor,
        automaticallyImplyLeading: false,
      ),
      body: Container(
        child: buildBody(),
        decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage("assets/images/setu.png"), fit: BoxFit.cover),
        ),
      ),
    );
  }

  Widget buildBody() {
    return SafeArea(
      child: SizedBox(
        width: double.infinity,
        height: double.infinity,
        child: Column(
          children: [buildTableHeader()],
        ),
      ),
    );
  }

  Widget buildTableHeader() {
    return Container(
      color: Color(0x80FFFFFF),
      width: double.infinity,
      height: 50,
      child: Row(
        children: [
          Expanded(
            flex: 1,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [Text("10"), Text("月")],
            ),
          ),
          buildTableDate("MON", "3/3"),
          buildTableDate("TUE", "3/4"),
          buildTableDate("WEN", "3/5"),
          buildTableDate("TUR", "3/6"),
          buildTableDate("FRI", "3/7"),
          buildTableDate("MON", "3/8"),
          buildTableDate("SAT", "3/9"),
          buildTableDate("SUN", "3/10"),
        ],
      ),
    );
  }

  Widget buildTableDate(String week, String date) {
    return Expanded(
      flex: 2,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            week,
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
          Text(date)
        ],
      ),
    );
  }
}
