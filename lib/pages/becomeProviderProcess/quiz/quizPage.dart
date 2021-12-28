// ignore_for_file: deprecated_member_use

import 'package:custom_radio_grouped_button/CustomButtons/ButtonTextStyle.dart';
import 'package:custom_radio_grouped_button/CustomButtons/CustomRadioButton.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:servicehub/pages/becomeProviderProcess/quiz/quizSuccessPage.dart';

class QuizPage extends StatefulWidget {
  @override
  _QuizPageState createState() => _QuizPageState();
}

class _QuizPageState extends State<QuizPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: HexColor('32CD32'),
        title: Text(
          'Become Provider',
          style: GoogleFonts.oxygen(fontSize: 16, color: Colors.white),
        ),
        elevation: 0,
        iconTheme: IconThemeData(color: Colors.white),
      ),
      body: CustomScrollView(slivers: [
        SliverToBoxAdapter(
          child: Padding(
            padding:
                const EdgeInsets.only(top: 20, left: 15, right: 15, bottom: 10),
            child: Column(
              children: [
                // Question Counter
                RichText(
                  text: TextSpan(
                      text: 'Question',
                      style: GoogleFonts.oxygen(
                          fontSize: 16, color: HexColor('44493D')),
                      children: [
                        TextSpan(
                          text: ' 1',
                          style: GoogleFonts.oxygen(
                              fontSize: 16, color: HexColor('32CD32')),
                        ),
                        TextSpan(
                          text: ' / 10',
                          style: GoogleFonts.oxygen(
                              fontSize: 16, color: HexColor('44493D')),
                        )
                      ]),
                ),
                SizedBox(height: 10),
                // Divider Line
                Divider(height: 1, color: HexColor('C4C4C4')),

                SizedBox(height: 20),
                // QUiz Question here

                Text(
                  'What is the first thing you should do when you meet a customer?',
                  style: GoogleFonts.oxygen(
                      fontSize: 18,
                      color: HexColor('44493D'),
                      fontWeight: FontWeight.w600),
                  textAlign: TextAlign.center,
                ),
                SizedBox(
                  height: 20,
                ),

                // Answer Buttons
                CustomRadioButton(
                  selectedBorderColor: HexColor('32CD32'),
                  unSelectedBorderColor: HexColor('32CD32'),
                  spacing: 0.0,
                  padding: 0.7,
                  height: 50,
                  horizontal: true,
                  enableShape: true,
                  elevation: 0,
                  absoluteZeroSpacing: false,
                  unSelectedColor: Theme.of(context).canvasColor,
                  buttonLables: [
                    'Stare at them ',
                    'Say “hello”',
                    'Snub them',
                    'You are on a phone call',
                  ],
                  buttonValues: [
                    "Stare at them ",
                    "Say “hello”",
                    "Snub them",
                    "You are on a phone call",
                  ],
                  buttonTextStyle: ButtonTextStyle(
                      selectedColor: Colors.white,
                      unSelectedColor: HexColor('44493D'),
                      textStyle: TextStyle(fontSize: 16)),
                  radioButtonValue: (value) {
                    print(value);
                  },
                  selectedColor: Theme.of(context).accentColor,
                ),

                // next button
                Container(
                  height: 50,
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 15),
                    child: TextButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => QuizSuccessPage(),
                          ),
                        );
                      },
                      child: Text(
                        'NEXT',
                        style: GoogleFonts.oxygen(
                          fontSize: 16,
                          fontWeight: FontWeight.w600,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                  decoration: BoxDecoration(
                    color: HexColor('32CD32'),
                    borderRadius: BorderRadius.circular(50),
                  ),
                ),
              ],
            ),
          ),
        ),
      ]),
    );
  }
}
