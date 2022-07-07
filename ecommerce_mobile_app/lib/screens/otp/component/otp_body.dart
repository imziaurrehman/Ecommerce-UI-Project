import 'package:ecommerce_mobile_app/consts.dart';
import 'package:ecommerce_mobile_app/screens/otp/component/otp_forms.dart';
import 'package:flutter/material.dart';
import 'package:ecommerce_mobile_app/sizeConfig.dart';

class Otp_Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: getPropotionatelayoutheight(20)),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Text(
                "OTP Verification",
                style: headingStyle,
              ),
              const Text("we send your code to +1 898 860 ***"),
              buildTimer(),
              SizedBox(
                height: SizeConfig.screen_height * 0.2,
              ),
              OtpForms(),
            ],
          ),
        ),
      ),
    );
  }

  Row buildTimer() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const Text(
          "This code will expired in",
        ),
        TweenAnimationBuilder(
          duration: const Duration(seconds: 30),
          builder: (_, dynamic value, child) => Text(
            "\t00:${value.toInt()}",
            style: const TextStyle(color: kprimarycolor),
          ),
          tween: Tween(begin: 30.0, end: 0.0),
        ),
      ],
    );
  }
}
