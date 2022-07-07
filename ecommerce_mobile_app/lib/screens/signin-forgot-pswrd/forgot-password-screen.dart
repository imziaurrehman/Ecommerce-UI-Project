import 'package:ecommerce_mobile_app/sizeConfig.dart';
import 'package:flutter/material.dart';
import '../../../components/back_arrow_ios_nav_btn.dart';
import 'components/forgot-body.dart';

class Forgot_Password_Screen extends StatelessWidget {
  static const routeName = "/forgot";
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      appBar: AppBar(
        title: Text("Forgot Password"),
        leading: BackArrowNavBtn(),
      ),
      body: ForgotBody(),
    );
  }
}