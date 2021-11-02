import 'package:eva_icons_flutter/eva_icons_flutter.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hexcolor/hexcolor.dart';
import 'attachfilesTabPage_corporate.dart';

class AttachedFilesCorporate extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => AttachdFilesTabPageCorporate(),
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
                        'Attached Files',
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
                        EvaIcons.file,
                        size: 13,
                        color: HexColor('99999C'),
                      )
                    ],
                  ),
                  // number of attached file and icon
                  Row(
                    children: [
                      Text(
                        '4',
                        style: GoogleFonts.oxygen(
                          fontSize: 16,
                          color: HexColor('32CD32'),
                        ),
                      ),
                      SizedBox(
                        width: 5,
                      ),
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
