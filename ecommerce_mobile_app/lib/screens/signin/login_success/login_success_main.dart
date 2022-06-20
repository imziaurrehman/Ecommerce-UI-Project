import 'package:flutter/material.dart';
import '../login_success/components/body.dart';

class LoginIsSuccessfull extends StatelessWidget {
  static const routeName = "/login_success";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: SizedBox(),
        title: Text("Login Success"),
      ),
      body: body(),
    );
  }
}
