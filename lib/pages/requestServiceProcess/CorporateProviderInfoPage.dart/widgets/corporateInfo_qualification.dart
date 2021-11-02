import 'package:eva_icons_flutter/eva_icons_flutter.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hexcolor/hexcolor.dart';

class CorporateInfoQualification extends StatefulWidget {
  CorporateInfoQualification({Key key}) : super(key: key);

  @override
  _CorporateInfoQualificationState createState() =>
      _CorporateInfoQualificationState();
}

class _CorporateInfoQualificationState
    extends State<CorporateInfoQualification> {
  bool _showBasicInfo = false;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      color: Colors.white,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // title (Basic Info)
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                // text here
                Text(
                  'Corporate Information',
                  style: GoogleFonts.oxygen(
                      fontSize: 14,
                      color: HexColor('32CD32'),
                      fontWeight: FontWeight.w600),
                ),
                // Show Icon
                CircleAvatar(
                  radius: 16,
                  backgroundColor: HexColor('32CD32'),
                  child: IconButton(
                    icon: Icon(
                      _showBasicInfo
                          ? EvaIcons.arrowIosUpward
                          : EvaIcons.arrowIosDownward,
                      color: Colors.white,
                      size: 15,
                    ),
                    onPressed: () {
                      setState(() {
                        _showBasicInfo = !_showBasicInfo;
                      });
                    },
                  ),
                ),
              ],
            ),

            // Actual
            Visibility(
              visible: _showBasicInfo,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    height: 10,
                  ),
                  // full name her

                  ListTile(
                    leading: Icon(
                      Icons.account_balance,
                      color: HexColor('32CD32'),
                    ),
                    title: Text(
                      'Company Name',
                      style: GoogleFonts.oxygen(
                        fontSize: 12,
                        color: HexColor('5F5F65'),
                      ),
                    ),
                    subtitle: Text(
                      'Ameri Gurui Adeyi',
                      style: GoogleFonts.oxygen(
                          fontSize: 14,
                          color: HexColor('5F5F65'),
                          fontWeight: FontWeight.w600),
                    ),
                  ),

                  // years in existnce
                  ListTile(
                    leading: Icon(
                      Icons.cake_outlined,
                      color: HexColor('32CD32'),
                    ),
                    title: Text(
                      'Years in Existence',
                      style: GoogleFonts.oxygen(
                        fontSize: 12,
                        color: HexColor('5F5F65'),
                      ),
                    ),
                    subtitle: Text(
                      '5',
                      style: GoogleFonts.oxygen(
                          fontSize: 14,
                          color: HexColor('5F5F65'),
                          fontWeight: FontWeight.w600),
                    ),
                  ),

                  // years of experience
                  ListTile(
                    leading: Icon(
                      EvaIcons.briefcaseOutline,
                      color: HexColor('32CD32'),
                    ),
                    title: Text(
                      'Years of Experience',
                      style: GoogleFonts.oxygen(
                        fontSize: 12,
                        color: HexColor('5F5F65'),
                      ),
                    ),
                    subtitle: Text(
                      '5 Years',
                      style: GoogleFonts.oxygen(
                          fontSize: 14,
                          color: HexColor('5F5F65'),
                          fontWeight: FontWeight.w600),
                    ),
                  ),

                  SizedBox(height: 10),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
