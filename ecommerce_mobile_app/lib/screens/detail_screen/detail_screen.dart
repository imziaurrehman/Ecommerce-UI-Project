import 'package:ecommerce_mobile_app/consts.dart';
import 'package:ecommerce_mobile_app/screens/detail_screen/components/detail_body.dart';
import 'package:ecommerce_mobile_app/screens/model/products.dart';
import 'package:ecommerce_mobile_app/sizeConfig.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'components/custom_app_bar.dart';

class Detail_Screen extends StatelessWidget {
  static const routeName = "/detail";
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    final ProductsArguments product_args =
        ModalRoute.of(context)!.settings.arguments as ProductsArguments;
    return Scaffold(
      backgroundColor: Color(0xFFF5F6F9),
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(AppBar().preferredSize.height),
        child: // CustomAppBar widget here
            CustomAppBar(
          rating: product_args.products.rating,
        ),
      ),
      body: Detail_Body(
        product: product_args.products,
      ),
    );
  }
}

class ProductsArguments {
  final Products products;
  ProductsArguments({required this.products});
}
