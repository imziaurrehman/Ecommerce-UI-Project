import 'package:ecommerce_mobile_app/components/default_button.dart';
import 'package:ecommerce_mobile_app/components/formerror.dart';
import 'package:ecommerce_mobile_app/components/keybordutil.dart';
import 'package:ecommerce_mobile_app/components/suffixIcon.dart';
import 'package:ecommerce_mobile_app/consts.dart';
import 'package:ecommerce_mobile_app/screens/otp/otp_screen.dart';
import 'package:ecommerce_mobile_app/sizeConfig.dart';
import 'package:flutter/material.dart';

class CompleteProfileForm extends StatefulWidget {
  const CompleteProfileForm({
    Key? key,
  }) : super(key: key);

  @override
  State<CompleteProfileForm> createState() => _CompleteProfileFormState();
}

class _CompleteProfileFormState extends State<CompleteProfileForm> {
  final _formkey = GlobalKey<FormState>();
  String? fname;
  String? lname;
  String? phone_number;
  String? address;
  final List<String?> errors = [];

  void addErrors({String? error}) {
    if (!errors.contains(error)) {
      setState(() {
        errors.add(error);
      });
    }
  }

  void removeError({String? error}) {
    if (errors.contains(error)) {
      setState(() {
        errors.remove(error);
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formkey,
      child: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Column(
          children: [
            buildFirstNameFormField(),
            SizedBox(
              height: getPropotionatelayoutheight(30),
            ),
            buildLastNameFormField(),
            SizedBox(
              height: getPropotionatelayoutheight(30),
            ),
            buildPhoneNumberFormField(),
            SizedBox(
              height: getPropotionatelayoutheight(30),
            ),
            buildAddressFormField(),
            SizedBox(
              height: getPropotionatelayoutheight(20),
            ),
            FormErrors(
              errors: errors,
            ),
            SizedBox(
              height: getPropotionatelayoutheight(30),
            ),
            DefaultButtons(
              text: "Continue",
              button: () {
                //otp screen
                if (_formkey.currentState!.validate()) {
                  _formkey.currentState!.save();
                  KeyboardUtil.hidekeyboard(context);
                  Navigator.of(context)
                      .pushReplacementNamed(Otp_Screen.routeName);
                }
              },
            ),
          ],
        ),
      ),
    );
  }

  TextFormField buildFirstNameFormField() {
    return TextFormField(
      keyboardType: TextInputType.name,
      textInputAction: TextInputAction.next,
      decoration: InputDecoration(
        label: Text("First Name"),
        hintText: "Enter your first name",
        contentPadding: EdgeInsets.symmetric(horizontal: 30, vertical: 18),
        floatingLabelBehavior: FloatingLabelBehavior.always,
        suffixIcon: SuffixIcons(
          svgIcon: "assets/icons/User.svg",
        ),
      ),
      onSaved: (newValue) => fname = newValue,
      onChanged: (value) {
        fname = value;
        if (value.isNotEmpty) {
          removeError(error: kNameNullError);
        }
      },
      validator: (value) {
        if (value!.isEmpty) {
          addErrors(error: kNameNullError);
          return "";
        }
      },
    );
  }

  TextFormField buildLastNameFormField() {
    return TextFormField(
      keyboardType: TextInputType.name,
      textInputAction: TextInputAction.next,
      decoration: InputDecoration(
        label: Text("Last Name"),
        hintText: "Enter your Last name",
        contentPadding: EdgeInsets.symmetric(horizontal: 30, vertical: 18),
        floatingLabelBehavior: FloatingLabelBehavior.always,
        suffixIcon: SuffixIcons(
          svgIcon: "assets/icons/User.svg",
        ),
      ),
      onSaved: (newValue) => lname = newValue,
      onChanged: (value) {
        lname = value;
        if (value.isNotEmpty) {
          removeError(error: kNameNullError);
        }
        return null;
      },
      validator: (value) {
        if (value!.isEmpty) {
          addErrors(error: kNameNullError);
          return "";
        }
        return null;
      },
    );
    ;
  }

  TextFormField buildPhoneNumberFormField() {
    return TextFormField(
      keyboardType: TextInputType.phone,
      textInputAction: TextInputAction.next,
      decoration: InputDecoration(
        label: Text("Phone Number"),
        hintText: "Enter your phone number",
        contentPadding: EdgeInsets.symmetric(horizontal: 30, vertical: 18),
        floatingLabelBehavior: FloatingLabelBehavior.always,
        suffixIcon: SuffixIcons(
          svgIcon: "assets/icons/Phone.svg",
        ),
      ),
      onSaved: (newValue) => phone_number = newValue,
      onChanged: (value) {
        phone_number = value;
        if (value.isNotEmpty) {
          removeError(error: kPhoneNumberNullError);
        }
        return null;
      },
      validator: (value) {
        if (value!.isEmpty) {
          addErrors(error: kPhoneNumberNullError);
          return "";
        }
        return null;
      },
    );
  }

  TextFormField buildAddressFormField() {
    return TextFormField(
      keyboardType: TextInputType.streetAddress,
      textInputAction: TextInputAction.next,
      decoration: InputDecoration(
        label: Text("Address"),
        hintText: "Enter your address",
        contentPadding: EdgeInsets.symmetric(horizontal: 30, vertical: 18),
        floatingLabelBehavior: FloatingLabelBehavior.always,
        suffixIcon: SuffixIcons(
          svgIcon: "assets/icons/Location point.svg",
        ),
      ),
      onSaved: (newValue) => address = newValue,
      onChanged: (value) {
        address = value;
        if (value.isNotEmpty) {
          removeError(error: kAddressNullError);
        }
        return null;
      },
      validator: (value) {
        if (value!.isEmpty) {
          addErrors(error: kAddressNullError);
          return "";
        }
        return null;
      },
    );
    ;
  }
}
