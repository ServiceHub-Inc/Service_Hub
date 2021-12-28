import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:servicehub/pages/becomeProviderProcess/quiz/quizPage.dart';
import 'package:servicehub/pages/becomeProviderProcess/widgets/quizSuccessPageButton.dart';

class QuizFailurePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              // tropy here
              Container(
                height: 160,
                width: 160,
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage('assets/quizLogo/sad.png'))),
              ),
              SizedBox(
                height: 20,
              ),
              // text
              Text('Sorry, Kwame',
                  style: GoogleFonts.dmSerifText(
                      color: HexColor('5F5F65'), fontSize: 30)),
              SizedBox(
                height: 3,
              ),
              // text
              Text('You fail the quiz',
                  style: GoogleFonts.oxygen(
                      color: HexColor('FF0000'), fontSize: 14)),
              SizedBox(
                height: 3,
              ),
              // Score
              Text('35%',
                  style: GoogleFonts.oxygen(
                      color: HexColor('FF0000'), fontSize: 20)),
              SizedBox(
                height: 10,
              ),
              // text

              // Retry Button
              Container(
                height: 40,
                child: TextButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => QuizPage(),
                        ),
                      );
                    },
                    child: Text(
                      'Retry',
                      style: GoogleFonts.oxygen(color: HexColor('32CD32')),
                    )),
                decoration: BoxDecoration(
                    border: Border.all(color: HexColor('32CD32'), width: 2),
                    borderRadius: BorderRadius.circular(10)),
              ),
              SizedBox(
                height: 20,
              ),
              //  buttons
              QuizSuccessPageButton(),
              // Link to QuizFailurePage
            ],
          ),
        ),
      ),
    );
  }
}
