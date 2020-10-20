import 'package:flutter/material.dart';

class ClassCardEmpty extends StatefulWidget {
  final double classCardHeight;
  final double classCardPadding;

  const ClassCardEmpty(
      {Key key,
      @required this.classCardHeight,
      @required this.classCardPadding})
      : super(key: key);

  @override
  _ClassCardEmptyState createState() => _ClassCardEmptyState();
}

mixin ClassCardEmptyStateMixin<T extends StatefulWidget> on State<T> {}

class _ClassCardEmptyState extends State<ClassCardEmpty>
    with ClassCardEmptyStateMixin {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: widget.classCardHeight,
      margin: EdgeInsets.only(bottom: widget.classCardPadding),
    );
  }
}
