import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:wuster/constants.dart';
import 'package:wuster/util/date_util.dart';
import 'package:wuster/util/widget_util.dart';

class ClassTimeTablePage extends StatefulWidget {
  static String routeName = "classTimeTable";

  @override
  _ClassTimeTablePageState createState() => _ClassTimeTablePageState();
}

mixin ClassTimeTablePageState<T extends StatefulWidget> on State<T> {
  Size size;
  double classHeight;
  double classPadding;
  double classMainHeight;

  int leftFlex = 2;
  int rightFlex = 3;
  var isTransport = false;
  var schoolState = "qs";

  setTransport() {
    setState(() {
      isTransport = !isTransport;
    });
  }
}

class _ClassTimeTablePageState extends State<ClassTimeTablePage>
    with ClassTimeTablePageState {
  @override
  Widget build(BuildContext context) {
    size = MediaQuery.of(context).size;
    classHeight = size.height / 6;
    classPadding = kPrimaryPadding / 5;
    classMainHeight = classHeight * 6 + classPadding * 5;

    return Scaffold(
      extendBodyBehindAppBar: isTransport,
      appBar: AppBar(
        backgroundColor: isTransport ? Colors.transparent : kPrimaryColor,
        automaticallyImplyLeading: false,
        actions: [
          IconButton(
              icon: Icon(Icons.picture_as_pdf),
              onPressed: () {
                setTransport();
              })
        ],
      ),
      body: Container(
        child: buildBody(),
        // decoration: BoxDecoration(
        //   image: DecorationImage(
        //       image: AssetImage("assets/images/l2.png"), fit: BoxFit.cover),
        // ),
      ),
    );
  }

  /// 构建主体
  Widget buildBody() {
    return SafeArea(
      child: SizedBox(
        width: double.infinity,
        height: double.infinity,
        child: Column(
          children: [
            buildTableHeader(),
            SizedBox(height: 2),
            buildTableBody(),
          ],
        ),
      ),
    );
  }

  /// 构建课程表主体
  Expanded buildTableBody() {
    return Expanded(
      child: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Row(
          children: [
            buildLiftWidget(),
          ]..addAll(
              List(7).map(
                (e) {
                  return Expanded(
                    flex: rightFlex,
                    child: Container(
                      height: classMainHeight,
                    ),
                  );
                },
              ),
            ),
        ),
      ),
    );
  }

  /// 构建左边的时间栏
  Expanded buildLiftWidget() {
    return Expanded(
      flex: leftFlex,
      child: Container(
        height: classMainHeight,
        color: Colors.transparent,
        child: Column(
          children: buildLeftTimeList(schoolState),
        ),
      ),
    );
  }

  /// 构建课程
  Widget buildClass(String className, String classroom) {
    return Container();
  }

  /// 构建左边时间单位
  Container buildLeftTime(String startTime, String endTime) {
    var textStyle = TextStyle(fontSize: 10);
    return Container(
      height: classHeight,
      width: double.infinity,
      color: kTransportWhite,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Column(
            children: [
              Text(startTime, style: textStyle),
              SizedBox(height: 20),
              Text("|", style: textStyle),
              SizedBox(height: 20),
              Text(endTime, style: textStyle),
            ],
          ),
        ],
      ),
    );
  }

  /// 构建表头
  Widget buildTableHeader() {
    return Container(
      color: kTransportWhite,
      width: double.infinity,
      height: 50,
      child: Row(
        children: [
          Expanded(
            flex: leftFlex,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(
                  Icons.calendar_today_outlined,
                  size: 16,
                )
              ],
            ),
          ),
        ]..addAll(getThisWeek().map((e) => buildTableDate(e[1], e[0]))),
      ),
    );
  }

  /// 构建表头元素
  Widget buildTableDate(String week, String date) {
    return Expanded(
      flex: rightFlex,
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

  List<Widget> buildLeftTimeList(String schoolState) {
    return createDivider(
      kClassTime.map((e) {
        var timeList = e[schoolState];
        return buildLeftTime(timeList[0], timeList[1]);
      }).toList(),
      SizedBox(
        height: classPadding,
      ),
    );
  }
}
