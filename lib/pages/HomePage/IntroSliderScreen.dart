// ignore_for_file: deprecated_member_use

import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:servicehub/pages/SignIn/signIn.dart';
import 'package:servicehub/pages/SignUpPage/signup.dart';
import 'package:sk_onboarding_screen/flutter_onboarding.dart';
import 'package:sk_onboarding_screen/sk_onboarding_screen.dart';

class IntroSliderScreen extends StatefulWidget {
  static const routeName = 'IntroSlider';
  IntroSliderScreen({Key key}) : super(key: key);

  @override
  _IntroSliderScreenState createState() => _IntroSliderScreenState();
}

class _IntroSliderScreenState extends State<IntroSliderScreen> {
  final GlobalKey<ScaffoldState> _globalKey = new GlobalKey<ScaffoldState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _globalKey,
      body: SKOnboardingScreen(
        bgColor: Colors.white,
        themeColor: HexColor('32CD32'),
        pages: pages,
        skipClicked: (value) {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => SignUpPage(),
            ),
          );
        },
        getStartedClicked: (value) {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => SignUpPage(),
            ),
          );
        },
      ),
    );
  }

  final pages = [
    SkOnboardingModel(
        title: 'Competitive Rates',
        description: 'Offer and request for services at competitive rates',
        titleColor: HexColor('32CD32'),
        descripColor: const Color(0xFF929794),
        imagePath: 'assets/sliderImages/slider1.png'),
    SkOnboardingModel(
        title: 'Preferred Location',
        description:
            'Access services from professionals at your preferred location',
        titleColor: HexColor('32CD32'),
        descripColor: const Color(0xFF929794),
        imagePath: 'assets/sliderImages/slider2.png'),
    SkOnboardingModel(
        title: 'Easy ',
        description: 'Find all sorts of services with 1 - click',
        titleColor: HexColor('32CD32'),
        descripColor: const Color(0xFF929794),
        imagePath: 'assets/sliderImages/slider3.png'),
  ];
}

class SliderDots extends StatelessWidget {
  final bool isActive;
  SliderDots(this.isActive);

  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      duration: Duration(milliseconds: 150),
      margin: EdgeInsets.symmetric(horizontal: 10),
      height: isActive ? 12 : 8,
      width: isActive ? 12 : 8,
      decoration: BoxDecoration(
          color: isActive ? Theme.of(context).accentColor : Colors.grey,
          borderRadius: BorderRadius.all(Radius.circular(12))),
    );
  }
}

class Slide {
  final String imageUrl;
  final String title;

  Slide({@required this.imageUrl, @required this.title});
}

final sliderList = [
  Slide(
      imageUrl: 'assets/sliderImages/slider1.png',
      title: 'Offer and request for services at competitive rates'),
  Slide(
      imageUrl: 'assets/sliderImages/slider2.png',
      title: 'Access services from professionals at your preferred location'),
  Slide(
      imageUrl: 'assets/sliderImages/slider3.png',
      title: 'Find all sorts of services with 1 - click'),
];

class SliderButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 15),
      child: Container(
        color: HexColor('32CD32'),
        height: 50,
        width: double.infinity,
        decoration: BoxDecoration(
          color: HexColor('32CD32'),
          borderRadius: BorderRadius.circular(10),
        ),
        child: TextButton(
          child: AutoSizeText("GET STARTED",
              style: GoogleFonts.oxygen(
                  fontSize: 18,
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  letterSpacing: 2,
                  height: 1.5)),
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => SignUpPage(),
              ),
            );
          },
        ),
      ),
    );
  }
}

class SliderItem extends StatelessWidget {
  final int index;
  SliderItem(this.index);

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    var height = MediaQuery.of(context).size.height;

    // Slider Item
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Container(
          height: height * 0.5,
          width: width,
          decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage(sliderList[index].imageUrl),
                  fit: BoxFit.cover)),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15),
          child: AutoSizeText(
            sliderList[index].title,
            textAlign: TextAlign.center,
            style: GoogleFonts.oxygen(
              fontSize: 14,
              color: HexColor('909090'),
            ),
            maxLines: 2,
          ),
        ),
        SizedBox(
          height: 10,
        )
      ],
    );
  }
}

class IntroSignUpLink extends StatelessWidget {
  const IntroSignUpLink({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 5, vertical: 10),
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
                  style: TextStyle(color: HexColor('32CD32'), fontSize: 14),
                  recognizer: TapGestureRecognizer()
                    ..onTap = () {
                      Navigator.pushAndRemoveUntil(
                        context,
                        MaterialPageRoute(
                          builder: (context) => SignInPage(),
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
    );
  }
}
