import 'package:ecommerce_mobile_app/sizeConfig.dart';
import 'package:flutter/material.dart';

class login_success_text extends StatelessWidget {
  const login_success_text({
    Key? key,
    required this.text,
  }) : super(key: key);
  final String text;
  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
          fontWeight: FontWeight.w500,
          fontSize: SizeConfig.screen_width * 0.08,
          color: Colors.black),
      textAlign: TextAlign.justify,
    );
  }
}
