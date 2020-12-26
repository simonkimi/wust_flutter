import 'package:flutter/material.dart';
import 'package:wust_life/ui/pages/class_table/state/class_store.dart'
    show classStore;

class ClassCardEmpty extends StatefulWidget {
  @override
  _ClassCardEmptyState createState() => _ClassCardEmptyState();
}

class _ClassCardEmptyState extends State<ClassCardEmpty> {
  var opacity = 0.0;

  @override
  Widget build(BuildContext context) {
    var classCardHeight = classStore.classCardHeight;
    var classCardPadding = classStore.classCardPadding;
    return Listener(
      onPointerUp: (_) {
        setState(() {
          opacity = 0.0;
        });
      },
      child: GestureDetector(
        onTapDown: (_) {
          setState(() {
            opacity = 0.8;
          });
        },
        onDoubleTap: () {},
        child: AnimatedOpacity(
          opacity: opacity,
          duration: Duration(milliseconds: 100),
          child: Container(
            height: classCardHeight,
            margin: EdgeInsets.only(bottom: classCardPadding),
            decoration: BoxDecoration(
              color: Colors.white70,
              borderRadius: BorderRadius.all(Radius.circular(6)),
            ),
            child: Center(
              child: Icon(
                Icons.add,
                size: 40,
                color: Colors.black54,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
