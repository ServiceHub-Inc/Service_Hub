import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hexcolor/hexcolor.dart';

class Message extends StatelessWidget {
  const Message({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 2),
      child: Container(
        color: Colors.white,
        width: double.infinity,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 15),
          child: RichText(
            text: TextSpan(
                text:
                    '“Congratulations, your service request has been accepted by provider ',
                style: GoogleFonts.oxygen(
                  height: 1.5,
                  color: HexColor('44493D'),
                  fontSize: 14,
                ),
                children: [
                  TextSpan(
                      text: ' (Kingsley Author)',
                      style: GoogleFonts.oxygen(
                        color: HexColor('32CD32'),
                        fontSize: 14,
                      )),
                  TextSpan(
                      text: ' with ID#',
                      style: GoogleFonts.oxygen(
                        color: HexColor('44493D'),
                        fontSize: 14,
                      )),
                  TextSpan(
                      text: ' AD1754.',
                      style: GoogleFonts.oxygen(
                        color: HexColor('32CD32'),
                        fontSize: 14,
                      )),
                  TextSpan(
                      text: ' Now',
                      style: GoogleFonts.oxygen(
                        color: HexColor('44493D'),
                        fontSize: 14,
                      )),
                  TextSpan(
                      text: ' pay 12.6%',
                      style: GoogleFonts.oxygen(
                        color: HexColor('32CD32'),
                        fontSize: 14,
                      )),
                  TextSpan(
                      text:
                          ' of the service charge as commitment fee to validate your request. Thank you for using Service Hub. ',
                      style: GoogleFonts.oxygen(
                        color: HexColor('44493D'),
                        fontSize: 14,
                      )),
                ]),
          ),
        ),
      ),
    );
  }
}
