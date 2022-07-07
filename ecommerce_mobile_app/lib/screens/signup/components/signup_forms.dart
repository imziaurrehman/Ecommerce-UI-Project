import 'package:ecommerce_mobile_app/components/default_button.dart';
import 'package:ecommerce_mobile_app/components/formerror.dart';
import 'package:ecommerce_mobile_app/components/keybordutil.dart';
import 'package:ecommerce_mobile_app/components/suffixIcon.dart';
import 'package:ecommerce_mobile_app/consts.dart';
import 'package:ecommerce_mobile_app/screens/complete_profile/complete_profile_screen.dart';
import 'package:ecommerce_mobile_app/sizeConfig.dart';
import 'package:flutter/material.dart';

class SignupForms extends StatefulWidget {
  SignupForms({
    Key? key,
  }) : super(key: key);

  @override
  State<SignupForms> createState() => _SignupFormsState();
}

class _SignupFormsState extends State<SignupForms> {
  final _formkey = GlobalKey<FormState>();
  String? email;

  String? password;

  String? comfirm_password;

  bool remember = false;

  final List<String?> errors = [];

  void addErrors({String? error}) {
    if (!errors.contains(error)) {
      setState(() {
        errors.add(error);
      });
    }
    print(error);
  }

  void removeErrors({String? error}) {
    if (errors.contains(error)) {
      setState(() {
        errors.remove(error);
      });
    }
    print(error);
  }

  @override
  Widget build(BuildContext context) {
    print(email);
    print(password);
    print(comfirm_password);

    return Form(
      key: _formkey,
      child: Column(
        children: [
          buildEmailFormField(),
          SizedBox(
            height: SizeConfig.screen_height * 0.04,
          ),
          buildPasswordFormField(),
          SizedBox(
            height: SizeConfig.screen_height * 0.04,
          ),
          buildConfirm_PasswordFormField(),
          SizedBox(
            height: SizeConfig.screen_height * 0.02,
          ),
          FormErrors(
            errors: errors,
          ),
          SizedBox(
            height: SizeConfig.screen_height * 0.02,
          ),
          DefaultButtons(
            text: "Continue",
            button: () {
              if (_formkey.currentState!.validate()) {
                print("validation is okay");
                _formkey.currentState!.save();
                print("saved is okay");
                KeyboardUtil.hidekeyboard(context);
                //complete profile screen
                Navigator.of(context)
                    .pushReplacementNamed(Complete_Profile_Screen.routeName);
              }
            },
          ),
        ],
      ),
    );
  }

  TextFormField buildEmailFormField() {
    return TextFormField(
      keyboardType: TextInputType.emailAddress,
      onChanged: (value) {
        // email = value;
        if (value.isNotEmpty) {
          removeErrors(error: kemailnullerror);
        } else if (emailValidRegExp.hasMatch(value)) {
          removeErrors(error: kInvalidEmailError);
        }
        return null;
      },
      validator: (value) {
        if (value!.isEmpty) {
          addErrors(error: kemailnullerror);
          return '';
        } else if (!emailValidRegExp.hasMatch(value)) {
          addErrors(error: kInvalidEmailError);
          return '';
        } else if (!value.contains('@') || !value.contains('.com')) {
          addErrors(error: kInvalidEmailError);
          return '';
        }
        return null;
      },
      onSaved: (newValue) {
        if (newValue != null) email = newValue;
      },
      decoration: InputDecoration(
        label: const Text("Email"),
        hintText: "Enter your Email Address",
        suffixIcon: SuffixIcons(
          svgIcon: "assets/icons/Mail.svg",
        ),
        contentPadding: EdgeInsets.symmetric(
            vertical: getPropotionatelayoutheight(15), horizontal: 30),
      ),
    ); //textformfield
  }

  TextFormField buildPasswordFormField() {
    return TextFormField(
      keyboardType: TextInputType.visiblePassword,
      obscureText: true,
      obscuringCharacter: "*",
      onSaved: (newValue) => password = newValue,
      onChanged: (value) {
        if (value.isNotEmpty) {
          removeErrors(error: kPassNullError);
        } else if (value.length >= 4) {
          removeErrors(error: kShortPassError);
        }
        password = value;
      },
      validator: (value) {
        if (value == null || value.isEmpty) {
          addErrors(error: kPassNullError);
          return '';
        } else if (value.length < 4) {
          addErrors(error: kShortPassError);
          return '';
        }
        return null;
      },
      decoration: InputDecoration(
        label: const Text("Password"),
        hintText: "Enter your Password ",
        suffixIcon: SuffixIcons(
          svgIcon: "assets/icons/Lock.svg",
        ),
        contentPadding: EdgeInsets.symmetric(
            vertical: getPropotionatelayoutheight(15), horizontal: 30),
      ),
    );
  }

  // ignore: non_constant_identifier_names
  TextFormField buildConfirm_PasswordFormField() {
    return TextFormField(
      keyboardType: TextInputType.visiblePassword,
      obscureText: true,
      obscuringCharacter: "*",
      onSaved: (newValue) => comfirm_password = newValue,
      onChanged: (value) {
        if (value.isNotEmpty) {
          removeErrors(error: kPassNullError);
        } else if (value.isNotEmpty && password == comfirm_password) {
          removeErrors(error: kMatchPassError);
        }
        comfirm_password = value;
      },
      validator: (value) {
        if (value!.isEmpty) {
          addErrors(error: kPassNullError);
          return "";
        } else if (password != value) {
          addErrors(error: kMatchPassError);
          return "";
        }
        return null;
      },
      decoration: InputDecoration(
        label: const Text("Confirm Password"),
        hintText: "Re-Enter your Confirm Password",
        suffixIcon: SuffixIcons(
          svgIcon: "assets/icons/Lock.svg",
        ),
        contentPadding: EdgeInsets.symmetric(
            vertical: getPropotionatelayoutheight(15), horizontal: 30),
      ),
    );
  }
}
