import 'package:ecommerce_mobile_app/components/no_account_txt.dart';
import 'package:ecommerce_mobile_app/components/socialwidget.dart';
import 'package:ecommerce_mobile_app/consts.dart';
import 'package:ecommerce_mobile_app/sizeConfig.dart';
import 'package:flutter/material.dart';
import 'formsfields.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SizedBox(
        width: double.infinity,
        child: Padding(
          padding:
              EdgeInsets.symmetric(horizontal: getPropotionatelayoutWidth(20)),
          child: SingleChildScrollView(
            // padding: EdgeInsets.only(
            //     bottom: SizeConfig.screen_height * 0.2, top: 20),
            child: Column(
              children: [
                Text(
                  "Welcome Back",
                  style: headingStyle,
                ),
                Text(
                  "\nSign in with your email and password  \nor continue with social media",
                  textAlign: TextAlign.center,
                ),
                SizedBox(
                  height: SizeConfig.screen_height * 0.1,
                ),
                SigninFormfields(),
                SizedBox(
                  height: getPropotionatelayoutheight(55),
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
                  height: getPropotionatelayoutheight(20),
                ),
                No_account_txt(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
