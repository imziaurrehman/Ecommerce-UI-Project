import 'package:ecommerce_mobile_app/sizeConfig.dart';
import 'package:flutter/material.dart';

// ignore: camel_case_types
class Banner_Text_Container extends StatelessWidget {
  const Banner_Text_Container({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(
          horizontal: getPropotionatelayoutWidth(20),
          vertical: getPropotionatelayoutheight(20)),
      child: Container(
        width: double.infinity,
        padding: EdgeInsets.symmetric(
            vertical: getPropotionatelayoutheight(30), horizontal: 20),
        decoration: BoxDecoration(
            color: const Color(0xFF4A3298),
            borderRadius: BorderRadius.circular(20)),
        child: RichText(
          // textScaleFactor: 1,
          text: const TextSpan(
              text: "A Summer Surprise\n",
              children: [
                TextSpan(
                    text: "Cash Back 20%",
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.w600,
                        fontSize: 25)),
              ],
              style: TextStyle(
                color: Colors.white,
              )),
        ),
      ),
    );
  }
}
