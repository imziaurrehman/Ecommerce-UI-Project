import 'package:flutter/material.dart';

class BackArrowNavBtn extends StatelessWidget {
  const BackArrowNavBtn({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextButton(
      child: SizedBox(
        child: iconData(),
        width: 10,
        height: 2,
      ),
      onPressed: () => Navigator.pop(context),
    );
  }

  Icon iconData() {
    return Icon(
      Icons.arrow_back_ios,
      color: Colors.black,
    );
  }
}
