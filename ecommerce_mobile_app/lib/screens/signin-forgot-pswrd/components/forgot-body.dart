import 'package:ecommerce_mobile_app/components/default_button.dart';
import 'package:ecommerce_mobile_app/components/keybordutil.dart';
import 'package:ecommerce_mobile_app/components/no_account_txt.dart';
import 'package:ecommerce_mobile_app/components/suffixIcon.dart';
import 'package:ecommerce_mobile_app/sizeConfig.dart';
import 'package:flutter/material.dart';
import 'package:ecommerce_mobile_app/consts.dart';
import 'package:ecommerce_mobile_app/components/formerror.dart';

//"\nSign in with your email and password  \nor continue with social media"
class ForgotBody extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Padding(
        padding:
            EdgeInsets.symmetric(horizontal: getPropotionatelayoutWidth(20.0)),
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(
                height: SizeConfig.screen_height * 0.03,
              ),
              Text(
                "Forgot Password",
                style: TextStyle(
                  fontSize: getPropotionatelayoutWidth(28),
                  color: Colors.black,
                ),
              ),
              Text(
                "\nPlease enter your email and we will send \nyou a link to return to your account",
              ),
              SizedBox(
                height: SizeConfig.screen_height * 0.2,
              ),
              forgotformfield(),
            ],
          ),
        ),
      ),
    );
  }
}

class forgotformfield extends StatefulWidget {
  forgotformfield({
    Key? key,
  }) : super(key: key);

  @override
  State<forgotformfield> createState() => _forgotformfieldState();
}

class _forgotformfieldState extends State<forgotformfield> {
  final _formkey = GlobalKey<FormState>();
  List<String> errors = [];

  String? email;

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formkey,
      child: Column(
        children: [
          TextFormField(
            keyboardType: TextInputType.emailAddress,
            onSaved: (newValue) => email = newValue,
            onChanged: (value) {
              if (value.isNotEmpty && value.contains(kemailnullerror)) {
                setState(() {
                  errors.remove(kemailnullerror);
                });
              } else if (emailValidRegExp.hasMatch(value) &&
                  errors.contains(kInvalidEmailError)) {
                setState(() {
                  errors.remove(kInvalidEmailError);
                });
              }
              return null;
            }, // onchanged
            validator: (value) {
              if (value!.isEmpty && !errors.contains(kemailnullerror)) {
                setState(() {
                  errors.add(kemailnullerror);
                });
              } else if (!emailValidRegExp.hasMatch(value) &&
                  !errors.contains(kInvalidEmailError)) {
                setState(() {
                  errors.add(kInvalidEmailError);
                });
              }
              return null;
            }, //validator
            decoration: InputDecoration(
              contentPadding: EdgeInsets.symmetric(
                horizontal: 30,
              ),
              label: Text("Email"),
              hintText: "Enter your Email Address",
              floatingLabelBehavior: FloatingLabelBehavior.always,
              suffixIcon: SuffixIcons(
                svgIcon: "assets/icons/Mail.svg",
              ),
            ),
          ),
          SizedBox(
            height: getPropotionatelayoutheight(25),
          ),
          FormErrors(
            errors: errors,
          ),
          SizedBox(
            height: SizeConfig.screen_height * 0.1,
          ),
          DefaultButtons(
            text: "Continue",
            button: () {
              if (_formkey.currentState!.validate()) {
                //here your code ....
                KeyboardUtil.hidekeyboard(context);
                print("imAFRIDI");
              }
              ;
            },
          ),
          SizedBox(
            height: SizeConfig.screen_height * 0.1,
          ),
          No_account_txt(),
        ],
      ),
    );
  }
}
