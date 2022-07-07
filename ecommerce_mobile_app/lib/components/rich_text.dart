import 'package:ecommerce_mobile_app/consts.dart';
import 'package:flutter/material.dart';
import 'package:ecommerce_mobile_app/sizeConfig.dart';

class TextRich extends StatelessWidget {
  const TextRich({
    Key? key,
    required this.text,
    required this.description
  }) : super(key: key);
  final String text , description;

  @override
  Widget build(BuildContext context) {
    return RichText(
      textAlign: TextAlign.center,
      text: TextSpan(children: [
        TextSpan(
            text: text,
            style: TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.w600,
                fontSize: getPropotionatelayoutheight(30))),
        TextSpan(
            text:
                description,
            style: TextStyle(
              fontFamily: kfontfamilybold,
              color: ksecondarycolor,
            )),
      ]),
    );
  }
}
