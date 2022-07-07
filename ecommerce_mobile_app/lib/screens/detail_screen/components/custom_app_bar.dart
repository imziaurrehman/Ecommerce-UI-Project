import 'package:ecommerce_mobile_app/consts.dart';
import 'package:ecommerce_mobile_app/sizeConfig.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({
    Key? key,
    required this.rating,
  }) : super(key: key);
  final double rating;
  Size get prefferedSize => Size.fromHeight(AppBar().preferredSize.height);
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 20,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 24),
              child: SizedBox(
                width: getPropotionatelayoutWidth(40),
                height: getPropotionatelayoutheight(40),
                child: TextButton(
                  child: SvgPicture.asset(
                    "assets/icons/Back ICon.svg",
                    height: 15,
                  ),
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  style: TextButton.styleFrom(
                    primary: kprimarycolor,
                    backgroundColor: Colors.white,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(60)),
                    padding: EdgeInsets.zero,
                  ),
                ),
              ),
            ),
            Container(
              margin: const EdgeInsets.only(top: 25),
              padding: EdgeInsets.symmetric(vertical: 2, horizontal: 6,),
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(20)),
              child: Row(children: [
                Text(
                  rating.toString(),
                  style: TextStyle(fontSize: 16,fontWeight: FontWeight.w500,color: Colors.black),
                ),
                Container(
                  margin: EdgeInsets.symmetric(horizontal: 6),
                  child: SvgPicture.asset(
                    "assets/icons/Star Icon.svg",
                    height: 15,
                  ),
                )
              ]),
            )
          ],
        ),
      ),
    );
  }
}
