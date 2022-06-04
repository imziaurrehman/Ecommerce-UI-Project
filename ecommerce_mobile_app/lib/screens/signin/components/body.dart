import 'package:flutter/material.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(flex: 2,
          child: Container(
            color: Colors.black45,
          ),
        ),
        // Spacer(),
        Expanded(
          flex: 3,
          child: Container(color: Colors.amberAccent,),
        ),
        Expanded(
          flex: 3,
          child: Container(
            color: Colors.deepOrange,
            // child: SizedBox(),
          ),
        )
      ],
    );
  }
}
