import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:servicehub/utils/constants.dart';

class Loader extends StatefulWidget {
  @override
  _LoaderState createState() => _LoaderState();
}

class _LoaderState extends State<Loader> with TickerProviderStateMixin {
  AnimationController controller;

  @override
  void initState() {
    controller = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 1200),
    );
    super.initState();
  }

  @override
  void dispose() {
    if(controller != null) {
      controller.dispose();
    }
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {

    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        SpinKitRipple(
            color: Constants.mainColor, size: 50.0, controller: controller),
      ],
    );
  }
}

class Loader2 extends StatefulWidget {
  @override
  _Loader2State createState() => _Loader2State();
}

class _Loader2State extends State<Loader2> with TickerProviderStateMixin {
  AnimationController controller;

  @override
  void initState() {
    controller = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 1200),
    );
    super.initState();
  }

  @override
  void dispose() {
    if(controller != null) {
      controller.dispose();
    }
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        SpinKitHourGlass(
          color: Colors.white,
          size: 20.0,
          controller: controller,
        ),
      ],
    );
  }
}
