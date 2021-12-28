import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:servicehub/pages/becomeProviderProcess/quiz/quizIntroPage.dart';

class VideoPage extends StatelessWidget {
  const VideoPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text('Video would be embedded here'),
            SizedBox(
              height: 20,
            ),
            Container(
              height: 40,
              child: TextButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => QuizIntroPage(),
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
            )
          ],
        ),
      ),
    );
  }
}
