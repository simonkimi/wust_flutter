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
    var height = classHeight * classDisplayType;
    if (classDisplayType > 1) {
      height += (classDisplayType - 1) * classPadding;
    }
    if (classDisplayType != 0) {
      return Opacity(
        opacity: 0.8,
        child: Container(
          height: height,
          width: double.infinity,
          decoration: BoxDecoration(
            color: background,
            boxShadow: [
              BoxShadow(
                offset: Offset(1, 1),
                color: Color(0xffdfdfdf),
              )
            ],
            borderRadius: BorderRadius.all(Radius.circular(6)),
          ),
          margin: EdgeInsets.only(bottom: classPadding),
        ),
      );
    } else {
      return Container();
    }
  }
}
