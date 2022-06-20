import 'package:flutter/material.dart';
import './components/body.dart';
import 'package:ecommerce_mobile_app/sizeConfig.dart';
import 'components/back_arrow_ios_nav_btn.dart';

class SigninScreen extends StatelessWidget {
  static const routeName = "/signin";
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      resizeToAvoidBottomInset: false, // void any changes in layouts while keyboard / inouts appears 
      appBar: AppBar(
        title: Text("Sign In"),
        leading: BackArrowNavBtn(),
      ),
      body: Body(),
    );
  }
}
