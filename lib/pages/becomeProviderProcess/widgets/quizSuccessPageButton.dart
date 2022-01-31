import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:rflutter_alert/rflutter_alert.dart';
import 'package:servicehub/pages/becomeProviderProcess/ProvidedServiceSuccessPage/serviceTerms.dart';
import 'package:servicehub/utils/util.dart';

class QuizSuccessPageButton extends StatefulWidget {
  // Alert Styling
  @override
  _QuizSuccessPageButtonState createState() => _QuizSuccessPageButtonState();
}

class _QuizSuccessPageButtonState extends State<QuizSuccessPageButton> {
    @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      width: double.infinity,
      child: TextButton(
        onPressed: () {
          Alert(
            style: Utilities.alertStyle(),
            buttons: [
              DialogButton(
                color: HexColor('32CD32'),
                child: Text(
                  "YES",
                  style: TextStyle(color: Colors.white, fontSize: 20),
                ),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => ServiceTerms(),
                    ),
                  );
                },
                width: 120,
              ),
              DialogButton(
                color: Colors.redAccent,
                child: Text(
                  "NO",
                  style: TextStyle(color: Colors.white, fontSize: 20),
                ),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => ServiceTerms(),
                    ),
                  );
                },
                width: 120,
              )
            ],
            context: context,
            title: "QUIZ SCORE",
            desc:
                "Do you want to show this score to customers in your profile?",
          ).show();
        },
        child: Text('COMPLETE',
            style: GoogleFonts.oxygen(
                fontSize: 16,
                fontWeight: FontWeight.w600,
                color: Colors.white)),
      ),
      decoration: BoxDecoration(
          color: HexColor('32CD32'), borderRadius: BorderRadius.circular(50)),
    );
  }
}
