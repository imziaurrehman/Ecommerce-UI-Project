import 'package:ecommerce_mobile_app/components/back_arrow_ios_nav_btn.dart';
import 'package:ecommerce_mobile_app/sizeConfig.dart';
import 'package:flutter/material.dart';
import 'components/complete_profile_body.dart';

class Complete_Profile_Screen extends StatelessWidget {
  static const routeName = "/info";
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      appBar: AppBar(
        title: const Text("Sign Up"),
        leading: BackArrowNavBtn(),
      ),
      body: Profile_Body(),
    );
  }
}
