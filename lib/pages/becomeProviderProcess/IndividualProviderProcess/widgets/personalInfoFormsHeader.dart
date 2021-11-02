import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hexcolor/hexcolor.dart';

class IndividualInfoFormsHeader extends StatelessWidget {
  final String heading;
  final String subHeading;
  final String step;
  const IndividualInfoFormsHeader({
    Key key,
    this.heading,
    this.subHeading,
    this.step,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
      child: Container(
        child:
            Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'New Service Provider Registration Form',
                style: GoogleFonts.oxygen(
                  fontSize: 14,
                  color: HexColor('44493D'),
                ),
              ),
              SizedBox(height: 3.0),
              Text(
                heading,
                style: GoogleFonts.oxygen(
                    fontSize: 22,
                    color: HexColor('44493D'),
                    fontWeight: FontWeight.bold),
              ),
            ],
          ),
          RichText(
              text: TextSpan(
                  text: step,
                  style: GoogleFonts.oxygen(
                      fontSize: 14, color: HexColor('949498')),
                  children: [
                TextSpan(
                    text: " / 4",
                    style: GoogleFonts.oxygen(
                        fontSize: 14,
                        color: HexColor('32CD32'),
                        fontWeight: FontWeight.w600))
              ]))
        ]),
      ),
    );
  }
}
