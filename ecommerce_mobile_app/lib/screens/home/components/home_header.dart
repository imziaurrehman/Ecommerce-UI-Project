import 'package:ecommerce_mobile_app/consts.dart';
import 'package:ecommerce_mobile_app/screens/cart/cart_screen.dart';
import 'package:ecommerce_mobile_app/sizeConfig.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class HomeHeader extends StatelessWidget {
  const HomeHeader({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(
          horizontal: getPropotionatelayoutWidth(20),
          vertical: getPropotionatelayoutheight(20)),
      child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
        Container(
          decoration: BoxDecoration(
            color: Colors.grey.shade100,
            borderRadius: BorderRadius.circular(15),
          ),
          width: SizeConfig.screen_width * 0.6,
          child: TextFormField(
            decoration: const InputDecoration(
              contentPadding: EdgeInsets.symmetric(vertical: 10),
              border: InputBorder.none,
              enabledBorder: InputBorder.none,
              focusedBorder: InputBorder.none,
              // labelText: "",
              hintText: "Search for Items",
              prefixIcon: Icon(Icons.search),
            ),
            onChanged: (value) {
              //do what you want
            },
          ),
        ),
        IconButtonsWithCounter(
          svg_icon: "assets/icons/Cart Icon.svg",
          press: () {
            // cart Screen
            Navigator.pushReplacementNamed(context, Cart_Screen.routeName);
          },
          // numToCount: 3,
        ),
        IconButtonsWithCounter(
          svg_icon: "assets/icons/Bell.svg",
          press: () {},
          numToCount: 3,
        )
      ]),
    );
  }
}

class IconButtonsWithCounter extends StatelessWidget {
  const IconButtonsWithCounter({
    Key? key,
    required this.svg_icon,
    required this.press,
    this.numToCount = 0,
  }) : super(key: key);
  final GestureTapCallback press;
  final String svg_icon;
  final int numToCount;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      borderRadius: BorderRadius.circular(100),
      onTap: press as void Function()?,
      child: Stack(clipBehavior: Clip.none, children: [
        Container(
          padding: const EdgeInsets.all(10),
          decoration: BoxDecoration(
              color: Colors.grey.shade100, shape: BoxShape.circle),
          child: SvgPicture.asset(svg_icon),
        ),
        if (numToCount != 0)
          Positioned(
            right: 0,
            top: -1,
            child: Container(
              width: 15,
              height: 15,
              child: Text(
                "$numToCount",
                style: const TextStyle(
                    color: Colors.white,
                    fontSize: 10,
                    fontWeight: FontWeight.w600,
                    height: 1.1),
                textAlign: TextAlign.center,
              ),
              decoration: BoxDecoration(
                  color: Colors.red,
                  shape: BoxShape.circle,
                  border: Border.all(
                    color: Colors.white,
                    width: 1.3,
                  )),
            ),
          )
      ]),
    );
  }
}
