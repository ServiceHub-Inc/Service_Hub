import 'package:auto_size_text/auto_size_text.dart';
import 'package:eva_icons_flutter/eva_icons_flutter.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:servicehub/pages/SignUpPage/signup.dart';

class SignInHeader extends StatelessWidget {
  const SignInHeader({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // double _height = MediaQuery.of(context).size.height;
    // double _width = MediaQuery.of(context).size.width;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        // Container(
        //   width: _width * 0.55,
        //   height: _height * 0.075,
        //   child: Image.asset("assets/appIcon/New Logo_1.jpg"),
        // ),
        SizedBox(height: 5.0),
        Center(
          child: AutoSizeText(
            "Sign into your account",
            style: GoogleFonts.oxygen(
                fontSize: 34,
                fontWeight: FontWeight.w600,
                color: HexColor('44493D')),
            maxLines: 1,
          ),
        ),
        // AutoSizeText(
        //   "Sign into your account",
        //   style: GoogleFonts.oxygen(
        //       fontSize: 14,
        //       fontWeight: FontWeight.normal,
        //       color: HexColor('32CD32')),
        // ),
      ],
    );
  }
}

class SignInWithFaceBook extends StatelessWidget {
  const SignInWithFaceBook({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {},
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
      onTap: () {},
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
