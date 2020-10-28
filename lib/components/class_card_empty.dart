import 'package:flutter/material.dart';
import 'package:wust_life/pages/class_table/child_view/card_space_widget.dart';

class ClassCardEmpty extends StatefulWidget {
  @override
  _ClassCardEmptyState createState() => _ClassCardEmptyState();
}

class _ClassCardEmptyState extends State<ClassCardEmpty>
    with SingleTickerProviderStateMixin {
  AnimationController cardShowController;
  Animation<double> cardAnimation;
  bool isShow = false;

  @override
  void initState() {
    super.initState();
    cardShowController = AnimationController(
      duration: Duration(milliseconds: 100),
      lowerBound: 0.0,
      upperBound: 1.0,
      vsync: this,
    );
    cardAnimation = Tween(begin: 0.0, end: 1.0).animate(cardShowController);
  }

  @override
  void dispose() {
    super.dispose();
    cardShowController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    var classCardHeight = InheritedClassSpaceWidget.of(context).classCardHeight;
    var classCardPadding =
        InheritedClassSpaceWidget.of(context).classCardPadding;
    return Listener(
      onPointerUp: (_) {
        cardShowController.reverse();
      },
      child: GestureDetector(
        onTapDown: (_) {
          cardShowController.forward();
        },
        child: FadeTransition(
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
          opacity: cardAnimation,
        ),
      ),
    );
  }
}

