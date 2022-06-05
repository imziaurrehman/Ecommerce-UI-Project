import 'package:ecommerce_mobile_app/screens/signin/components/rich_text.dart';
import 'package:flutter/material.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(20.0),
      child: Column(
        children: [
          Expanded(
            flex: 2,
            child: Container(
              color: Colors.transparent,
              child: TextRich(),
            ),
          ),
          Expanded(
            flex: 3,
            child: Container(
              color: Colors.transparent,
              width: double.infinity,
              child: ,
            ),
          ),
          Expanded(
            flex: 3,
            child: Container(
              width: double.infinity,
              color: Colors.deepOrange,
              child: Text(
                  "skjdjbjkfskdfkdfkdnfkdnfkdnasflksfsfsdfidsfishfsihfifhuihsjdbfdsfjk"),
            ),
          )
        ],
      ),
    );
  }
}

