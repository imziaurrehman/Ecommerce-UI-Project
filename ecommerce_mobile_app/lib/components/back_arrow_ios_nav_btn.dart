import 'package:ecommerce_mobile_app/consts.dart';
import 'package:flutter/material.dart';

class BackArrowNavBtn extends StatelessWidget {
  const BackArrowNavBtn({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: SizedBox(
        child: iconData(),
        width: 20,
        height: 20,
      ),
      onTap: () => Navigator.pop(context),
    );
  }

  Icon iconData() {
    return Icon(
      Icons.arrow_back_ios_new,
      color: ksecondarycolor,
    );
  }
}
