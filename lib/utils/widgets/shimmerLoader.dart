import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';

class ShimmerLoader extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Expanded(
      child: Shimmer.fromColors(
          baseColor: Colors.grey[300],
          highlightColor: Colors.grey[100],
          enabled: true,
          child: ListView.builder(
            itemBuilder: (context, index) => Padding(
              padding: EdgeInsets.all(8.0),
              child: Container(
                width: double.infinity,
                height: size.height * 0.08,
                decoration: BoxDecoration(
                  color: Colors.white,

                  // image: DecorationImage(
                  //   image: AssetImage(image[index]),
                  //   fit: BoxFit.fitHeight,
                  // ),
                ),
              ),
            ),
            itemCount: 20,
          )),
    );
  }
}
