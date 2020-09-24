import 'package:flutter/material.dart';
import 'package:login_page/screens/signUp/signup_screen.dart';
import 'package:login_page/screens/welcome/components/background.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:login_page/constants.dart';
import 'package:login_page/components/rounded_button.dart';
import 'package:login_page/screens/login/login_page.dart';
class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Background(
      child: Center(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text(
                'WELCOME TO EDU',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              SizedBox(height: size.height * 0.03,),
              SvgPicture.asset(
                'assets/icons/chat.svg',
                height: size.height * 0.45,
              ),
              SizedBox(height: size.height * 0.03,),
              RoundedButton(
                text: 'LOGIN',
                press: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context){return LoginScreen();}),);
                },
              ),
              RoundedButton(
                text: 'Sign Up',
                press: (){
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) {
                      return SignUpScreen();
                    }),
                  );
                },
                color: kPrimaryLightColor,
                textColor: Colors.black,
              ),

            ],
          ),
        ),
      ),
    );
  }
}