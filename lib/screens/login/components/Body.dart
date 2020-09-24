import 'package:flutter/material.dart';
import 'package:login_page/components/AlreadyHaveAnAccount.dart';
import 'package:login_page/components/RoundInputField.dart';
import 'package:login_page/components/RoundedPasswordField.dart';
import 'package:login_page/components/TextFieldContainer.dart';
import 'package:login_page/components/rounded_button.dart';
import 'package:login_page/screens/login/components/background.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:login_page/constants.dart';
import 'package:login_page/screens/signUp/signup_screen.dart';

class Body extends StatelessWidget {
  const Body({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Background(
      child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'LOGIN',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: size.height * 0.03,
            ),
            SvgPicture.asset(
              'assets/icons/login.svg',
              width: size.height * 0.35,
            ),
            RoundedInputField(
              hintText: 'Your Email',
              onChanged: (value) {},
            ),
            RoundedPasswordField(
              onChange: (value) {},
            ),
            RoundedButton(
              text: 'LOGIN',
              press: () {},
            ),
            SizedBox(
              height: size.height * 0.03,
            ),
            AlreadyHaveAnAccountCheck(
              press: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) {
                    return SignUpScreen();
                  }),
                );
              },
            )
          ],
        ),
      ),
    );
  }
}
