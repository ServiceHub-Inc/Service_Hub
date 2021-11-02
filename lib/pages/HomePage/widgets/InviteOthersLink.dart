import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hexcolor/hexcolor.dart';

class InviteOthers extends StatelessWidget {
  const InviteOthers({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 11.0),
      margin: EdgeInsets.only(bottom: 10.0),
      child: PhysicalModel(
        elevation: 2.0,
        color: Colors.white,
        borderRadius: BorderRadius.circular(10.0),
        child: Container(
          // height: 170,
          width: double.infinity,
          child: Padding(
            padding: const EdgeInsets.all(17),
            child: Column(
              children: [
                Text(
                  'Invite others and win up to ${new String.fromCharCodes(new Runes('\u20B5'))} 500',
                  style: GoogleFonts.oxygen(
                      color: HexColor('44493D'),
                      fontSize: 14,
                      fontWeight: FontWeight.w600),
                ),
                Text(
                  'Introduce others to the easy and convenient way to access and deliver services',
                  textAlign: TextAlign.center,
                  style: GoogleFonts.oxygen(
                    color: HexColor('5F5F65'),
                    fontSize: 13,
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                // Invite Button
                Container(
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: HexColor('32CD32'),
                    borderRadius: BorderRadius.circular(4),
                  ),
                  child: TextButton(
                    child: Text("INVITE",
                        style: GoogleFonts.oxygen(
                            fontSize: 14,
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            letterSpacing: 2,
                            height: 1.5)),
                    onPressed: () {
                      // action
                    },
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
