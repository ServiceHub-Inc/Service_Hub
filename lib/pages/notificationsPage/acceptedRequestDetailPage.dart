import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hexcolor/hexcolor.dart';
import 'widgets/details.dart';
import 'widgets/headerInfo.dart';
import 'widgets/message.dart';
import 'widgets/payButton.dart';

class AcceptedRequestDetailPage extends StatelessWidget {
  const AcceptedRequestDetailPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: HexColor('E5E5E5'),
      appBar: AppBar(
        backgroundColor: HexColor('32CD32'),
        iconTheme: IconThemeData(color: Colors.white),
        elevation: 0,
        title: Text(
          'Ameri Gurui',
          style: GoogleFonts.oxygen(fontSize: 18, color: Colors.white),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            // Provider Name and ID
            HeaderInfo(),
            // Message here
            Message(),
            // details
            Details(),

            // pay button
            PayButton()
          ],
        ),
      ),
    );
  }
}
