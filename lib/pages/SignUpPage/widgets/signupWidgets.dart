import 'package:auto_size_text/auto_size_text.dart';
import 'package:eva_icons_flutter/eva_icons_flutter.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:servicehub/pages/HomePage/widgets/BottomNavigationBar.dart';
import 'package:servicehub/pages/SignIn/signIn.dart';

class CustomCheckedBox extends StatefulWidget {
  @override
  _CustomeCheckedBoxState createState() => _CustomeCheckedBoxState();
}

class _CustomeCheckedBoxState extends State<CustomCheckedBox> {
  bool value = false;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 20, bottom: 30),
      child: Row(
        children: [
          Container(
            width: 18,
            height: 18,
            child: Checkbox(
              value: value,
              onChanged: (value) {
                setState(() {
                  this.value = value;
                });
              },
            ),
          ),
          SizedBox(
            width: 10,
          ),
          RichText(
              text: TextSpan(
                  text: "I agree to the",
                  style: GoogleFonts.oxygen(
                      fontSize: 13, color: HexColor('949498')),
                  children: [
                TextSpan(
                    text: " terms and conditions",
                    recognizer: TapGestureRecognizer(),
                    style: GoogleFonts.oxygen(
                        fontSize: 13,
                        color: HexColor('32CD32'),
                        fontWeight: FontWeight.w600))
              ]))
        ],
      ),
    );
  }
}

class SignUpHeader extends StatelessWidget {
  const SignUpHeader({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      width: double.infinity,
      color: HexColor('32CD32'),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          // Header
          Padding(
            padding: const EdgeInsets.only(top: 10),
            child: AutoSizeText(
              'ServiceHub',
              style: GoogleFonts.oxygen(
                  fontSize: 34,
                  color: Colors.white,
                  fontWeight: FontWeight.bold),
              maxLines: 1,
            ),
          ),
          AutoSizeText(
            'Account creation form',
            style: GoogleFonts.oxygen(
                fontSize: 14, color: Colors.white, fontWeight: FontWeight.w400),
            maxLines: 1,
          ),
        ],
      ),
    );
  }
}

class SignUpButton extends StatelessWidget {
  const SignUpButton({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      width: double.infinity,
      decoration: BoxDecoration(
          color: HexColor('32CD32'), borderRadius: BorderRadius.circular(10)),
      child: TextButton(
        child: Text(
          "SIGN UP",
          style: GoogleFonts.oxygen(
            fontSize: 18,
            color: Colors.white,
            fontWeight: FontWeight.bold,
            letterSpacing: 2,
            height: 1.5,
          ),
        ),
        onPressed: () {
          // get Route
          Get.offAll(MyBottomNaigationBar());
        },
      ),
    );
  }
}

class LoginLink extends StatelessWidget {
  const LoginLink({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // var width = MediaQuery.of(context).size.width;

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 5, vertical: 10),
      child: GestureDetector(
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => SignInPage(),
            ),
          );
        },
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            RichText(
              text: TextSpan(
                  text: 'Have an account?',
                  style: GoogleFonts.oxygen(color: Colors.grey, fontSize: 14),
                  children: <TextSpan>[
                    TextSpan(
                        text: ' Sign in',
                        style:
                            TextStyle(color: HexColor('32CD32'), fontSize: 14),
                        recognizer: TapGestureRecognizer()
                          ..onTap = () {
                            Navigator.pushAndRemoveUntil(
                              context,
                              MaterialPageRoute(
                                builder: (context) => SignInPage(),
                              ),
                              (route) => false,
                            );
                          })
                  ]),
            ),
          ],
        ),
      ),
    );
  }
}
