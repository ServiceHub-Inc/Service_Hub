import 'package:flutter/material.dart';
import 'package:servicehub/pages/SignIn/widgets/signinWidget.dart';
import '../SignIn/widgets/signInForms.dart';

class SignInPage extends StatelessWidget {
  static const routeName = './SignInPage';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.only(bottom: 10),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SignInHeader(),
                  SizedBox(
                    height: 30,
                  ),
                  // Forms is here
                  SignInForms(),
                  // Sign In button
                  SizedBox(
                    height: 20,
                  ),
                  // Sign In with Facebook
                  SignInWithFaceBook(),
                  SizedBox(
                    height: 10,
                  ),

                  // Sign In with Google
                  SignInWithGoogle(),

                  SignUpLink()
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
