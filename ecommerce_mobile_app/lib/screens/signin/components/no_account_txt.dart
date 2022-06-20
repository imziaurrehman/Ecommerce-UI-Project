import 'package:flutter/material.dart';
import 'package:ecommerce_mobile_app/consts.dart';

class no_account_txt extends StatelessWidget {
  const no_account_txt({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          "Don\'t have an account?",
          style: TextStyle(color: ksecondarycolor),
        ),
        GestureDetector(
          child: Text("\tSign Up"),
          onTap: () {
            print("object");
          },
        ),
      ],
    );
  }
}
