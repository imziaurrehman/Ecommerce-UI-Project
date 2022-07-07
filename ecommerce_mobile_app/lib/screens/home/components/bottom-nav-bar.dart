import 'package:ecommerce_mobile_app/consts.dart';
import 'package:ecommerce_mobile_app/enums.dart';
import 'package:ecommerce_mobile_app/screens/home/home-screen.dart';
import 'package:ecommerce_mobile_app/screens/profile/profile_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class CustomBottomNavigationBar extends StatelessWidget {
  CustomBottomNavigationBar({required this.selectedMenu});
  final menuState selectedMenu;

  @override
  Widget build(BuildContext context) {
    final Color antiAciveColor = Color(0xFFB6B6B6);
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            offset: Offset(0, -10),
            blurRadius: 20,
            color: Color(0xFFDADADA).withOpacity(0.4),
          ),
        ],
        // gradient: LinearGradient(
        //     begin: Alignment.topLeft,
        //     end: Alignment.bottomRight,
        //     colors: [
        //       Colors.black.withOpacity(0.1),
        //       Colors.black.withOpacity(0.1),

        //     ]),
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(40),
          topRight: Radius.circular(40),
        ),
        // border: Border.all(color: Colors.black12,width: 1),
      ),
      child: SafeArea(
        top: false,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            IconButton(
              icon: SvgPicture.asset(
                "assets/icons/Shop Icon.svg",
                color: menuState.home == selectedMenu
                    ? kprimarycolor
                    : antiAciveColor,
              ),
              onPressed: () {
                Navigator.of(context)
                    .pushReplacementNamed(Home_Screen.routeName);
              },
            ),
            IconButton(
              icon: SvgPicture.asset("assets/icons/Heart Icon.svg"),
              onPressed: () {},
            ),
            IconButton(
              icon: SvgPicture.asset("assets/icons/Chat bubble Icon.svg"),
              onPressed: () {},
            ),
            IconButton(
              icon: SvgPicture.asset(
                "assets/icons/User Icon.svg",
                color: menuState.profile == selectedMenu
                    ? kprimarycolor
                    : antiAciveColor,
              ),
              onPressed: () {
                Navigator.of(context).pushReplacementNamed(
                    Profile_Screen.routeName); //profile screen
              },
            ),
          ],
        ),
      ),
    );
  }
}
