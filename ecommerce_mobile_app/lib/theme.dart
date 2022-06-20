import 'package:ecommerce_mobile_app/sizeConfig.dart';
import 'package:flutter/material.dart';
import './consts.dart';

ThemeData theme() {
  return ThemeData(
    scaffoldBackgroundColor: Colors.white,
    fontFamily: "muli",
    appBarTheme: appBarTheme(),
    textTheme: textTheme(),
    inputDecorationTheme: inputDecorationTheme(),
    visualDensity: VisualDensity.adaptivePlatformDensity,
  );
}

InputDecorationTheme inputDecorationTheme() {
  OutlineInputBorder outlineInputBorder = OutlineInputBorder(
    borderRadius: BorderRadius.all(Radius.circular(15)),
    borderSide: BorderSide(color: kprimarycolor),
    gapPadding: 10.0,
  );
  return InputDecorationTheme(
    border: outlineInputBorder,
    floatingLabelBehavior: FloatingLabelBehavior.always,
    focusedBorder: outlineInputBorder,
    contentPadding: EdgeInsets.symmetric(vertical: 15.0, horizontal: 10.0),
  );
}

TextTheme textTheme() {
  return TextTheme(
    bodyText1: TextStyle(color: kprimarycolor),
    bodyText2: TextStyle(color: ksecondarycolor),
  );
}

AppBarTheme appBarTheme() {
  return AppBarTheme(
    color: Colors.white,
    brightness: Brightness.light,
    centerTitle: true,
    elevation: 0.0,
    toolbarHeight: 85,
    iconTheme: IconThemeData(color: Colors.black),
    titleTextStyle: TextTheme(
      headline6: TextStyle(
        color: Color(0XFF8B8B8B),
        fontSize: 18,
      ),
    ).headline6,
  );
}
