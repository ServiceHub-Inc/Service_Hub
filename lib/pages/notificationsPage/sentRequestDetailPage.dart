import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hexcolor/hexcolor.dart';
import 'widgets/sentRequestDetails.dart';
import 'widgets/sRheaderInfo.dart';

class SentRequestDetailPage extends StatelessWidget {
  const SentRequestDetailPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: HexColor('E5E5E5'),
      appBar: AppBar(
        backgroundColor: HexColor('32CD32'),
        iconTheme: IconThemeData(color: Colors.white),
        elevation: 0,
        title: Text(
          'Kwadwo Amo',
          style: GoogleFonts.oxygen(fontSize: 18, color: Colors.white),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            // Provider Name and ID
            HeaderInfo(),
            // details
            Details(),
          ],
        ),
      ),
    );
  }
}
