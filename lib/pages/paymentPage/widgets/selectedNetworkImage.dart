import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SelectedNetworkImage extends StatelessWidget {
  const SelectedNetworkImage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 150,
      width: double.infinity,
      decoration: BoxDecoration(
          image: DecorationImage(
              colorFilter: ColorFilter.mode(
                  Colors.black.withOpacity(0.3), BlendMode.darken),
              image: AssetImage(
                'assets/networkImages/mtn.jpg',
              ),
              fit: BoxFit.cover)),
      child: Stack(
        children: [
          Positioned(
            bottom: 10,
            left: 15,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Text('MTN',
                    style: GoogleFonts.oxygen(
                        fontSize: 14,
                        fontWeight: FontWeight.bold,
                        color: Colors.white))
              ],
            ),
          )
        ],
      ),
    );
  }
}
