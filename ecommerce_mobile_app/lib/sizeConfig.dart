import 'package:flutter/material.dart';

class SizeConfig {
  static late MediaQueryData _mediaQueryData;
  static late double screen_width;
  static late double screen_height;
  static double? default_size;
  static Orientation? orientation;

  void init(BuildContext context) {
    _mediaQueryData = MediaQuery.of(context);
    screen_width = MediaQuery.of(context).size.width;
    screen_height = MediaQuery.of(context).size.height;
    orientation = MediaQuery.of(context).orientation;
  }
}

double getPropotionatelayoutheight(double heightPerlayout) {
  double height = SizeConfig.screen_height;
  return (heightPerlayout / 810.0) * height;
}

double getPropotionatelayoutWidth(double widthPerlayout) {
  double width = SizeConfig.screen_width;
  return (widthPerlayout / 320.0) * width;
}
