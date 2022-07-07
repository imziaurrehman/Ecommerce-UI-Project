import 'package:ecommerce_mobile_app/consts.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class ProfileBody extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 20),
        child: Column(
          children: [
            Center(child: ProfilePic()),
            SizedBox(
              height: 25,
            ),
            ProfileMenu(
              text: "My Account",
              icon: "assets/icons/User Icon.svg",
              press: () {},
            ),
            ProfileMenu(
              text: "Notifications",
              icon: "assets/icons/Bell.svg",
              press: () {},
            ),
            ProfileMenu(
              text: "Settings",
              icon: "assets/icons/Settings.svg",
              press: () {},
            ),
            ProfileMenu(
              text: "Help Centre",
              icon: "assets/icons/Question mark.svg",
              press: () {},
            ),
            ProfileMenu(
              text: "Log Out",
              icon: "assets/icons/Log out.svg",
              press: () {},
            ),
          ],
        ),
      ),
    );
  }
}

class ProfileMenu extends StatelessWidget {
  ProfileMenu(
      {Key? key, required this.text, required this.icon, required this.press})
      : super(key: key);
  final String? text, icon;
  GestureTapCallback press;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(8.0),
      margin: const EdgeInsets.only(left: 25, right: 25, bottom: 15, top: 0),
      decoration: BoxDecoration(
          color: Colors.grey.shade100, borderRadius: BorderRadius.circular(15)),
      child: ListTile(
        leading: SvgPicture.asset(
          icon!,
          color: kprimarycolor,
        ),
        title: Text(text!),
        trailing: SvgPicture.asset(
          "assets/icons/arrow_right.svg",
          height: 15,
        ),
        onTap: press,
      ),
    );
  }
}

class ProfilePic extends StatelessWidget {
  const ProfilePic({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 100,
      height: 100,
      child: Stack(fit: StackFit.expand, clipBehavior: Clip.none, children: [
        CircleAvatar(
          radius: 40,
          backgroundImage: AssetImage("assets/images/Profile Image.png"),
        ),
        Positioned(
          bottom: 0,
          right: -16,
          child: SizedBox(
            child: TextButton(
              child: SvgPicture.asset(
                "assets/icons/Camera Icon.svg",
              ),
              onPressed: () {},
              style: TextButton.styleFrom(
                backgroundColor: Colors.grey.shade100,
                primary: Colors.black87,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(50),
                ),
              ),
            ),
            width: 45,
            height: 45,
          ),
        )
      ]),
    );
  }
}
