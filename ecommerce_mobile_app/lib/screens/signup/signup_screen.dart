import 'package:ecommerce_mobile_app/components/back_arrow_ios_nav_btn.dart';
import 'package:ecommerce_mobile_app/screens/signup/components/signupbody.dart';
import 'package:ecommerce_mobile_app/sizeConfig.dart';
import 'package:flutter/material.dart';
import 'components/signupbody.dart';

class SignUpScreen extends StatelessWidget {
  static const routeName = "signup";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Sign Up"),
          leading: BackArrowNavBtn(),
        ),
        body: SignupBody());
  }
}
