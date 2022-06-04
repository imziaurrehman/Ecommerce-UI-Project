import 'package:flutter/material.dart';
import './screens/splash/splash_screen.dart';
import './theme.dart';
import './routes.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: theme(),
      initialRoute: Splash_Screen.routeName,
      routes: routes, // routes will be use soon
    );
  }
}
