import 'package:eva_icons_flutter/eva_icons_flutter.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hexcolor/hexcolor.dart';

class IndividualRefereeInfo extends StatefulWidget {
  const IndividualRefereeInfo({Key key}) : super(key: key);

  @override
  _IndividualRefereeInfoState createState() => _IndividualRefereeInfoState();
}

class _IndividualRefereeInfoState extends State<IndividualRefereeInfo> {
  bool _showRefereInfo = false;
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
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                // text here
                Text(
                  'Referee Information',
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
                      _showRefereInfo
                          ? EvaIcons.arrowIosUpward
                          : EvaIcons.arrowIosDownward,
                      color: Colors.white,
                      size: 15,
                    ),
                    onPressed: () {
                      setState(() {
                        _showRefereInfo = !_showRefereInfo;
                      });
                    },
                  ),
                ),
              ],
            ),
            Visibility(
              visible: _showRefereInfo,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // referee name
                  ListTile(
                    leading: Icon(
                      EvaIcons.person,
                      color: HexColor('32CD32'),
                    ),
                    title: Text(
                      'Referee Name',
                      style: GoogleFonts.oxygen(
                        fontSize: 12,
                        color: HexColor('B8B3B3'),
                      ),
                    ),
                    subtitle: Text(
                      'Owusu Bernard',
                      style: GoogleFonts.oxygen(
                          fontSize: 14,
                          color: HexColor('5F5F65'),
                          fontWeight: FontWeight.w600),
                    ),
                  ),

                  // referee name
                  ListTile(
                    leading: Icon(
                      EvaIcons.phoneCall,
                      color: HexColor('32CD32'),
                    ),
                    title: Text(
                      'Referee Contact',
                      style: GoogleFonts.oxygen(
                        fontSize: 12,
                        color: HexColor('B8B3B3'),
                      ),
                    ),
                    subtitle: Text(
                      '0244452234',
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
