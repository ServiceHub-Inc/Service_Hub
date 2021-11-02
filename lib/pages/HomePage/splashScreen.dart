import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:servicehub/pages/HomePage/IntroSliderScreen.dart';

class Splash extends StatefulWidget {
  const Splash({Key key}) : super(key: key);

  @override
  _SplashState createState() => _SplashState();
}

class _SplashState extends State<Splash> with TickerProviderStateMixin {
  Animation<double> logoAnimation;
  AnimationController logoController;

  @override
  void initState() {
    super.initState();
    logoController = AnimationController(
      duration: Duration(milliseconds: 3000),
      value: 0.2,
      vsync: this,
    );

    logoAnimation =
        CurvedAnimation(parent: logoController, curve: Curves.bounceInOut);

    logoController.forward();

    logoAnimation.addStatusListener((status) {
      if (status == AnimationStatus.completed) {
        // logoController.repeat();
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => IntroSliderScreen(),
          ),
        );
      }
    });
  }

  @override
  void dispose() {
    logoController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: ScaleTransition(
          scale: logoAnimation,
          child: Container(
            alignment: Alignment.center,
            height: 200,
            width: 350,
            decoration: BoxDecoration(
                image: DecorationImage(
              image: AssetImage('assets/appIcon/New Logo_1.jpg'),
              fit: BoxFit.contain,
            )),
          ),
        ),
      ),
    );
  }
}
