import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:wust_life/models/entity/class_entity.dart';
import 'package:wust_life/ui/pages/class_table/state/class_store.dart';

import '../../../components/icon_text.dart';

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
    var classCardHeight = classStore.classCardHeight;
    var classCardPadding = classStore.classCardPadding;
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
                maxLines: 4,
                style: TextStyle(
                  fontWeight: FontWeight.w600,
                  fontSize: 10,
                  color: Colors.white,
                ),
              ),
              SizedBox(
                height: 3,
              ),
              Offstage(
                offstage: classEntity.classRoom.isEmpty,
                child: IconText(
                  classEntity.classRoom,
                  maxLines: 3,
                  textAlign: TextAlign.center,
                  icon: Icon(Icons.location_on),
                  style: TextStyle(
                    fontSize: 10,
                    color: Colors.white,
                  ),
                  iconPadding: EdgeInsets.only(bottom: 0.5),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
