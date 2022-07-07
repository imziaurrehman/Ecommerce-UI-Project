import 'package:flutter/material.dart';

class KeyboardUtil{
  static void hidekeyboard(BuildContext context){
    FocusScopeNode currentfocus = FocusScope.of(context);
    if(!currentfocus.hasPrimaryFocus){
      currentfocus.unfocus();
    }
  }
  
}