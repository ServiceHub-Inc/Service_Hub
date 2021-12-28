import 'package:eva_icons_flutter/eva_icons_flutter.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hexcolor/hexcolor.dart';

import 'package:servicehub/pages/requestServiceProcess/submitRequestForm(Myself).dart/submitRequestFormPage(Myself).dart';
import 'package:servicehub/pages/requestServiceProcess/submitRequestFormPage(Someone)/submitRequestFormPage(Someone).dart';

class IndividualSubmitRequestBottomSheetIndividual extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(15),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // note here
          Text("CONFIRM REQUEST",
              style: GoogleFonts.oxygen(
                  color: HexColor('32CD32'),
                  fontSize: 16,
                  fontWeight: FontWeight.w600)),
          SizedBox(
            height: 5,
          ),
          Text(
            "Ensure that you have engaged the provider to agree on the scope of the service and the fees involved before submitting a request.",
            style: GoogleFonts.oxygen(color: HexColor('5F5F65'), fontSize: 14),
          ),
          SizedBox(
            height: 10,
          ),
          // text here
          Text(
            "For whom are you requesting the service?",
            style: TextStyle(color: HexColor('32CD32'), fontSize: 14),
          ),
          SizedBox(
            height: 15,
          ),
          // buttons for request service for my self
          GestureDetector(
            onTap: () {
              Navigator.pushAndRemoveUntil(
                context,
                MaterialPageRoute(
                  builder: (context) => SubmitRequestFormPageMySelf(),
                ),
                (route) => false,
              );
            },
            child: Chip(
                backgroundColor: HexColor('32CD32').withOpacity(0.5),
                label: Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 8, vertical: 8),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "My Self",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 16,
                        ),
                      ),
                      // arrow Icon
                      Icon(
                        EvaIcons.arrowRight,
                        color: Colors.white,
                      )
                    ],
                  ),
                )),
          ),
          SizedBox(
            height: 10,
          ),
          // buttons for request service for my someone
          GestureDetector(
            onTap: () {
              Navigator.pushAndRemoveUntil(
                context,
                MaterialPageRoute(
                  builder: (context) => SubmitRequestFormPageSomeone(),
                ),
                (route) => false,
              );
            },
            child: Chip(
                backgroundColor: HexColor('32CD32').withOpacity(0.5),
                label: Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 8, vertical: 8),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Someone",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 16,
                        ),
                      ),
                      // arrow Icon
                      Icon(
                        EvaIcons.arrowRight,
                        color: Colors.white,
                      )
                    ],
                  ),
                )),
          )
        ],
      ),
    );
  }
}
