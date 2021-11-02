import 'package:eva_icons_flutter/eva_icons_flutter.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hexcolor/hexcolor.dart';

class FinishedServiceTile extends StatelessWidget {
  const FinishedServiceTile({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    return Padding(
      padding: const EdgeInsets.only(bottom: 2),
      child: Container(
        color: Colors.white,
        height: 100,
        width: double.infinity,
        child: Padding(
          padding: const EdgeInsets.only(right: 5),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              // green bar that shows notification ha beeb read or not
              Row(
                children: [
                  Container(
                    height: 100,
                    width: 8,
                    color: HexColor('275827'),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  // circle image
                  Container(
                    height: 60,
                    width: 60,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(100),
                        image: DecorationImage(
                            fit: BoxFit.cover,
                            image: AssetImage(
                                'assets/serviceImages/plumber.jpg'))),
                  ),
                  SizedBox(
                    width: 10,
                  ),

                  // client name message and ID
                  Padding(
                    padding: const EdgeInsets.only(top: 20),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        // provider name and action( eg : has accepted request)
                        Container(
                          width: width * 0.6,
                          child: RichText(
                            text: TextSpan(
                                text: 'Kwame Akofi',
                                style: GoogleFonts.oxygen(
                                    color: HexColor('32CD32'),
                                    fontSize: 13,
                                    fontWeight: FontWeight.w600),
                                children: [
                                  TextSpan(
                                      text: ' has finished painting service',
                                      style: GoogleFonts.oxygen(
                                          color: HexColor('44493D'),
                                          fontSize: 12,
                                          fontWeight: FontWeight.normal))
                                ]),
                            overflow: TextOverflow.ellipsis,
                          ),
                        ),

                        // Actual message here
                        Container(
                          width: width * 0.6,
                          child: Text(
                            ' “Congratulations, your service request has been',
                            style: GoogleFonts.oxygen(
                                color: Colors.grey[500],
                                fontSize: 12,
                                fontWeight: FontWeight.normal),
                            overflow: TextOverflow.ellipsis,
                          ),
                        ),

                        // ID here
                        RichText(
                          text: TextSpan(
                              text: 'ID: ',
                              style: GoogleFonts.oxygen(
                                  color: HexColor('44493D'),
                                  fontSize: 13,
                                  fontWeight: FontWeight.w600),
                              children: [
                                TextSpan(
                                    text: ' AD1756',
                                    style: GoogleFonts.oxygen(
                                        color: HexColor('32CD32'),
                                        fontSize: 12,
                                        fontWeight: FontWeight.normal))
                              ]),
                          overflow: TextOverflow.ellipsis,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              // ICon and Date
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 5),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    CircleAvatar(
                      radius: 11,
                      backgroundColor: HexColor('32CD32').withOpacity(0.5),
                      child: Icon(
                        EvaIcons.bell,
                        color: Colors.white,
                        size: 12,
                      ),
                    ),
                    Expanded(child: SizedBox()),
                    Text(
                      ' 3:33 PM',
                      style: GoogleFonts.oxygen(
                          color: Colors.grey[500],
                          fontSize: 12,
                          fontWeight: FontWeight.normal),
                      overflow: TextOverflow.ellipsis,
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
