import 'package:ecommerce_mobile_app/consts.dart';
import 'package:flutter/material.dart';
import './splash_content.dart';
import '../../../sizeConfig.dart';
import '../../../components/default_button.dart';
import '../../signin/signin_screen.dart';

class Body extends StatefulWidget {
  @override
  State<Body> createState() => _BodyState();
}

class _BodyState extends State<Body> {
  List<Map<String, String>> splashData = [
    {
      "text": "Welcome to Tokoto, Let’s shop!",
      "image": "assets/images/splash_1.png"
    },
    {
      "text":
          "We help people conect with store \naround United State of America",
      "image": "assets/images/splash_2.png"
    },
    {
      "text": "We show the easy way to shop. \nJust stay at home with us",
      "image": "assets/images/splash_3.png"
    },
  ];

  PageController _pageController = PageController();

  int currentpage = 0;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        children: [
          // Spacer(flex: 1,),
          Expanded(
              flex: 4,
              child: Container(
                // color: Colors.black12,
                child: PageView.builder(
                  controller: _pageController,
                  itemCount: splashData.length,
                  onPageChanged: (value) {
                    setState(() {
                      currentpage = value;
                    });
                  },
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) => SplashContent(
                    text: splashData[index]["text"],
                    image: splashData[index]["image"],
                  ),
                ),
              )),
          Expanded(
            flex: 2,
            child: Padding(
              padding: EdgeInsets.all(12),
              child: Column(
                children: [
                  SizedBox(
                    height: getPropotionatelayoutheight(40),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: List.generate(
                        splashData.length, (index) => onDotClick(index: index)),
                  ),
                  SizedBox(
                    height: getPropotionatelayoutheight(55),
                  ),
                  DefaultButtons(
                    text: "Continue",
                    button: () {
                      Navigator.of(context).pushNamed(SigninScreen.routeName);
                    },
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  AnimatedContainer onDotClick({int? index}) {
    return AnimatedContainer(
      duration: kAnimationDuration,
      width: currentpage == index ? 20 : 4,
      margin: EdgeInsets.only(right: 6),
      height: 6,
      decoration: BoxDecoration(
        color: currentpage == index ? kprimarycolor : ksecondarycolor,
        borderRadius: BorderRadius.circular(6),
      ),
    );
  }
}
