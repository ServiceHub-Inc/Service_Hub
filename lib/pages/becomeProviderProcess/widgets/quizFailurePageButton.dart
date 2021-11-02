import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hexcolor/hexcolor.dart';

class QuizFailurePageButton extends StatefulWidget {
  // Alert Styling
  @override
  _QuizFailurePageButtonState createState() => _QuizFailurePageButtonState();
}

class _QuizFailurePageButtonState extends State<QuizFailurePageButton> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      width: double.infinity,
      child: TextButton(
        onPressed: () {
          // Alert
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
