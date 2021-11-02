import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hexcolor/hexcolor.dart';

class IndividualExperienceAndOffer extends StatelessWidget {
  const IndividualExperienceAndOffer({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      color: Colors.white,
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 15),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Experience & Offer',
                  style: GoogleFonts.oxygen(
                      fontSize: 14,
                      color: HexColor('32CD32'),
                      fontWeight: FontWeight.w600),
                ),
              ],
            ),
          ),
          // Brief Description
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // Text(
                //   'Brief Description',
                //   style: GoogleFonts.oxygen(
                //     fontSize: 12,
                //      color: Colors.grey
                //   ),
                //  ),
                AutoSizeText(
                  'This is Anthony. I have over two years of driving experience. I have not had any infractions with the law in the course of my driving and I prioritize safety over every other thing. I can provide temporary driving service for you in case you are too exhausted or unavailable to drive your kids to school. I also have long distance driving experience having driven to Kumasi, Sunyani and Aflao. I am happy to use my own car or drive your car depending on your choice. I charge as little as GH¢ 20 per hour and I can offer you discounts for longer engagements.',
                  style: GoogleFonts.oxygen(
                      fontSize: 14,
                      color: HexColor('5F5F65'),
                      fontWeight: FontWeight.w400,
                      height: 1.6),
                  textAlign: TextAlign.justify,
                ),
              ],
            ),
          ),
          SizedBox(
            height: 10,
          ),
        ],
      ),
    );
  }
}
