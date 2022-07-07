import 'package:ecommerce_mobile_app/components/default_button.dart';
import 'package:ecommerce_mobile_app/screens/home/home-screen.dart';
import 'package:ecommerce_mobile_app/screens/signin/login_success/login_success_text.dart';
import 'package:ecommerce_mobile_app/sizeConfig.dart';
import 'package:flutter/material.dart';

class body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
          flex: 4,
          child: Container(
            margin: EdgeInsets.only(top: 30),
            width: double.infinity,
            child: Image.asset("assets/images/success.png"),
          ),
        ),
        SizedBox(
          height: getPropotionatelayoutheight(6),
        ),
        Spacer(),
        Expanded(
          flex: 1,
          child: Container(
            alignment: Alignment.center,
            width: double.infinity,
            child: login_success_text(
              text: "Login Success",
            ),
          ),
        ),
        SizedBox(
          height: getPropotionatelayoutheight(0),
        ),
        Expanded(
          flex: 2,
          child: Container(
            width: double.infinity,
            padding: EdgeInsets.symmetric(horizontal: 75, vertical: 50),
            child: DefaultButtons(
              text: "Back to home",
              button: () {
                //home-screen
                Navigator.of(context).pushReplacementNamed(Home_Screen.routeName);
              },
            ),
          ),
        ),
        SizedBox(
          height: getPropotionatelayoutheight(10),
        ),
      ],
    );
  }
}
