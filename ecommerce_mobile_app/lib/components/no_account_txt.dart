import 'package:ecommerce_mobile_app/screens/signup/signup_screen.dart';
import 'package:flutter/material.dart';
import 'package:ecommerce_mobile_app/consts.dart';

class No_account_txt extends StatelessWidget {
  const No_account_txt({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          "Don\'t have an account?",
          style: const TextStyle(color: ksecondarycolor),
        ),
        GestureDetector(
          child: const Text("\tSign Up",style: TextStyle(color: kprimarycolor,fontWeight: FontWeight.bold,fontSize: 15),),
          onTap: () {
            Navigator.of(context).pushNamed(SignUpScreen.routeName);
          },
        ),
      ],
    );
  }
}
