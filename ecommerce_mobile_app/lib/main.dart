import 'package:ecommerce_mobile_app/routes.dart';
import 'package:flutter/material.dart';

import './screens/splash/splash_screen.dart';
import './theme.dart';
import './web-scroll-behaviour.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      scrollBehavior: AppScrollBehaviour(),
      title: 'Flutter Demo',
      theme: theme(),
      initialRoute: Splash_Screen.routeName,
      routes: routes,
    );
  }
}

//github flutter project integeration
// step by step
/*
1. git --version
2. git init          //create repo
3. git add .
4. git comment -m "description"
5. git branch -M BranchName
6. git remote add origin reopUrl
6. git -u origin BranchNam
*/

/*
Add modified files to that remote project;
Step-1 Step by step 3 commands to upload modified files/folders.
→ 1. git add .
→ 2. git commit -m "description"
→ 3. git push -u origin branchName
*/
//token_access --> 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
