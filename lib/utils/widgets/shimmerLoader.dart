import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';

class ActiveShimmer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Expanded(
      child: Shimmer.fromColors(
          baseColor: Colors.grey[300],
          highlightColor: Colors.grey[100],
          enabled: true,
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemBuilder: (context, index) => Padding(
              padding: EdgeInsets.all(8.0),
              child: Container(
                width: size.width * 0.5,
                height: size.height * 0.1,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(6),
                  color: Colors.white,

                  // image: DecorationImage(
                  //   image: AssetImage(image[index]),
                  //   fit: BoxFit.fitHeight,
                  // ),
                ),
              ),
            ),
            itemCount: 3,
          )),
    );
  }
}

class PromotedShimmer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Expanded(
      child: Shimmer.fromColors(
          baseColor: Colors.grey[300],
          highlightColor: Colors.grey[100],
          enabled: true,
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemBuilder: (context, index) => Padding(
              padding: EdgeInsets.all(8.0),
              child: Container(
                width: size.width * 0.5,
                height: size.height * 0.21,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(6),
                  color: Colors.white,

                  // image: DecorationImage(
                  //   image: AssetImage(image[index]),
                  //   fit: BoxFit.fitHeight,
                  // ),
                ),
              ),
            ),
            itemCount: 3,
          )),
    );
  }
}
