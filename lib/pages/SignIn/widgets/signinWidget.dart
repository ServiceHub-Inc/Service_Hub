import 'package:auto_size_text/auto_size_text.dart';
import 'package:eva_icons_flutter/eva_icons_flutter.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_facebook_auth/flutter_facebook_auth.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:servicehub/pages/SignUpPage/signup.dart';
import 'package:firebase_auth/firebase_auth.dart';

class SignInHeader extends StatelessWidget {
  const SignInHeader({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double _height = MediaQuery.of(context).size.height;
    double _width = MediaQuery.of(context).size.width;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Container(
          width: _width * 0.5,
          height: _height * 0.13,
          child: SvgPicture.asset(
            "assets/sliderImages/login.svg",
          ),
        ),
        SizedBox(height: 5.0),
      ],
    );
  }
}

class SignInWithFaceBook extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () async{
        try {
          // Trigger the sign-in flow
          final LoginResult result =
              await FacebookAuth.instance.login();

          // Create a credential from the access token
          final facebookAuthCredential =
              FacebookAuthProvider.credential(result.accessToken.token);

          // Once signed in, return the UserCredential
          return await FirebaseAuth.instance
              .signInWithCredential(facebookAuthCredential);
        } catch (e) {
          print(e);
        }
                
      },
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Container(
          height: 50,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(
                EvaIcons.facebook,
                color: HexColor('2D9CDB'),
              ),
              SizedBox(
                width: 5,
              ),
              AutoSizeText(
                'SIGN IN WITH FACEBOOK',
                style: GoogleFonts.oxygen(
                    fontSize: 12,
                    color: HexColor('2D9CDB'),
                    fontWeight: FontWeight.bold,
                    letterSpacing: 1,
                    height: 1.5),
                maxLines: 2,
                // overflow: TextOverflow.ellipsis,
              ),
            ],
          ),
          decoration: BoxDecoration(
              border: Border.all(color: HexColor('2D9CDB'), width: 2),
              borderRadius: BorderRadius.circular(4)),
        ),
      ),
    );
  }
}

class SignInWithGoogle extends StatelessWidget {
  const SignInWithGoogle({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () async {
        try {
          FirebaseAuth.instance.signOut();
          final GoogleSignInAccount googleUser = await GoogleSignIn().signIn();

          // Obtain the auth details from the request
          final GoogleSignInAuthentication googleAuth =
              await googleUser.authentication;

          // Create a new credential
          final credential = GoogleAuthProvider.credential(
            accessToken: googleAuth.accessToken,
            idToken: googleAuth.idToken,
          );

          // Once signed in, return the UserCredential
          UserCredential user =
              await FirebaseAuth.instance.signInWithCredential(credential);
          User newUser = user.user;

          print(newUser.displayName);
          print(newUser.photoURL);
          // }
        } catch (e) {
          print(e);
        } finally {}
      },
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Container(
          height: 50,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(
                EvaIcons.email,
                color: HexColor('FF0000'),
              ),
              SizedBox(
                width: 5,
              ),
              AutoSizeText(
                'SIGN IN WITH GOOGLE',
                style: GoogleFonts.oxygen(
                    fontSize: 12,
                    color: HexColor('FF0000'),
                    fontWeight: FontWeight.bold,
                    letterSpacing: 1,
                    height: 1.5),
                overflow: TextOverflow.ellipsis,
              ),
            ],
          ),
          decoration: BoxDecoration(
            border: Border.all(color: HexColor('FF0000'), width: 2),
            borderRadius: BorderRadius.circular(4),
          ),
        ),
      ),
    );
  }
}

class SignUpLink extends StatelessWidget {
  const SignUpLink({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 5, vertical: 10),
      child: GestureDetector(
        onTap: () {
          Navigator.pushAndRemoveUntil(
            context,
            MaterialPageRoute(
              builder: (context) => SignUpPage(),
            ),
            (route) => false,
          );
        },
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            RichText(
              text: TextSpan(
                text: 'Create account?',
                style: GoogleFonts.oxygen(color: Colors.grey, fontSize: 14),
                children: <TextSpan>[
                  TextSpan(
                    text: ' Sign up',
                    style: TextStyle(color: HexColor('32CD32'), fontSize: 14),
                    recognizer: TapGestureRecognizer()
                      ..onTap = () {
                        Navigator.pushAndRemoveUntil(
                          context,
                          MaterialPageRoute(
                            builder: (context) => SignUpPage(),
                          ),
                          (route) => false,
                        );
                      },
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
