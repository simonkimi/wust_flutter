import 'package:flutter/material.dart';

const kPrimaryLightColor = Color(0xFFF1E6FF);

const kPrimaryPadding = 20;

const kAnimationDuration = Duration(milliseconds: 250);

const kTimeTableLeftFlex = 2;
const kTimeTableRightFlex = 3;


final primaryTheme = ThemeData(
  brightness: Brightness.light,
  primaryColor: Colors.purple,
  accentColor: Colors.purpleAccent,
  buttonColor: Colors.purple,
  scaffoldBackgroundColor: Colors.white,
  textTheme: TextTheme(
    headline1: TextStyle(
        color: Color(0xFF303133), fontSize: 28, fontWeight: FontWeight.bold),
    subtitle1: TextStyle(color: Color(0xFF757575)),
  ),
  dividerTheme: DividerThemeData(color: Color(0xFF757575)),
);

final darkTheme = ThemeData(
  brightness: Brightness.dark,
  buttonColor: Colors.purple[300],
  primaryColor: Color(0xFF1c1c1c),
  accentColor: Colors.purpleAccent[100],
  scaffoldBackgroundColor: Color(0xFF121212),
  textTheme: TextTheme(
    headline1: TextStyle(
        color: Color(0xFF7F7F7F), fontSize: 28, fontWeight: FontWeight.bold),
    subtitle1: TextStyle(color: Color(0xFF757575)),
  ),
  dividerTheme: DividerThemeData(color: Color(0xFF757575)),
);

bool isDarkMode(BuildContext context) {
  return Theme.of(context).brightness == Brightness.dark;
}

T accordingToTheme<T>(BuildContext context, T brightness, T dark) {
  return Theme.of(context).brightness == Brightness.light ? brightness : dark;
}
