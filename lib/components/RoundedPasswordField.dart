import 'package:flutter/material.dart';
import 'package:login_page/components/TextFieldContainer.dart';
import 'package:login_page/constants.dart';

class RoundedPasswordField extends StatelessWidget {
  final ValueChanged<String> onChange;
  const RoundedPasswordField({
    Key key,
    this.onChange,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFieldContainer(
      child: TextField(
        onChanged: onChange,
        decoration: InputDecoration(
          icon: Icon(
            Icons.lock,
            color: kPrimaryColor,
          ),
          hintText: 'Password',
          suffixIcon: Icon(
            Icons.visibility,
            color: kPrimaryColor,
          ),
          border: InputBorder.none,
        ),
      ),
    );
  }
}
