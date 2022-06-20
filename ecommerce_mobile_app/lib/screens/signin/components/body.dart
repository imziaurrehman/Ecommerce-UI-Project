import 'package:ecommerce_mobile_app/screens/signin/components/rich_text.dart';
import 'package:ecommerce_mobile_app/sizeConfig.dart';
import 'package:flutter/material.dart';
import 'formsfields.dart';
import 'no_account_txt.dart';
import 'socialwidget.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        FocusScope.of(context).requestFocus(FocusNode());
      },
      child: Padding(
        padding: EdgeInsets.all(20.0),
        child: Column(
          children: [
            Expanded(
              flex: 3,
              child: Container(
                width: double.infinity,
                // color: Colors.blueGrey,
                child: TextRich(),
              ),
            ),
            Spacer(),
            Expanded(
              flex: 8,
              child: Container(
                // color: Colors.grey,
                width: double.infinity,
                child: formfields(),
              ),
            ),
            Expanded(
              flex: 2,
              child: Container(
                // color: Colors.grey,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    socialwidget(
                      icon: "assets/icons/google-icon.svg",
                      onPressed: () {
                        print("object");
                      },
                    ),
                    SizedBox(
                      width: getPropotionatelayoutWidth(6.0),
                    ),
                    socialwidget(
                      icon: "assets/icons/facebook-2.svg",
                      onPressed: () {
                        print("object");
                      },
                    ),
                    SizedBox(
                      width: getPropotionatelayoutWidth(6.0),
                    ),
                    socialwidget(
                      icon: "assets/icons/twitter.svg",
                      onPressed: () {
                        print("object");
                      },
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: getPropotionatelayoutheight(10.0),
            ),
            Expanded(
              flex: 1,
              child: Container(
                // color: Colors.blueAccent,
                child: no_account_txt(),
              ),
            )
          ],
        ),
      ),
    );
  }
}
