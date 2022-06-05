import 'package:flutter/material.dart';
import '../splash/components/body.dart';
import 'package:ecommerce_mobile_app/sizeConfig.dart';

class Splash_Screen extends StatelessWidget {
  static const routeName = "/splash";
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      body: Body());
  }
}
