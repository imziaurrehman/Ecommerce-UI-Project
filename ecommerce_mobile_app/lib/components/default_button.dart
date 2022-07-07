import 'package:flutter/material.dart';
import 'package:ecommerce_mobile_app/sizeConfig.dart';
import 'package:ecommerce_mobile_app/consts.dart';

class DefaultButtons extends StatelessWidget {
  DefaultButtons({required this.text, required this.button});
  final String? text;
  final Function? button;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: getPropotionatelayoutheight(64),
      child: TextButton(
        child: Text(
          text!,
          softWrap: true,
          textScaleFactor: 1.4,
        ),
        onPressed: button as void Function()?,
        style: TextButton.styleFrom(
          animationDuration: kAnimationDefaultDuration,
          backgroundColor: kprimarycolor,
          primary: Colors.white,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20),
          ),
          textStyle: TextStyle(
            fontWeight: FontWeight.w500,
          ),
        ),
      ),
    );
  }
}
