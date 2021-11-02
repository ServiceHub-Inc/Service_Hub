import 'package:eva_icons_flutter/eva_icons_flutter.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hexcolor/hexcolor.dart';

class IndividualProfileHighlight extends StatelessWidget {
  const IndividualProfileHighlight({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // quiz score , profile ID, Avearge Rating
    return Container(
      color: Colors.white,
      width: double.infinity,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 15),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Profile Highlight',
                    style: GoogleFonts.oxygen(
                        fontSize: 14,
                        color: HexColor('32CD32'),
                        fontWeight: FontWeight.w600),
                  ),
                ],
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Icon(
                  EvaIcons.checkmarkCircleOutline,
                  color: HexColor('32CD32'),
                ),
                SizedBox(width: 10.0),
                Expanded(
                  child: Text(
                    'Customer Service Quiz Score',
                    textAlign: TextAlign.start,
                    style: GoogleFonts.oxygen(
                      fontSize: 14,
                      color: HexColor('5F5F65'),
                    ),
                    maxLines: 1,
                  ),
                ),
                Text(
                  '98%',
                  style: GoogleFonts.oxygen(
                      fontSize: 16,
                      color: HexColor('32CD32'),
                      fontWeight: FontWeight.normal),
                  maxLines: 1,
                ),
              ],
            ),
            SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Icon(
                  Icons.contact_mail_outlined,
                  color: HexColor('32CD32'),
                ),
                SizedBox(width: 10.0),
                Expanded(
                  child: Text(
                    'Service Provider ID #',
                    textAlign: TextAlign.start,
                    style: GoogleFonts.oxygen(
                      fontSize: 14,
                      color: HexColor('5F5F65'),
                    ),
                    maxLines: 1,
                  ),
                ),
                Text(
                  'AD17443',
                  style: GoogleFonts.oxygen(
                      fontSize: 16,
                      color: HexColor('32CD32'),
                      fontWeight: FontWeight.normal),
                  maxLines: 1,
                ),
              ],
            ),
            SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Icon(
                  Icons.home_repair_service_rounded,
                  color: HexColor('32CD32'),
                ),
                SizedBox(width: 10.0),
                Expanded(
                  child: Text(
                    'Services Executed',
                    textAlign: TextAlign.start,
                    style: GoogleFonts.oxygen(
                      fontSize: 14,
                      color: HexColor('5F5F65'),
                    ),
                    maxLines: 1,
                  ),
                ),
                Text(
                  '50',
                  style: GoogleFonts.oxygen(
                      fontSize: 16,
                      color: HexColor('32CD32'),
                      fontWeight: FontWeight.normal),
                  maxLines: 1,
                ),
              ],
            ),
            SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Icon(
                  Icons.stars,
                  color: HexColor('32CD32'),
                ),
                SizedBox(width: 10.0),
                Expanded(
                  child: Text(
                    'Average Rating',
                    textAlign: TextAlign.start,
                    style: GoogleFonts.oxygen(
                      fontSize: 14,
                      color: HexColor('5F5F65'),
                    ),
                  ),
                ),
                SizedBox(
                  height: 3,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    // file icon
                    Icon(
                      EvaIcons.star,
                      size: 18,
                      color: Colors.amber,
                    ),
                    SizedBox(
                      width: 3,
                    ),
                    Text(
                      '4.0',
                      style: GoogleFonts.oxygen(
                        fontSize: 16,
                        color: Colors.amber,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
