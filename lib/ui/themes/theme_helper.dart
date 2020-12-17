import 'package:flutter/material.dart';

const kPrimaryLightColor = Color(0xFFF1E6FF);

const kPrimaryPadding = 20;
const kCardPadding = 4;

const kAnimationDuration = Duration(milliseconds: 250);

const kTimeTableLeftFlex = 2;
const kTimeTableRightFlex = 3;

final primaryTheme = ThemeData(
  brightness: Brightness.light,
  primaryColor: Color(0xFF686bdd),
  accentColor: Color(0xFF686bdd),
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
  primaryColor: Color(0xFF1c1c1c),
  accentColor: Color(0xFF686bdd),
  scaffoldBackgroundColor: Color(0xFF121212),
  textTheme: TextTheme(
    headline1: TextStyle(
        color: Color(0xFFB7B7B7), fontSize: 28, fontWeight: FontWeight.bold),
    subtitle1: TextStyle(color: Color(0xFFB7B7B7)),
  ),
  dividerTheme: DividerThemeData(color: Color(0xFF757575)),
);

bool isDarkMode(BuildContext context) {
  return Theme.of(context).brightness == Brightness.dark;
}

T byBrightness<T>(BuildContext context, T brightness, T dark) {
  return Theme.of(context).brightness == Brightness.light ? brightness : dark;
}
