import 'package:flutter/material.dart';
import 'package:servicehub/pages/SignIn/widgets/signinWidget.dart';
import 'package:servicehub/pages/SignUpPage/widgets/signupWidgets.dart';
import '../SignUpPage/widgets/signUpForms.dart';

class SignUpPage extends StatelessWidget {
  static const routeName = 'SignUpPage';
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.only(bottom: 50),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SignUpHeader(),
                SignUpForms(),
                SizedBox(height: 10),
                // Sign up with facebook
                SignInWithFaceBook(),
                SizedBox(height: 5),
                // Sign up with  google
                SignInWithGoogle(),
                LoginLink()
              ],
            ),
          ),
        ),
      ),
    );
  }
}
