import 'package:flutter/material.dart';
import 'package:login_page/constants.dart';

class RoundedButton extends StatelessWidget {
  final Function press;
  final String text;
  final Color color, textColor;
  RoundedButton({
    this.press,
    this.text,
    this.color = kPrimaryColor,
    this.textColor = Colors.white,
  });

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      margin: EdgeInsets.symmetric(vertical: 10),
      width: size.width * 0.8,
      child: ClipRRect(
        borderRadius: BorderRadius.circular(29.0),
        child: FlatButton(
          child: Text(
            text,
            style: TextStyle(color: textColor),
          ),
          onPressed: press,
          padding: EdgeInsets.symmetric(vertical: 20.0, horizontal: 40.0),
          color: color,
        ),
      ),
    );
  }
}