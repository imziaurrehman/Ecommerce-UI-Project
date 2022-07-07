import 'package:ecommerce_mobile_app/sizeConfig.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class FormErrors extends StatelessWidget {
  @override
  FormErrors({required this.errors});

  final List<String?> errors;
  Widget build(BuildContext context) {
    return Column(
        children: List.generate(
            errors.length, (index) => FormErrorText(error: errors[index]!)));
  }
}

Row FormErrorText({required String error}) {
  return Row(
    children: [
      SvgPicture.asset(
        "assets/icons/Error.svg",
        height: getPropotionatelayoutheight(16),
        width: getPropotionatelayoutWidth(16),
      ),
      SizedBox(
        width: getPropotionatelayoutheight(10),
      ),
      Text(error),
    ],
  );
}
