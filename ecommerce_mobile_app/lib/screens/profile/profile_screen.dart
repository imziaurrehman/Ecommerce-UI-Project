import 'package:ecommerce_mobile_app/components/back_arrow_ios_nav_btn.dart';
import 'package:ecommerce_mobile_app/enums.dart';
import 'package:ecommerce_mobile_app/screens/complete_profile/components/complete_profile_body.dart';
import 'package:ecommerce_mobile_app/screens/home/components/bottom-nav-bar.dart';
import 'package:ecommerce_mobile_app/screens/profile/components/profile_body.dart';
import 'package:flutter/material.dart';

class Profile_Screen extends StatelessWidget {
  static const routeName = "/profile_screen";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Profile"),
        leading: BackArrowNavBtn(),
      ),
      body: ProfileBody(),
      bottomNavigationBar: CustomBottomNavigationBar(
        selectedMenu: menuState.profile,
      ),
    );
  }
}
