import 'package:flutter/material.dart';
import 'package:wuster/models/entity/class_model.dart';

class ClassCard extends StatelessWidget {
  final ClassModel classModel;
  final double classHeight;
  final double classPadding;
  final Color background;
  final int classDisplayType;

  const ClassCard({
    Key key,
    @required this.classHeight,
    @required this.classPadding,
    @required this.background,
    @required this.classModel,
    @required this.classDisplayType,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: classHeight,
      color: background,
      decoration: BoxDecoration(
        boxShadow: [
          BoxShadow(
            offset: getCardBoxShadowOffset(),
            color: Color(0xffdfdfdf),
            blurRadius: 20,
          )
        ],
        borderRadius: getCardBorderRadius()
      ),
      margin: getCardMargin(),
    );
  }

  Offset getCardBoxShadowOffset() {
    switch (classDisplayType) {
      case 0: // 普通课程, 右边下面显示阴影
      case 1: // 两节课下面的课
        return Offset(1, 1);
      default: // 两节课上面的课以及中间的课
        return Offset(1, 0);
    }
  }

  BorderRadius getCardBorderRadius() {
    switch (classDisplayType) {
      case 0: // 普通课程
        return BorderRadius.all(Radius.circular(6));
      case 1: // 上面课
        return BorderRadius.vertical(top: Radius.circular(6));
      case 2: // 下面课
        return BorderRadius.vertical(top: Radius.circular(6));
      default:
        return BorderRadius.zero;
    }
  }

  EdgeInsets getCardMargin() {
    switch (classDisplayType) {
      case 0: // 普通课程
      case 2: // 下面课
        return EdgeInsets.only(bottom: classPadding);
      case 1: // 上面课, 中间课
      default:
        return EdgeInsets.zero;
    }
  }
}
