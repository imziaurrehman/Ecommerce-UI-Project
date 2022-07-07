import 'package:ecommerce_mobile_app/enums.dart';
import 'package:ecommerce_mobile_app/screens/home/components/homeBody.dart';
import 'package:ecommerce_mobile_app/sizeConfig.dart';
import 'package:flutter/material.dart';
import 'components/bottom-nav-bar.dart';

// ignore: camel_case_types
class Home_Screen extends StatelessWidget {
  static const routeName = "/home";

  const Home_Screen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      body: Home_Body(),
      bottomNavigationBar: CustomBottomNavigationBar(
        selectedMenu: menuState.home,
      ),
    );
  }
}
