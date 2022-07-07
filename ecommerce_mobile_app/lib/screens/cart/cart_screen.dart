import 'package:ecommerce_mobile_app/components/back_arrow_ios_nav_btn.dart';
import 'package:ecommerce_mobile_app/components/default_button.dart';
import 'package:ecommerce_mobile_app/consts.dart';
import 'package:ecommerce_mobile_app/screens/cart/components/cart_body.dart';
import 'package:ecommerce_mobile_app/sizeConfig.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_svg/flutter_svg.dart';
import '../model/cart.dart';

class Cart_Screen extends StatelessWidget {
  static const routeName = "/cart";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(context),
      body: Cart_Body(),
      bottomNavigationBar: Container(
        padding: EdgeInsets.symmetric(
            vertical: getPropotionatelayoutheight(22),
            horizontal: getPropotionatelayoutWidth(20)),
        decoration: BoxDecoration(
          color: Colors.white,
          boxShadow: [
            BoxShadow(
                blurRadius: 20,
                offset: Offset(0, -10),
                color: Colors.grey.withOpacity(0.1)),
          ],
          // border: Border.all(
          //     width: 2, color: kprimarycolor, style: BorderStyle.solid),
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(15),
            topRight: Radius.circular(15),
          ),
        ),
        child: Expanded(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    child: SvgPicture.asset("assets/icons/receipt.svg"),
                    padding: EdgeInsets.symmetric(vertical: 8, horizontal: 12),
                    decoration: BoxDecoration(
                        color: Colors.grey.shade100,
                        borderRadius: BorderRadius.circular(15)),
                  ),
                  Spacer(),
                  TextButton(
                    child: Row(
                      children: [
                        Text(
                          "Add voucher code\t\t",
                          style: TextStyle(color: ksecondarycolor),
                        ),
                        SvgPicture.asset("assets/icons/arrow_right.svg"),
                      ],
                    ),
                    onPressed: () {},
                    style: TextButton.styleFrom(
                        backgroundColor: Colors.grey.shade100),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text.rich(TextSpan(text: "Total:\n", children: [
                    TextSpan(
                        text: "\$${1234.34}",
                        style: TextStyle(
                            color: Colors.black87,
                            fontWeight: FontWeight.w600,
                            fontSize: 15)),
                  ])),
                  Spacer(),
                  Container(
                    width: SizeConfig.screen_width * 0.5,
                    height: getPropotionatelayoutheight(60),
                    // margin: EdgeInsets.symmetric(vertical: 10),
                    child: DefaultButtons(
                      text: "Check Out",
                      button: () {},
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  AppBar buildAppBar(BuildContext context) {
    return AppBar(
      title: Column(children: [
        Text(
          "Your Cart",
          style: TextStyle(color: Colors.black),
        ),
        Text("${demoCart.length}\titems",
            style: Theme.of(context).textTheme.caption)
      ]),
      leading: BackArrowNavBtn(),
    );
  }
}
