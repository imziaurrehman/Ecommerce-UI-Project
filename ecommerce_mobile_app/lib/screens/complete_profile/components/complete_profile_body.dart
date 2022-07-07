import 'package:ecommerce_mobile_app/consts.dart';
import 'package:flutter/material.dart';
import 'package:ecommerce_mobile_app/sizeConfig.dart';
import 'complete_profile_form.dart';

class Profile_Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SizedBox(
        width: double.infinity,
        child: Padding(
          padding:
              EdgeInsets.symmetric(horizontal: getPropotionatelayoutheight(20)),
          child: SingleChildScrollView(
            child: Column(
              children: [
                Text(
                  "Complete Profile",
                  style: headingStyle,
                ),
                const Text(
                  "Complete your details or continue\nwith social media",
                  textAlign: TextAlign.center,
                ),
                SizedBox(
                  height: SizeConfig.screen_height * 0.03,
                ),
                CompleteProfileForm(),
                SizedBox(
                  height: getPropotionatelayoutheight(20),
                ),
                Text(
                  "By continuing you\'re confirm that you agree\nwith our Term and condition",
                  textAlign: TextAlign.center,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
