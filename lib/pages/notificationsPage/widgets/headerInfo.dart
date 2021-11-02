import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hexcolor/hexcolor.dart';

class HeaderInfo extends StatelessWidget {
  const HeaderInfo({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 3),
      child: Container(
        color: Colors.white,
        width: double.infinity,
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 10),
          child: ListTile(
            // imager container here
            leading: Container(
              height: 60,
              width: 60,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(100),
                  image: DecorationImage(
                      fit: BoxFit.cover,
                      image:
                          AssetImage('assets/serviceImages/Home-tutor.png'))),
            ),
            title: Text(
              'Provider Name ',
              style: GoogleFonts.oxygen(
                fontSize: 16,
              ),
            ),
            subtitle: RichText(
              text: TextSpan(
                  text: 'ID: ',
                  style: GoogleFonts.oxygen(
                      color: HexColor('44493D'),
                      fontSize: 13,
                      fontWeight: FontWeight.w600),
                  children: [
                    TextSpan(
                        text: ' AD1756',
                        style: GoogleFonts.oxygen(
                            color: HexColor('32CD32'),
                            fontSize: 12,
                            fontWeight: FontWeight.normal))
                  ]),
              overflow: TextOverflow.ellipsis,
            ),
            trailing: Text(
              '3:23 PM',
              style: GoogleFonts.oxygen(
                color: HexColor('6E798C'),
                fontSize: 12,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
