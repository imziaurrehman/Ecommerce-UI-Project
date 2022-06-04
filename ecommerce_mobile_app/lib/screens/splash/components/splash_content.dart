import 'package:flutter/material.dart';
import '../../../consts.dart';
import '../../../sizeConfig.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SplashContent extends StatelessWidget {
  final String? text, image;
  SplashContent({required this.text, required this.image});
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Spacer(
          flex: 1,
        ),
        Text(
          "TOKOTO",
          style: TextStyle(
            color: kprimarycolor,
            fontFamily: kfontfamilybold,
            fontSize: getPropotionatelayoutWidth(28),
          ),
        ),
        SizedBox(height: getPropotionatelayoutheight(15),),
        
        Text(
          text!,
          textAlign: TextAlign.center,
          softWrap: true,
          textScaleFactor: 1.1,
          style: TextStyle(color: ksecondarycolor,),
        ),
        Spacer(),
        Image.asset(
          image!,
          width: getPropotionatelayoutWidth(250),
          height: getPropotionatelayoutheight(290),
        )
        // SvgPicture.asset(
        //   image!,
        //   width: getPropotionatelayoutWidth(150),
        //   height: getPropotionatelayoutheight(350),

        // ),
      ],
    );
  }
}
