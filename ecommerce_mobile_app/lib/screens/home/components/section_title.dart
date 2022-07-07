import 'package:flutter/material.dart';

class SectionTitle extends StatelessWidget {
  SectionTitle({
    Key? key,
    required this.text,
    required this.press,
  }) : super(key: key);
  final String? text;
  GestureTapCallback press;
  @override
  Widget build(BuildContext context) {
    return Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
      Padding(
        padding: EdgeInsets.only(left: 8),
        child: Text(
          text!,
          style: TextStyle(
              fontSize: 20, fontWeight: FontWeight.w600, color: Colors.black87),
        ),
      ),
      InkWell(
        child: Text("See More"),
        onTap: () {},
        borderRadius: BorderRadius.zero,
      ),
    ]);
  }
}
