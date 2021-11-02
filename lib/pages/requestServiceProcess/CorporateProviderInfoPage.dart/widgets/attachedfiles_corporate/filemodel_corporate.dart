import 'package:eva_icons_flutter/eva_icons_flutter.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hexcolor/hexcolor.dart';

class AttachedDocumentTileCorporate extends StatelessWidget {
  final String fileName;
  final String fileType;
  final String fileSize;
  final Color fileColor;

  AttachedDocumentTileCorporate({
    @required this.fileName,
    @required this.fileType,
    @required this.fileSize,
    @required this.fileColor,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      color: Colors.white,
      child: ListTile(
        onTap: () {},
        leading: CircleAvatar(
          radius: 20,
          backgroundColor: fileColor,
          child: Icon(
            EvaIcons.file,
            color: Colors.white,
            size: 18,
          ),
        ),
        title: Row(
          children: [
            // document name
            Text(
              fileName,
              style: GoogleFonts.oxygen(
                fontSize: 14,
                color: HexColor('44493D'),
              ),
            ),
            // document type
            Text(
              ".$fileType",
              style: GoogleFonts.oxygen(
                fontSize: 16,
                color: HexColor('44493D'),
              ),
            ),
          ],
        ),
        subtitle: Row(
          children: [
            // document name
            Text(
              '$fileSize.MB',
              style: GoogleFonts.oxygen(
                fontSize: 12,
                color: HexColor('B8B3B3'),
              ),
            ),
            SizedBox(
              width: 5,
            ),
            // document type
            Text(
              '.$fileType',
              style: GoogleFonts.oxygen(
                fontSize: 12,
                color: HexColor('B8B3B3'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
