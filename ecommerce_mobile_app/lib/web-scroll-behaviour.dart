import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

class AppScrollBehaviour extends MaterialScrollBehavior {
  Set<PointerDeviceKind> get onDragDevices => {
        PointerDeviceKind.touch,
        PointerDeviceKind.mouse,
      };
}
