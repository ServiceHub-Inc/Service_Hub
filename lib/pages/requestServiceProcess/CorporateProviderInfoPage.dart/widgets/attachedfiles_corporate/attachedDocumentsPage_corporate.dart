import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hexcolor/hexcolor.dart';
import 'filemodel_corporate.dart';

class AttachedDocumentsPageCorporate extends StatelessWidget {
  const AttachedDocumentsPageCorporate({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: HexColor('E5E5E5'),
      body: Column(
        children: [
          // header info
          Container(
            color: Colors.white,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Uploaded Documents',
                    style: GoogleFonts.oxygen(
                        fontSize: 16,
                        color: HexColor('44493D'),
                        fontWeight: FontWeight.w600),
                  ),
                  Row(
                    children: [
                      Text('(10)',
                          style: GoogleFonts.oxygen(
                            fontSize: 14,
                            color: HexColor('32CD32'),
                          )),
                    ],
                  ),
                ],
              ),
            ),
          ),
          SizedBox(
            height: 3,
          ),
          // Grid view of yploaded images
          Expanded(
            child: Container(
                // future turned into into list view builder
                child: ListView(
              children: [
                // this tile is for word file
                Padding(
                  padding: const EdgeInsets.only(bottom: 1),
                  child: AttachedDocumentTileCorporate(
                    fileName: 'myCertification',
                    fileSize: '2.4',
                    fileColor: Colors.lightBlue,
                    fileType: 'docx'.toUpperCase(),
                  ),
                ),
                // this tile is for pdf
                Padding(
                  padding: const EdgeInsets.only(bottom: 1),
                  child: AttachedDocumentTileCorporate(
                    fileName: 'myDriverLiscence',
                    fileSize: '1.4',
                    fileColor: Colors.redAccent,
                    fileType: 'pdf'.toUpperCase(),
                  ),
                ),
                // this tile is for pdf
                Padding(
                  padding: const EdgeInsets.only(bottom: 1),
                  child: AttachedDocumentTileCorporate(
                    fileName: 'powerpointFile',
                    fileSize: '1.3',
                    fileColor: Colors.yellow,
                    fileType: 'pptx'.toUpperCase(),
                  ),
                )
              ],
            )),
          )
        ],
      ),
    );
  }
}
