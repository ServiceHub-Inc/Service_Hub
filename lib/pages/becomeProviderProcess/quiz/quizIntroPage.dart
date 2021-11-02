import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:servicehub/pages/becomeProviderProcess/ProvidedServiceSuccessPage/providedServiceSuccessPage.dart';
import 'package:servicehub/pages/becomeProviderProcess/quiz/quizPage.dart';

class QuizIntroPage extends StatelessWidget {
  const QuizIntroPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(15),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            // circle with video icon
            Center(
              child: CircleAvatar(
                  radius: 70,
                  backgroundColor: Colors.grey[200],
                  child: Container(
                    height: 80,
                    width: 90,
                    decoration: BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage('assets/quizLogo/quizLogo.png'))),
                  )),
            ),
            SizedBox(
              height: 20,
            ),
            // text here
            RichText(
              textAlign: TextAlign.center,
              text: TextSpan(
                text:
                    'You’ve made great progress so far. Now let’s see how you would handle your first customer here in this fun quiz.',
                style:
                    GoogleFonts.oxygen(fontSize: 14, color: HexColor('44493D')),
              ),
            ),

            SizedBox(
              height: 20,
            ),
            // button here
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
                    'Start',
                    style: GoogleFonts.oxygen(color: HexColor('32CD32')),
                  )),
              decoration: BoxDecoration(
                  border: Border.all(color: HexColor('32CD32'), width: 2),
                  borderRadius: BorderRadius.circular(10)),
            ),

            SizedBox(
              height: 15,
            ),
            // SkipButton
            RichText(
              text: TextSpan(
                  text: 'Skip',
                  style: TextStyle(color: HexColor('32CD32'), fontSize: 14),
                  recognizer: TapGestureRecognizer()
                    ..onTap = () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => ProvidedServiceSuccesspage(),
                        ),
                      );
                    }),
            ),
          ],
        ),
      ),
    );
  }
}
