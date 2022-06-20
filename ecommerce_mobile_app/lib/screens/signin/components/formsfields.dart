import 'package:ecommerce_mobile_app/components/default_button.dart';
import 'package:ecommerce_mobile_app/consts.dart';
import 'package:flutter/material.dart';
import 'package:ecommerce_mobile_app/sizeConfig.dart';
import 'package:ecommerce_mobile_app/components/suffixIcon.dart';
import '../login_success/login_success_main.dart';

class formfields extends StatefulWidget {
  const formfields({
    Key? key,
  }) : super(key: key);

  @override
  State<formfields> createState() => _formfieldsState();
}

class _formfieldsState extends State<formfields> {
  @override
  Widget build(BuildContext context) {
    return Form(
      child: SingleChildScrollView(
        child: Column(
          children: [
            buildEmailformfield(),
            SizedBox(
              height: getPropotionatelayoutheight(35),
            ),
            buildPasswordformfield(),
            // remember password check box
            SizedBox(
              height: getPropotionatelayoutheight(8),
            ),

            Row(
              children: [
                checkbox(),
                Text(
                  'Remember Me',
                  style: TextStyle(color: ksecondarycolor),
                ),
                Spacer(),
                Container(
                  child: TextButton(
                    child: Text("Forgot Password"),
                    style: TextButton.styleFrom(
                      primary: Colors.black87,
                    ),
                    onPressed: () {
                      print("hello");
                    },
                  ),
                  decoration: BoxDecoration(
                    border: Border(
                      bottom: BorderSide(color: ksecondarycolor, width: 1),
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: SizeConfig.screen_height * 0.05,
            ),
            DefaultButtons(
              text: "Continue",
              button: () {
                Navigator.of(context).pushNamed(LoginIsSuccessfull.routeName);
              },
            ),
          ],
        ),
      ),
    );
  }
}

bool? remember = false;

class checkbox extends StatefulWidget {
  const checkbox({
    Key? key,
  }) : super(key: key);
  @override
  State<checkbox> createState() => _checkboxState();
}

class _checkboxState extends State<checkbox> {
  @override
  Widget build(BuildContext context) {
    return Builder(builder: (context) {
      return Checkbox(
        value: remember,
        onChanged: (val) {
          setState(() {
            remember = val;
          });
        },
        activeColor: kprimarycolor,
      );
    });
  }
}

class buildPasswordformfield extends StatelessWidget {
  const buildPasswordformfield({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      decoration: InputDecoration(
        // border: outlineInputBorder(),
        labelText: "Password",
        hintText: "Enter Password Address",
        floatingLabelBehavior: FloatingLabelBehavior.always,
        suffixIcon: SuffixIcons(
          svgIcon: "assets/icons/Lock.svg",
        ),
      ),
    );
  }
}

class buildEmailformfield extends StatelessWidget {
  const buildEmailformfield({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      decoration: InputDecoration(
        // border: outlineInputBorder(),
        labelText: "E-mail",
        hintText: "Enter E-mail Address",
        floatingLabelBehavior: FloatingLabelBehavior.always,
        suffixIcon: SuffixIcons(
          svgIcon: "assets/icons/Mail.svg",
        ),
      ),
    );
  }
}
