import 'package:flutter/material.dart';
// import './sizeConfig.dart';

const kprimarycolor = Color(0xFFFF7643);
const kprimarylightcolor = Color(0xFFFFECDF);
const kgradientcolor = LinearGradient(
    begin: Alignment.topLeft,
    end: Alignment.bottomRight,
    colors: [Color(0xFFFFA53E), Color(0xFFFF7643)]);
const ksecondarycolor = Color(0xFF979797);
const ktextcolor = Color(0xFF757575);
const String? kfontfamilybold = "assets/fonts/muli/Muli-Bold.ttf";
const kfontfamilylight = "assets/fonts/muli/Muli-Light.ttf";
const kAnimationDuration = Duration(milliseconds: 200);
const kAnimationDefaultDuration = Duration(milliseconds: 260);




OutlineInputBorder outlineInputBorder(){
  return OutlineInputBorder(borderRadius: BorderRadius.circular(25),gapPadding: 5.0,);
}