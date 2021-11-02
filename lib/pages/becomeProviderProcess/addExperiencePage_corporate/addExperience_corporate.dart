import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hexcolor/hexcolor.dart';
import 'widget/addExperienceForms_corporate.dart';

class AddExperiencePageCorporate extends StatefulWidget {
  @override
  _AddExperiencePageCorporateState createState() =>
      _AddExperiencePageCorporateState();
}

class _AddExperiencePageCorporateState
    extends State<AddExperiencePageCorporate> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: HexColor('F6F6F6'),
      appBar: AppBar(
        backgroundColor: HexColor('32CD32'),
        title: Text(
          'Become Provider',
          style: GoogleFonts.oxygen(fontSize: 16, color: Colors.white),
        ),
        elevation: 0,
        iconTheme: IconThemeData(color: Colors.white),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 20),
          child: Column(
            children: [
              Container(
                width: double.infinity,
                child: AddExperienceFormCorporate(),
              )
            ],
          ),
        ),
      ),
    );
  }
}
