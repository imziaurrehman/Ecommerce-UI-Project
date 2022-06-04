import 'package:flutter/material.dart';
import './screens/splash/splash_screen.dart';
import './screens/signin/signin_screen.dart';

final Map<String, WidgetBuilder> routes = {
  Splash_Screen.routeName: (context) => Splash_Screen(),
  SigninScreen.routeName: (context) => SigninScreen(),
};
