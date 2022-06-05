import 'package:ecommerce_mobile_app/consts.dart';
import 'package:flutter/material.dart';
import 'package:ecommerce_mobile_app/sizeConfig.dart';

class TextRich extends StatelessWidget {
  const TextRich({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return RichText(
      textAlign: TextAlign.center,
      text: TextSpan(children: [
        TextSpan(
            text: "Welcome Back\n",
            style: TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.w600,
                fontSize: getPropotionatelayoutheight(30))),
        TextSpan(
            text:
                "\nSign in with your email and password  \nor continue with social media",
            style: TextStyle(
              fontFamily: kfontfamilybold,
              color: ksecondarycolor,
            )),
      ]),
    );
  }
}
