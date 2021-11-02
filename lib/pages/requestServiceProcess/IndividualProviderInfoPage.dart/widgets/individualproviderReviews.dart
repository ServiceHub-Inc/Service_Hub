import 'package:eva_icons_flutter/eva_icons_flutter.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:servicehub/pages/requestServiceProcess/IndividualProviderInfoPage.dart/widgets/individualProviderReviewListPage.dart';

class IndividualProviderReviews extends StatelessWidget {
  const IndividualProviderReviews({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => IndividualProviderReviewListPage(),
          ),
        );
      },
      child: Container(
        color: Colors.white,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 15),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  // attached file text and icon
                  Row(
                    children: [
                      Text(
                        '32',
                        style: GoogleFonts.oxygen(
                            fontSize: 14,
                            color: HexColor('32CD32'),
                            fontWeight: FontWeight.w600),
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      Text(
                        'Reviews',
                        style: GoogleFonts.oxygen(
                          fontSize: 14,
                          color: HexColor('99999C'),
                        ),
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      // file icon
                      Icon(
                        EvaIcons.star,
                        size: 15,
                        color: Colors.amber,
                      ),
                      SizedBox(
                        width: 3,
                      ),
                      Text(
                        '3.0',
                        style: GoogleFonts.oxygen(
                          fontSize: 14,
                          color: Colors.amber,
                        ),
                      ),
                    ],
                  ),
                  // number of attached file and icon
                  Row(
                    children: [
                      // file icon
                      Icon(
                        EvaIcons.arrowIosForward,
                        size: 20,
                        color: HexColor('32CD32'),
                      )
                    ],
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
