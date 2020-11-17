import 'package:flutter/material.dart';

class PopupIconMenu extends StatelessWidget {
  final String id;
  final IconData iconData;
  final String text;

  const PopupIconMenu(this.id, this.iconData, this.text, {Key key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        children: [
          Padding(
            padding: EdgeInsets.only(right: 10),
            child: Icon(iconData, color: Theme.of(context).accentColor),
          ),
          Text(text)
        ],
      ),
    );
  }
}
