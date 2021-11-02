import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hexcolor/hexcolor.dart';

class Details extends StatelessWidget {
  const Details({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      color: Colors.white,
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 15),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // service Id
            Padding(
              padding: const EdgeInsets.only(bottom: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // Service ID
                  Text('Service ID',
                      style: GoogleFonts.oxygen(
                        color: HexColor('44493D'),
                        fontSize: 14,
                      )),
                  Text('SE23124 ',
                      style: GoogleFonts.oxygen(
                        color: HexColor('32CD32'),
                        fontSize: 12,
                      )),
                ],
              ),
            ),
            // SService Type
            Padding(
              padding: const EdgeInsets.only(bottom: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // Service ID
                  Text('Service Type',
                      style: GoogleFonts.oxygen(
                        color: HexColor('44493D'),
                        fontSize: 14,
                      )),
                  Text('Driving',
                      style: GoogleFonts.oxygen(
                        color: HexColor('32CD32'),
                        fontSize: 12,
                      )),
                ],
              ),
            ),

            // SService Type
            Padding(
              padding: const EdgeInsets.only(bottom: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // Service ID
                  Text('Date of service ',
                      style: GoogleFonts.oxygen(
                        color: HexColor('44493D'),
                        fontSize: 14,
                      )),
                  Text('19 Jan, 2020',
                      style: GoogleFonts.oxygen(
                        color: HexColor('32CD32'),
                        fontSize: 12,
                      )),
                ],
              ),
            ),

            // SService Type
            Padding(
              padding: const EdgeInsets.only(bottom: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // Service ID
                  Text('Location of service',
                      style: GoogleFonts.oxygen(
                        color: HexColor('44493D'),
                        fontSize: 14,
                      )),
                  Text(' Dansoman - Police Station',
                      style: GoogleFonts.oxygen(
                        color: HexColor('32CD32'),
                        fontSize: 12,
                      )),

                  SizedBox(
                    height: 10,
                  ),
                  // location button
                  Container(
                    width: 100,
                    child: Chip(
                        backgroundColor: HexColor('32CD32').withOpacity(0.5),
                        label: Row(
                          children: [
                            Icon(
                              Icons.location_pin,
                              color: HexColor('32CD32'),
                            ),
                            Text('Locate',
                                style: GoogleFonts.oxygen(
                                    color: HexColor('32CD32'),
                                    fontSize: 12,
                                    fontWeight: FontWeight.w600)),
                          ],
                        )),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
