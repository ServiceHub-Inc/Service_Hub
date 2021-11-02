import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:servicehub/pages/becomeProviderProcess/widgets/quizSuccessPageButton.dart';

class QuizSuccessPage extends StatelessWidget {
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
                        image: AssetImage('assets/quizLogo/tropy.png'))),
              ),
              SizedBox(
                height: 20,
              ),
              // text
              Text('Congratulations',
                  style: GoogleFonts.dmSerifText(
                      color: HexColor('5F5F65'), fontSize: 30)),
              SizedBox(
                height: 3,
              ),
              // text
              Text('Your quiz score is 80%',
                  style: GoogleFonts.oxygen(
                      color: HexColor('32CD32'), fontSize: 14)),
              SizedBox(
                height: 3,
              ),
              // Score
              Text('80%',
                  style: GoogleFonts.oxygen(
                      color: HexColor('32CD32'), fontSize: 20)),
              SizedBox(
                height: 10,
              ),
              // text

              SizedBox(
                height: 20,
              ),
              //  buttons
              QuizSuccessPageButton(),

              // Link to QuizFailurePage

              // TextButton(
              //   onPressed: () {
              //     Get.toNamed('/quizFailurePage');
              //   },
              //   child: Text('Link to the failure page',
              //       style: GoogleFonts.oxygen(
              //           color: HexColor('32CD32'), fontSize: 14)),
              // )
            ],
          ),
        ),
      ),
    );
  }
}
