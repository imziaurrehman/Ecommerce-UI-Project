import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import '../../../sizeConfig.dart';

class socialwidget extends StatelessWidget {
  const socialwidget({
    Key? key,
    required this.icon,
    required this.onPressed,
  }) : super(key: key);

final String? icon;
final Function? onPressed;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: Container(
        padding: EdgeInsets.all(10),
        child: SvgPicture.asset(icon!),
        width: getPropotionatelayoutWidth(40),
        height: getPropotionatelayoutheight(45),
        decoration: BoxDecoration(
          color: Color(0xFFF5F6F9),
          shape: BoxShape.circle,
        ),
      ),
      onTap: onPressed as void Function()?,
    );
  }
}
