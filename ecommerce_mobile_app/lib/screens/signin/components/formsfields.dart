import 'package:ecommerce_mobile_app/components/default_button.dart';
import 'package:ecommerce_mobile_app/components/formerror.dart';
import 'package:ecommerce_mobile_app/components/keybordutil.dart';
import 'package:ecommerce_mobile_app/components/suffixIcon.dart';
import 'package:ecommerce_mobile_app/consts.dart';
import 'package:ecommerce_mobile_app/screens/signin-forgot-pswrd/forgot-password-screen.dart';
import 'package:flutter/material.dart';
import 'package:ecommerce_mobile_app/sizeConfig.dart';
import '../login_success/login_success_main.dart';

class SigninFormfields extends StatefulWidget {
  SigninFormfields({
    Key? key,
  }) : super(key: key);

  @override
  State<SigninFormfields> createState() => _SigninFormfieldsState();
}

class _SigninFormfieldsState extends State<SigninFormfields> {
  final _formkey = GlobalKey<FormState>();

  bool? remember = false;

  String? email;

  String? password;

  final List<String?> errors = [];

  void addError({String? error}) {
    if (!errors.contains(error))
      setState(() {
        errors.add(error);
      });
  }

  void removeError({String? error}) {
    if (errors.contains(error))
      setState(() {
        errors.remove(error);
      });
  }

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formkey,
      child: Column(
        children: [
          buildEmailForm(),
          SizedBox(
            height: getPropotionatelayoutheight(35),
          ),
          buildPasswordForm(),
          // remember password check box
          SizedBox(
            height: getPropotionatelayoutheight(8),
          ),
          FormErrors(
            errors: errors,
          ),

          Row(
            children: [
              Checkbox(
                value: remember,
                onChanged: (val) {
                  setState(() {
                    remember = val;
                  });
                },
                activeColor: kprimarycolor,
              ),
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
                    Navigator.of(context)
                        .pushNamed(Forgot_Password_Screen.routeName);
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
              if (_formkey.currentState!.validate()) {
                print("form is valid");
                _formkey.currentState!.save();
                print("form is saved");
                KeyboardUtil.hidekeyboard(context);
                Navigator.of(context).pushNamed(LoginIsSuccessfull.routeName);
              }
            },
          ),
        ],
      ),
    );
  }

  TextFormField buildEmailForm() {
    return TextFormField(
      keyboardType: TextInputType.emailAddress,
      onSaved: (newValue) => email = newValue,
      onChanged: (value) {
        if (value.isNotEmpty) {
          removeError(error: kemailnullerror);
        } else if (emailValidRegExp.hasMatch(value)) {
          removeError(error: kInvalidEmailError);
        }
        return null;
      },
      validator: (value) {
        if (value!.isEmpty) {
          addError(error: kemailnullerror);
          return "";
        } else if (!emailValidRegExp.hasMatch(value)) {
          addError(error: kInvalidEmailError);
          return "";
        }
        return null;
      },
      decoration: InputDecoration(
        // border: outlineInputBorder(),
        contentPadding: EdgeInsets.symmetric(
            vertical: getPropotionatelayoutheight(15), horizontal: 30),

        labelText: "E-mail",
        hintText: "Enter your E-mail Address",
        floatingLabelBehavior: FloatingLabelBehavior.always,
        suffixIcon: SuffixIcons(
          svgIcon: "assets/icons/Mail.svg",
        ),
      ),
    );
  }

  TextFormField buildPasswordForm() {
    return TextFormField(
      obscureText: true,
      onSaved: (newValue) => password = newValue,
      onChanged: (value) {
        if (value.isNotEmpty) {
          removeError(error: kPassNullError);
        } else if (value.length >= 4) {
          removeError(error: kShortPassError);
        }
        return null;
      },
      validator: (value) {
        if (value!.isEmpty) {
          addError(error: kPassNullError);
          return "";
        } else if (value.length < 4) {
          addError(error: kShortPassError);
          return "";
        }
        return null;
      },
      decoration: InputDecoration(
        // border: outlineInputBorder(),
        contentPadding: EdgeInsets.symmetric(
            vertical: getPropotionatelayoutheight(15), horizontal: 30),

        labelText: "Password",
        hintText: "Enter your Password",
        floatingLabelBehavior: FloatingLabelBehavior.always,
        suffixIcon: SuffixIcons(
          svgIcon: "assets/icons/Lock.svg",
        ),
      ),
    );
  }
}
