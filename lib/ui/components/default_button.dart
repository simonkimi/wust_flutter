import 'package:flutter/material.dart';
import 'package:wust_life/ui/themes/theme_helper.dart';

class DefaultButton extends StatelessWidget {
  const DefaultButton({Key key, this.text, this.onPressed}) : super(key: key);

  final String text;
  final Function onPressed;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: 56,
      child: FlatButton(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
        color: Theme.of(context).buttonColor,
        onPressed: onPressed,
        child: Text(
          text,
          style: TextStyle(
            fontSize: 18,
            color: accordingToTheme(context, Colors.white, Color(0xFFEFEFEF))
          ),
        ),
      ),
    );
  }
}
