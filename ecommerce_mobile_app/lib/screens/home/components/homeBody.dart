import 'package:ecommerce_mobile_app/consts.dart';
import 'package:ecommerce_mobile_app/sizeConfig.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'banner_text_container.dart';
import 'categories_item.dart';
import 'home_header.dart';
import 'popular_products.dart';
import 'section_title.dart';
import 'special_offer.dart';

// ignore: camel_case_types
class Home_Body extends StatelessWidget {
  const Home_Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SizedBox(
        width: double.infinity,
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const HomeHeader(),
              SizedBox(
                height: getPropotionatelayoutheight(0),
              ),
              const Banner_Text_Container(),
              SizedBox(
                height: getPropotionatelayoutheight(0),
              ),
              CategoriesItems(),
              SizedBox(
                height: getPropotionatelayoutheight(0),
              ),
              const SpecialOffers(),
              SizedBox(
                height: getPropotionatelayoutheight(12),
              ),
              //popular product class
              Popularproducts(),
            ],
          ),
        ),
      ),
    );
  }
}
