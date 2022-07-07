import 'package:ecommerce_mobile_app/components/socialwidget.dart';
import 'package:ecommerce_mobile_app/consts.dart';
import 'package:ecommerce_mobile_app/sizeConfig.dart';
import 'package:flutter/material.dart';

import 'signup_forms.dart';

class SignupBody extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Padding(
        padding:
            EdgeInsets.symmetric(horizontal: getPropotionatelayoutWidth(20.0)),
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(
                height: SizeConfig.screen_height * 0.01,
              ),
              Text(
                "Register Account",
                style: headingStyle,
              ),
              Text(
                "\nComplete your detail or continue\nwith social media",
                textAlign: TextAlign.center,
              ),
              SizedBox(
                height: SizeConfig.screen_height * 0.06,
              ),
              SignupForms(),
              SizedBox(
                height: SizeConfig.screen_height * 0.06,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  socialwidget(
                    icon: "assets/icons/google-icon.svg",
                    onPressed: () {},
                  ),
                  socialwidget(
                    icon: "assets/icons/facebook-2.svg",
                    onPressed: () {},
                  ),
                  socialwidget(
                    icon: "assets/icons/twitter.svg",
                    onPressed: () {},
                  ),
                ],
              ),
              SizedBox(
                height: SizeConfig.screen_height * 0.02,
              ),
              Text(
                "By continuing your confirm that you agree \nwith our Term and Condition",
                textAlign: TextAlign.center,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
