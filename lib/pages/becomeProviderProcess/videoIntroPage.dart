import 'package:eva_icons_flutter/eva_icons_flutter.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:servicehub/pages/becomeProviderProcess/videoPages.dart';

class VideoIntroPage extends StatelessWidget {
  const VideoIntroPage({Key key}) : super(key: key);

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
                child: Icon(
                  EvaIcons.videoOutline,
                  color: HexColor('32CD32'),
                  size: 40,
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            // text here
            Text(
              'In the next 5 minutes, let’s learn how we can give our customers memorable experiences',
              style:
                  GoogleFonts.oxygen(fontSize: 14, color: HexColor('44493D')),
              textAlign: TextAlign.center,
            ),
            SizedBox(
              height: 20,
            ),
            // button here
            Container(
              height: 40,
              child: TextButton(
                  onPressed: () {
                    Navigator.pushAndRemoveUntil(
                      context,
                      MaterialPageRoute(
                        builder: (context) => VideoPage(),
                      ),
                      (route) => false,
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
