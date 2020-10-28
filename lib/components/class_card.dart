import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:wuster/components/icon_text.dart';
import 'package:wuster/models/entity/class_entity.dart';
import 'package:wuster/pages/class_table/child_view/card_space_widget.dart';

class ClassCard extends StatelessWidget {
  final ClassEntity classEntity;
  final Color background;
  final int classLength;
  final bool isShow;

  const ClassCard({
    Key key,
    this.background = Colors.blue,
    this.classLength = 1,
    this.isShow = false,
    @required this.classEntity,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var classCardHeight = InheritedClassSpaceWidget.of(context).classCardHeight;
    var classCardPadding =
        InheritedClassSpaceWidget.of(context).classCardPadding;
    var height = classCardHeight * classLength;
    if (classLength > 1) {
      height += (classLength - 1) * classCardPadding;
    }
    return Opacity(
      opacity: 0.8,
      child: Container(
        height: height,
        width: double.infinity,
        decoration: BoxDecoration(
          color: background,
          borderRadius: BorderRadius.all(Radius.circular(6)),
          boxShadow: [
            BoxShadow(
              offset: Offset(1, 1),
              color: Colors.black12,
            )
          ],
        ),
        margin: EdgeInsets.only(bottom: classCardPadding),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 1),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                classEntity.className,
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontWeight: FontWeight.w600,
                  fontSize: 10,
                  color: Colors.white,
                ),
              ),
              SizedBox(
                height: 3,
              ),
              IconText(
                classEntity.classRoom,
                maxLines: 2,
                textAlign: TextAlign.center,
                icon: Icon(Icons.location_on),
                style: TextStyle(
                  fontSize: 10,
                  color: Colors.white,
                ),
                iconPadding: EdgeInsets.only(bottom: 0.5),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
