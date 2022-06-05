import 'package:flutter/material.dart';
import './components/body.dart';
import 'package:ecommerce_mobile_app/sizeConfig.dart';

class SigninScreen extends StatelessWidget {
  static const routeName = "/signin";
  @override
  Widget build(BuildContext context) {
     SizeConfig().init(context);
    return Scaffold(
      appBar: AppBar(
        // backgroundColor: Colors.grey,
        title: Text("Sign In"),
        leading: TextButton(
          child: SizedBox(
            child: iconData(),
            width: 10,
            height: 2,
          ),
          onPressed: () => Navigator.pop(context),
        ),
      ),
      body: Body(),
    );
  }

  Icon iconData() {
    return Icon(
      Icons.arrow_back_ios,
      color: Colors.black,
    );
  }
}
