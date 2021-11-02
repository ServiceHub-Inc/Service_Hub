import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:servicehub/pages/becomeProviderProcess/corporateProviderProcess/widgets/corporateExperienceForms.dart';
import 'package:servicehub/pages/becomeProviderProcess/corporateProviderProcess/widgets/corporateInfoForms.dart';

class CorporateInfoPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: HexColor('32CD32'),
        title: Text(
          'Become Provider',
          style: GoogleFonts.oxygen(fontSize: 16, color: Colors.white),
        ),
        elevation: 0,
        iconTheme: IconThemeData(color: Colors.white),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            // header
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
              child: Container(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
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
                        Text(
                          'Corporate Information',
                          style: GoogleFonts.oxygen(
                              fontSize: 22,
                              color: HexColor('44493D'),
                              fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                    RichText(
                      text: TextSpan(
                        text: "1",
                        style: GoogleFonts.oxygen(
                            fontSize: 14, color: HexColor('949498')),
                        children: [
                          TextSpan(
                              text: " / 3",
                              style: GoogleFonts.oxygen(
                                  fontSize: 14,
                                  color: HexColor('32CD32'),
                                  fontWeight: FontWeight.w600))
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),
            // forms
            CorporateInfoForms(),
            SizedBox(
              height: 30,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
              child: Container(
                child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
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
                          Text(
                            'Experience',
                            style: GoogleFonts.oxygen(
                                fontSize: 22,
                                color: HexColor('44493D'),
                                fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                      RichText(
                        text: TextSpan(
                          text: "2",
                          style: GoogleFonts.oxygen(
                              fontSize: 14, color: HexColor('949498')),
                          children: [
                            TextSpan(
                              text: " / 3",
                              style: GoogleFonts.oxygen(
                                fontSize: 14,
                                color: HexColor('32CD32'),
                                fontWeight: FontWeight.w600,
                              ),
                            )
                          ],
                        ),
                      )
                    ]),
              ),
            ),
            CorporateExperienceInfoForms(),
          ],
        ),
      ),
    );
  }
}
