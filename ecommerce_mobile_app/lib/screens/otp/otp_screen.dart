import 'package:ecommerce_mobile_app/components/back_arrow_ios_nav_btn.dart';
import 'package:ecommerce_mobile_app/screens/otp/component/otp_body.dart';
import 'package:ecommerce_mobile_app/sizeConfig.dart';
import 'package:flutter/material.dart';

class Otp_Screen extends StatelessWidget {
  static const routeName = "otp";
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      appBar: AppBar(
        title: const Text("OTP Verification"),
        leading: BackArrowNavBtn(),
      ),
      body: Otp_Body(),
    );
  }
}
