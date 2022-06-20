import 'package:flutter/material.dart';
import './screens/splash/splash_screen.dart';
import './screens/signin/signin_screen.dart';
import './screens/signin/login_success/login_success_main.dart';

final Map<String, WidgetBuilder> routes = {
  Splash_Screen.routeName: (context) => Splash_Screen(),
  SigninScreen.routeName: (context) => SigninScreen(),
  LoginIsSuccessfull.routeName: (context) => LoginIsSuccessfull(),
};
