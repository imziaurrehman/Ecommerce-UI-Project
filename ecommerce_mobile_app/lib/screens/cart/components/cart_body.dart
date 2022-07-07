import 'package:ecommerce_mobile_app/components/rich_text.dart';
import 'package:ecommerce_mobile_app/consts.dart';
import 'package:ecommerce_mobile_app/screens/model/cart.dart';
import 'package:ecommerce_mobile_app/sizeConfig.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Cart_Body extends StatefulWidget {
  @override
  State<Cart_Body> createState() => _Cart_BodyState();
}

class _Cart_BodyState extends State<Cart_Body> {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: demoCart.length,
      itemBuilder: (context, index) => Dismissible(
        direction: DismissDirection.endToStart,
        key: Key(demoCart[index].products.id.toString()),
        onDismissed: (direction) {
          setState(() {
            demoCart.removeAt(index);
          });
        },
        background: Container(
          padding: EdgeInsets.symmetric(horizontal: 20),
          decoration: BoxDecoration(
              color: Colors.red.withOpacity(0.1),
              borderRadius: BorderRadius.circular(20)),
          child: Row(
            children: [
              Spacer(),
              SvgPicture.asset(
                "assets/icons/Trash.svg",
                color: Colors.red,
                alignment: Alignment.centerRight,
              ),
            ],
          ),
        ),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(
              width: 88,
              child: AspectRatio(
                aspectRatio: 0.88,
                child: Container(
                    margin: EdgeInsets.symmetric(vertical: 6, horizontal: 10),
                    padding: EdgeInsets.all(10),
                    decoration: BoxDecoration(
                        color: Colors.grey.shade200,
                        borderRadius: BorderRadius.circular(15)),
                    // width: getPropotionatelayoutWidth(75),
                    // height: getPropotionatelayoutheight(100),
                    child: Image.asset(demoCart[index].products.images[0])),
              ),
            ),
            SizedBox(
              width: 0,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  demoCart[index].products.title,
                  style: TextStyle(
                    fontWeight: FontWeight.w600,
                    color: Colors.black54,
                    fontSize: 16,
                  ),
                  maxLines: 2,
                ),
                RichText(
                  text: TextSpan(
                      text: "\n\$${demoCart[index].products.amount}",
                      style: TextStyle(color: kprimarycolor),
                      children: [
                        TextSpan(
                          text: "\tx${demoCart[index].sumOfNums}",
                          style: TextStyle(color: ksecondarycolor),
                        )
                      ]),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
