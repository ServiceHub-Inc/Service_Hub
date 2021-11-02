import 'package:eva_icons_flutter/eva_icons_flutter.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hexcolor/hexcolor.dart';

class HeaderProfile extends StatelessWidget {
  const HeaderProfile({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 250,
      color: Colors.white,
      child: Padding(
        padding: const EdgeInsets.only(top: 70),
        child: Column(
          children: [
            // image here
            Center(
              child: Stack(
                children: [
                  // image container
                  Container(
                    height: 90,
                    width: 90,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(100),
                        image: DecorationImage(
                            image:
                                AssetImage('assets/serviceImages/security.jpg'),
                            fit: BoxFit.cover)),
                  ),
                  // edit icon
                  Positioned(
                    right: 0,
                    bottom: 0,
                    child: CircleAvatar(
                      radius: 18,
                      backgroundColor: HexColor('32CD32'),
                      child: Icon(
                        EvaIcons.cameraOutline,
                        color: Colors.white,
                        size: 16,
                      ),
                    ),
                  )
                ],
              ),
            ),
            SizedBox(
              height: 10,
            ),
            // name and ID here
            Text(
              'Ameri Guruis ',
              style: GoogleFonts.oxygen(
                  color: HexColor('44493D'),
                  fontSize: 20,
                  fontWeight: FontWeight.bold),
              overflow: TextOverflow.fade,
              textAlign: TextAlign.center,
            ),
            RichText(
              text: TextSpan(
                  text: 'ID:',
                  style: GoogleFonts.oxygen(
                    color: HexColor('44493D'),
                    fontSize: 12,
                  ),
                  // overflow: TextOverflow.ellipsis,
                  children: [
                    TextSpan(
                        text: ' AD1756',
                        style: GoogleFonts.oxygen(
                          color: HexColor('32CD32'),
                          fontSize: 12,
                        )),
                  ]),
            )
          ],
        ),
      ),
    );
  }
}
