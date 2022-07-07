import 'package:ecommerce_mobile_app/consts.dart';
import 'package:ecommerce_mobile_app/screens/model/products.dart';
import 'package:ecommerce_mobile_app/sizeConfig.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class ProductDescription extends StatelessWidget {
  const ProductDescription({
    Key? key,
    required this.product,
    required this.presstxtExpands,
  }) : super(key: key);
  final Products product;
  final GestureTapCallback presstxtExpands;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: getPropotionatelayoutheight(210),
      decoration: const BoxDecoration(
          // color: Colors.white,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(18),
            topRight: Radius.circular(18),
          )),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Text(
              product.title,
              style: Theme.of(context).textTheme.headline6,
            ),
          ),
          Align(
            alignment: Alignment.centerRight,
            child: Container(
              width: 60,
              height: 40,
              padding: const EdgeInsets.all(12),
              child: SvgPicture.asset(
                'assets/icons/Heart Icon_2.svg',
                color: product.isfavourite ? Colors.red : ksecondarycolor,
              ),
              decoration: BoxDecoration(
                color: Colors.red.withOpacity(0.1),
                borderRadius: const BorderRadius.only(
                    topLeft: Radius.circular(15),
                    bottomLeft: Radius.circular(15)),
              ),
            ),
          ),
          Container(
              width: getPropotionatelayoutWidth(250),
              padding: const EdgeInsets.symmetric(vertical: 4, horizontal: 20),
              child: Text(
                product.detail,
                textAlign: TextAlign.start,
                maxLines: 3,
                style: const TextStyle(color: ksecondarycolor),
              )),
          GestureDetector(
            onTap: presstxtExpands,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 18),
              child: Row(
                children: [
                  Text(
                    "See More Detail\t",
                    style: TextStyle(color: kprimarycolor),
                  ),
                  Icon(
                    Icons.arrow_forward_ios,
                    size: 12,
                    color: kprimarycolor,
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
