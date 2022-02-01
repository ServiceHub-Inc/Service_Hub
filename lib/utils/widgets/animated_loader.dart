import 'package:flutter/material.dart';
import 'loader.dart';

class AnimatedLoader extends StatefulWidget {
  @override
  _AnimatedLoaderState createState() => _AnimatedLoaderState();
}

class _AnimatedLoaderState extends State<AnimatedLoader>
    with SingleTickerProviderStateMixin {
  AnimationController controller;

  @override
  void initState() {
    super.initState();
    controller = AnimationController(
        vsync: this, duration: const Duration(milliseconds: 1200))
      ..repeat(reverse: true);
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    // final _height = MediaQuery.of(context).size.height;
    final _width = MediaQuery.of(context).size.width;
    return ScaleTransition(
        scale: Tween(begin: 0.95, end: 1.03).animate(controller),
        alignment: FractionalOffset.center,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Container(
              padding: EdgeInsets.symmetric(
                horizontal: 20,
                vertical: 5,
              ),
              decoration: BoxDecoration(
                // color: Colors.green,
                borderRadius: BorderRadius.circular(3),
              ),
              child: Container(
                padding: EdgeInsets.all(10),
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  border: Border.all(color: Colors.white, width: 3),
                ),
                child: Image.asset(
                  "assets/appIcon/icon.png",
                  width: _width * 0.2,
                ),
              ),
            ),
            SizedBox(height: 10),
            Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                Loader2(),
                SizedBox(width: 5),
                Text(
                  "Loading...",
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                  ),
                )
              ],
            )
          ],
        ));
  }
}
