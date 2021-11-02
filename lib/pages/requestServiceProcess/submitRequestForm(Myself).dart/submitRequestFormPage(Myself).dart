import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hexcolor/hexcolor.dart';

import 'widets/submitRequestFormMyself.dart';

class SubmitRequestFormPageMySelf extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: HexColor('32CD32'),
        iconTheme: IconThemeData(color: Colors.white),
        elevation: 0,
        title: Text(
          'Request service',
          style: GoogleFonts.oxygen(fontSize: 18, color: Colors.white),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Request Form',
                          style: GoogleFonts.oxygen(
                              fontSize: 16,
                              color: HexColor('44493D'),
                              fontWeight: FontWeight.w600),
                        ),
                        Text(
                          '(Myself)',
                          style: GoogleFonts.oxygen(
                              fontSize: 14, color: HexColor('32CD32')),
                        )
                      ],
                    ),
                  ],
                ),
              ),
            ),
            // Forms here
            SubmitRequestFormMyself()
          ],
        ),
      ),
    );
  }
}
