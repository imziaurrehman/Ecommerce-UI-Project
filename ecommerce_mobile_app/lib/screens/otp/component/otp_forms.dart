import 'package:ecommerce_mobile_app/components/default_button.dart';
import 'package:ecommerce_mobile_app/consts.dart';
import 'package:ecommerce_mobile_app/sizeConfig.dart';
import 'package:flutter/material.dart';

class OtpForms extends StatefulWidget {
  @override
  State<OtpForms> createState() => _OtpFormsState();
}

class _OtpFormsState extends State<OtpForms> {
  FocusNode? otp2focusnode;
  FocusNode? otp3focusnode;
  FocusNode? otp4focusnode;

  @override
  void initState() {
    // TODO: implement initState
    otp2focusnode = FocusNode();
    otp3focusnode = FocusNode();
    otp4focusnode = FocusNode();

    super.initState();
  }

  @override
  void dispose() {
    // TODO: implement dispose
    otp2focusnode!.dispose();
    otp3focusnode!.dispose();
    otp4focusnode!.dispose();

    super.dispose();
  }

  void nextFocus(String value, FocusNode? focusNode) {
    if (value.length == 1) {
      focusNode!.requestFocus();
    }
  }

  @override
  Widget build(BuildContext context) {
    return Form(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              SizedBox(
                  width: 60,
                  child: TextFormField(
                    keyboardType: TextInputType.number,
                    obscureText: true,
                    textInputAction: TextInputAction.next,
                    style: TextStyle(fontSize: 20),
                    autofocus: true,
                    textAlign: TextAlign.center,
                    decoration: otpinputdecoration,
                    onChanged: (value) => nextFocus(value, otp2focusnode),
                  )),
              SizedBox(
                  width: 60,
                  child: TextFormField(
                    keyboardType: TextInputType.number,
                    obscureText: true,
                    focusNode: otp2focusnode,
                    textInputAction: TextInputAction.next,
                    style: TextStyle(fontSize: 20),
                    autofocus: true,
                    textAlign: TextAlign.center,
                    decoration: otpinputdecoration,
                    onChanged: (value) => nextFocus(value, otp3focusnode),
                  )),
              SizedBox(
                  width: 60,
                  child: TextFormField(
                    keyboardType: TextInputType.number,
                    obscureText: true,
                    focusNode: otp3focusnode,
                    textInputAction: TextInputAction.next,
                    style: TextStyle(fontSize: 20),
                    autofocus: true,
                    textAlign: TextAlign.center,
                    decoration: otpinputdecoration,
                    onChanged: (value) => nextFocus(value, otp4focusnode),
                  )),
              SizedBox(
                  width: 60,
                  child: TextFormField(
                    keyboardType: TextInputType.number,
                    obscureText: true,
                    focusNode: otp4focusnode,
                    textInputAction: TextInputAction.done,
                    style: TextStyle(fontSize: 20),
                    autofocus: true,
                    textAlign: TextAlign.center,
                    decoration: otpinputdecoration,
                    onChanged: (value) {
                      if (value.length == 1) {
                        otp4focusnode!.unfocus();
                      }
                    },
                  )),
            ],
          ),
          SizedBox(
            height: SizeConfig.screen_height * 0.1,
          ),
          DefaultButtons(
            text: "Continue",
            button: () {
              //
            },
          ),
          SizedBox(
            height: SizeConfig.screen_height * 0.1,
          ),
          TextButton(
            child: const Text(
              "Resend OTP code",
              style: TextStyle(
                  color: ksecondarycolor, decoration: TextDecoration.underline),
            ),
            onPressed: () {},
          ),
        ],
      ),
    );
  }
}
