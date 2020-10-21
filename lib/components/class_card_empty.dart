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

class _ClassCardEmptyState extends State<ClassCardEmpty>
    with SingleTickerProviderStateMixin {
  AnimationController cardShowController;
  Animation<double> cardAnimation;

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
    return GestureDetector(
      child: FadeTransition(
        child: Container(
          height: widget.classCardHeight,
          margin: EdgeInsets.only(bottom: widget.classCardPadding),
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
      onTapDown: (details) {
        cardShowController.forward();
      },
      onTapUp: (details) {
        cardShowController.reverse();
      },
      onLongPress: () {
        print("Long Press");
      },
      onLongPressEnd: (_) {
        cardShowController.reverse();
      },
    );
  }
}
