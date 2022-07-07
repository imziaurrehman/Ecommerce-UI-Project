// ignore_for_file: non_constant_identifier_names

import 'package:ecommerce_mobile_app/sizeConfig.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

// ignore: must_be_immutable
class CategoriesItems extends StatelessWidget {
  CategoriesItems({
    Key? key,
  }) : super(key: key);

  List<Map<String, String>> category_items = [
    {"icon": "assets/icons/Flash Icon.svg", "text": "Flash Deal"},
    {"icon": "assets/icons/Bill Icon.svg", "text": "Bill"},
    {"icon": "assets/icons/Game Icon.svg", "text": "Game"},
    {"icon": "assets/icons/Gift Icon.svg", "text": "Daily Gift"},
    {"icon": "assets/icons/Discover.svg", "text": "More"},
  ];

  @override
  Widget build(BuildContext context) {
    return
        // SingleChildScrollView(
        //   scrollDirection: Axis.horizontal,
        //   child:
        Padding(
      padding: EdgeInsets.symmetric(
          horizontal: getPropotionatelayoutWidth(20),
          vertical: getPropotionatelayoutheight(20)),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: List.generate(
            category_items.length,
            (index) => CategoryCard(
                  text: category_items[index]["text"],
                  icon: category_items[index]["icon"],
                  press: () {},
                )),
        // ),
      ),
    );
  }
}

class CategoryCard extends StatelessWidget {
  const CategoryCard(
      {Key? key, required this.text, required this.icon, required this.press})
      : super(key: key);
  final String? text, icon;
  final GestureTapCallback press;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: press,
      child: SizedBox(
        width: getPropotionatelayoutWidth(50),
        child: Column(
          // mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
                padding: const EdgeInsets.all(15),
                height: getPropotionatelayoutheight(70),
                width: getPropotionatelayoutWidth(50),
                // margin: EdgeInsets.only(right: 4,),
                decoration: BoxDecoration(
                    color: const Color(0xFFFFECDF),
                    borderRadius: BorderRadius.circular(12)),
                child: SvgPicture.asset(
                  icon!,
                )),
            Text(
              text!,
              textAlign: TextAlign.center,
            ),
          ],
        ),
      ),
    );
  }
}
