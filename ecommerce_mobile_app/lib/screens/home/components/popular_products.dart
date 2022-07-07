import 'package:ecommerce_mobile_app/components/rich_text.dart';
import 'package:ecommerce_mobile_app/consts.dart';
import 'package:ecommerce_mobile_app/screens/detail_screen/detail_screen.dart';
import 'package:ecommerce_mobile_app/sizeConfig.dart';
import 'package:flutter/material.dart';
import '../../model/products.dart';
import 'section_title.dart';

// ignore: must_be_immutable
class Popularproducts extends StatelessWidget {
  Popularproducts({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        left: 20,
      ),
      child: Column(
        children: [
          SectionTitle(
            text: "Popular Product",
            press: () {},
          ),
          const SizedBox(
            height: 20,
          ),
          SizedBox(
            width: double.infinity,
            child: SingleChildScrollView(
              // padding: const EdgeInsets.symmetric(vertical: 0,horizontal: 50),
              scrollDirection: Axis.horizontal,
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: List.generate(
                  demoProductItems.length,
                  (index) {
                    if (demoProductItems[index].ispopular) {
                      return PproductsList(
                        products: demoProductItems[index],
                      );
                    }
                    return SizedBox.shrink(); // default width and height
                  },
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class PproductsList extends StatelessWidget {
  const PproductsList({
    Key? key,
    required this.products,
    // required this.img,
    // required this.press,
  }) : super(key: key);

  // final String? img;
  final Products products;
  // final GestureTapCallback press;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.pushReplacementNamed(context, Detail_Screen.routeName,
            arguments: ProductsArguments(products: products));
      },
      borderRadius: BorderRadius.circular(20),
      child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
        Container(
          height: getPropotionatelayoutheight(130),
          width: getPropotionatelayoutWidth(110),
          decoration: BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
                colors: [
                  Colors.grey.withOpacity(0.2),
                  Colors.grey.withOpacity(0.40),
                ],
              ),
              borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(20), topRight: Radius.circular(20))),
          padding: const EdgeInsets.all(12.0),
          margin: EdgeInsets.symmetric(horizontal: 6),
          child: Image.asset(
            products.images[0],
            // height: 80,
            // width: 150,
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 10),
          child: RichText(
            text: TextSpan(
                text: "${products.title}\n",
                style: TextStyle(color: kprimarycolor.withOpacity(0.8)),
                children: [
                  TextSpan(
                    text: "\$${products.amount}",
                    style: TextStyle(
                        color: kprimarycolor,
                        fontWeight: FontWeight.w500,
                        fontSize: 16),
                  )
                ]),
            maxLines: 3,
            textScaleFactor: 0.9,
          ),
        ),
      ]),
    );
  }
}
