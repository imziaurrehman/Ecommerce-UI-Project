import 'package:flutter/material.dart';
import './sizeConfig.dart';

const kprimarycolor = Color(0xFFFF7643);
const kprimarylightcolor = Color(0xFFFFECDF);
const kgradientcolor = LinearGradient(
    begin: Alignment.topLeft,
    end: Alignment.bottomRight,
    colors: [Color(0xFFFFA53E), Color(0xFFFF7643)]);
const ksecondarycolor = Color(0xFF979797);
const ktextcolor = Color(0xFF757575);
const String kfontfamilybold = "assets/fonts/muli/Muli-Bold.ttf";
const kfontfamilylight = "assets/fonts/muli/Muli-Light.ttf";
const kAnimationDuration = Duration(milliseconds: 200);
const kAnimationDefaultDuration = Duration(milliseconds: 260);

final headingStyle = TextStyle(
  fontSize: getPropotionatelayoutWidth(24),
  fontWeight: FontWeight.bold,
  color: Colors.black,
  height: 1.2,
);

 String? validateEmail(String? value) {
    String pattern =
        r"^[a-zA-Z0-9.!#$%&'*+/=?^_`{|}~-]+@[a-zA-Z0-9](?:[a-zA-Z0-9-]"
        r"{0,253}[a-zA-Z0-9])?(?:\.[a-zA-Z0-9](?:[a-zA-Z0-9-]"
        r"{0,253}[a-zA-Z0-9])?)*$";
    RegExp regex = RegExp(pattern);
    if (value == null || value.isEmpty || !regex.hasMatch(value))
      return 'Enter a valid email address';
    else
      return null;
  }



final RegExp emailValidRegExp =
    RegExp(r"^[a-zA-Z0-9.]+@[a-zA-Z0-9]+\.[a-zA-Z]+");

const String kemailnullerror = "please entre your email address";
const String kInvalidEmailError = "please enter valid email address";
const String kPassNullError = "Please Enter your password";
const String kShortPassError = "Password is too short";
const String kMatchPassError = "Passwords don't match";
const String kNameNullError = "Please Enter your name";
const String kPhoneNumberNullError = "Please Enter your phone number";
const String kAddressNullError = "Please Enter your address";

final otpinputdecoration = InputDecoration(
  contentPadding: EdgeInsets.symmetric(vertical: getPropotionatelayoutheight(20)),
  border: outlineInputBorder(),
  focusedBorder: outlineInputBorder(),
  enabledBorder: outlineInputBorder(),
);

OutlineInputBorder outlineInputBorder() {
  return OutlineInputBorder(
    borderRadius: BorderRadius.circular(22),
    gapPadding: 5.0,
  );
}
