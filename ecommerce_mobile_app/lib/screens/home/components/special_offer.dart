import 'package:ecommerce_mobile_app/sizeConfig.dart';
import 'package:flutter/material.dart';

class SpecialOffers extends StatelessWidget {
  const SpecialOffers({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Padding(
        padding: EdgeInsets.only(left: 20,),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Padding(
              padding: EdgeInsets.only(left: 8),
              child: Text(
                "Special for you",
                style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w600,
                    color: Colors.black),
              ),
            ),
            SizedBox(
              height: getPropotionatelayoutheight(20),
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  SpecialOfferCard(
                    img: "assets/images/Image Banner 2.png",
                    category: "Smart Phone",
                    numOfBrands: 10,
                    press: () {},
                  ),
                  SpecialOfferCard(
                    img: "assets/images/Image Banner 3.png",
                    category: "Fashion",
                    numOfBrands: 10,
                    press: () {},
                  ),
                  SpecialOfferCard(
                    img: "assets/images/Image Banner 3.png",
                    category: "Smart Phone",
                    numOfBrands: 25,
                    press: () {},
                  ),
                  SpecialOfferCard(
                    img: "assets/images/Image Banner 2.png",
                    category: "Fashion",
                    numOfBrands: 12,
                    press: () {},
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

class SpecialOfferCard extends StatelessWidget {
  const SpecialOfferCard({
    Key? key,
    required this.img,
    required this.category,
    required this.numOfBrands,
    required this.press,
  }) : super(key: key);
  final String? category, img;
  final int numOfBrands;
  final GestureTapCallback press;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: press,
      child: SizedBox(
          width: getPropotionatelayoutWidth(215),
          height: getPropotionatelayoutheight(140),
          child: Padding(
            padding: const EdgeInsets.only(left: 8),
            child: Stack(
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(20),
                  child: Image.asset(
                    img!,
                    fit: BoxFit.cover,
                    height: 140,
                  ),
                ),
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    gradient: LinearGradient(colors: [
                      Colors.black.withOpacity(0.4),
                      Colors.black.withOpacity(0.15)
                    ], begin: Alignment.topLeft, end: Alignment.bottomRight),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 15, top: 25),
                  child: RichText(
                    text: TextSpan(
                        text: category,
                        style: const TextStyle(
                          fontSize: 22,
                          fontWeight: FontWeight.w600,
                        ),
                        children: [
                          TextSpan(
                            text: "\n$numOfBrands Brand",
                            style: const TextStyle(fontSize: 16),
                          )
                        ]),
                  ),
                ),
              ],
            ),
            // ),
          )),
    );
  }
}
