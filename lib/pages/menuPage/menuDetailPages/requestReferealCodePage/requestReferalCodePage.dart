import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hexcolor/hexcolor.dart';

import '../../widgets/referalViaEmail.dart';
import '../../widgets/referalViaPhone.dart';

class RequestReferalCodePage extends StatelessWidget {
  const RequestReferalCodePage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: HexColor('32CD32'),
        iconTheme: IconThemeData(color: Colors.white),
        elevation: 0,
        title: Text(
          'Request Referral Code',
          style: GoogleFonts.oxygen(fontSize: 18, color: Colors.white),
        ),
      ),
      body: SingleChildScrollView(
        child: SafeArea(
          child: Column(
            children: [
              // Referal by phone
              ReferalViaPhone(),

              SizedBox(
                height: 10,
              ),
              // Referal by Email

              ReferalViaEmail()
            ],
          ),
        ),
      ),
    );
  }
}
