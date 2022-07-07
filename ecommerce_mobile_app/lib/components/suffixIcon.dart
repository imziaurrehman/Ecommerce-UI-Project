import 'package:flutter/material.dart';
import 'package:ecommerce_mobile_app/sizeConfig.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SuffixIcons extends StatelessWidget {
  SuffixIcons({required this.svgIcon});
  final String svgIcon;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.fromLTRB(0, getPropotionatelayoutWidth(10),
          getPropotionatelayoutWidth(20), getPropotionatelayoutWidth(10)),
      child: SvgPicture.asset(
        svgIcon,
        width: getPropotionatelayoutWidth(18),
      ),
    );
  }
}
