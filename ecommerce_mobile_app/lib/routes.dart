import 'package:ecommerce_mobile_app/screens/cart/cart_screen.dart';
import 'package:ecommerce_mobile_app/screens/complete_profile/complete_profile_screen.dart';
import 'package:ecommerce_mobile_app/screens/detail_screen/detail_screen.dart';
import 'package:ecommerce_mobile_app/screens/home/home-screen.dart';
import 'package:ecommerce_mobile_app/screens/otp/otp_screen.dart';
import 'package:ecommerce_mobile_app/screens/profile/profile_screen.dart';
import 'package:ecommerce_mobile_app/screens/signin-forgot-pswrd/forgot-password-screen.dart';
import 'package:ecommerce_mobile_app/screens/signup/signup_screen.dart';
import 'package:flutter/material.dart';
import './screens/splash/splash_screen.dart';
import './screens/signin/signin_screen.dart';
import './screens/signin/login_success/login_success_main.dart';

final Map<String, WidgetBuilder> routes = {
  Splash_Screen.routeName: (context) => Splash_Screen(),
  SigninScreen.routeName: (context) => SigninScreen(),
  LoginIsSuccessfull.routeName: (context) => LoginIsSuccessfull(),
  Forgot_Password_Screen.routeName: (context) => Forgot_Password_Screen(),
  SignUpScreen.routeName: (context) => SignUpScreen(),
  Home_Screen.routeName: (context) => Home_Screen(),
  Complete_Profile_Screen.routeName: (context) => Complete_Profile_Screen(),
  Otp_Screen.routeName: (context) => Otp_Screen(),
  Detail_Screen.routeName: (context) => Detail_Screen(),
  Cart_Screen.routeName: (context) => Cart_Screen(),
  Profile_Screen.routeName: (context) => Profile_Screen(),
};
