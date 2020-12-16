import 'package:flutter/material.dart';

class InheritedClassSpaceWidget extends InheritedWidget {
  final double classCardHeight;
  final double classCardPadding;
  final double classMainHeight;

  InheritedClassSpaceWidget({
    Key key,
    Widget child,
    this.classCardHeight,
    this.classCardPadding,
    this.classMainHeight,
  }) : super(key: key, child: child);

  static InheritedClassSpaceWidget of(BuildContext context) {
    return context
        .dependOnInheritedWidgetOfExactType<InheritedClassSpaceWidget>();
  }

  @override
  bool updateShouldNotify(InheritedClassSpaceWidget o) {
    return o.classCardHeight != classCardHeight ||
        o.classCardPadding != classCardPadding ||
        o.classMainHeight != classMainHeight;
  }
}
