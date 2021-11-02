import 'package:eva_icons_flutter/eva_icons_flutter.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hexcolor/hexcolor.dart';

class IndividualInfoAndQualification extends StatefulWidget {
  IndividualInfoAndQualification({Key key}) : super(key: key);

  @override
  _IndividualInfoAndQualificationState createState() =>
      _IndividualInfoAndQualificationState();
}

class _IndividualInfoAndQualificationState
    extends State<IndividualInfoAndQualification> {
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
                  'Personal Info & Qualifications',
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
                  ListTile(
                    leading: Icon(
                      EvaIcons.personOutline,
                      color: HexColor('32CD32'),
                    ),
                    title: Text(
                      'Full Name',
                      style: GoogleFonts.oxygen(
                        fontSize: 12,
                        color: HexColor('B8B3B3'),
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
                  // Age here
                  ListTile(
                    leading: Icon(
                      Icons.cake_outlined,
                      color: HexColor('32CD32'),
                    ),
                    title: Text(
                      'Age',
                      style: GoogleFonts.oxygen(
                        fontSize: 12,
                        color: HexColor('B8B3B3'),
                      ),
                    ),
                    subtitle: Text(
                      '33',
                      style: GoogleFonts.oxygen(
                          fontSize: 14,
                          color: HexColor('5F5F65'),
                          fontWeight: FontWeight.w600),
                    ),
                  ),
                  // language Spoken
                  ListTile(
                    leading: Icon(
                      EvaIcons.globe,
                      color: HexColor('32CD32'),
                    ),
                    title: Text(
                      'Languages',
                      style: GoogleFonts.oxygen(
                        fontSize: 12,
                        color: HexColor('B8B3B3'),
                      ),
                    ),
                    subtitle: Text(
                      'Twi, English, Ga',
                      style: GoogleFonts.oxygen(
                          fontSize: 14,
                          color: HexColor('5F5F65'),
                          fontWeight: FontWeight.w600),
                    ),
                  ),
                  // top three traits
                  ListTile(
                    leading: Icon(
                      EvaIcons.headphonesOutline,
                      color: HexColor('32CD32'),
                    ),
                    title: Text(
                      'Top 3 Customer Service Skills',
                      style: GoogleFonts.oxygen(
                        fontSize: 12,
                        color: HexColor('B8B3B3'),
                      ),
                    ),
                    subtitle: Text(
                      'Empathy, Patience and Flexibility',
                      style: GoogleFonts.oxygen(
                          fontSize: 14,
                          color: HexColor('5F5F65'),
                          fontWeight: FontWeight.w600),
                    ),
                  ),
                  // qualification
                  ListTile(
                    leading: Icon(
                      Icons.school_outlined,
                      color: HexColor('32CD32'),
                    ),
                    title: Text(
                      'Highest Level of Education',
                      style: GoogleFonts.oxygen(
                        fontSize: 12,
                        color: HexColor('B8B3B3'),
                      ),
                    ),
                    subtitle: Text(
                      'Degree',
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
                        color: HexColor('B8B3B3'),
                      ),
                    ),
                    subtitle: Text(
                      '2',
                      style: GoogleFonts.oxygen(
                          fontSize: 14,
                          color: HexColor('5F5F65'),
                          fontWeight: FontWeight.w600),
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
