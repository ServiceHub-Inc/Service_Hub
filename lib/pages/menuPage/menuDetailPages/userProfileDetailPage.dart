import 'package:eva_icons_flutter/eva_icons_flutter.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:rflutter_alert/rflutter_alert.dart';

import '../widgets/headerProfile.dart';

class UserProfileDetailPage extends StatelessWidget {
  const UserProfileDetailPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // final width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            // header profiler ( change profile pic, and name is there)
            HeaderProfile(),
            SizedBox(
              height: 5,
            ),
            Container(
              width: double.infinity,
              color: Colors.white,
              // might turn into list view builder
              child: Column(
                children: [
                  // First Name
                  ListTile(
                      title: Text(
                        'First Name',
                        style: GoogleFonts.oxygen(
                          fontSize: 12,
                          color: HexColor("B8B3B3"),
                        ),
                      ),
                      subtitle: Text(
                        'Ameri',
                        style: GoogleFonts.oxygen(
                          fontSize: 14,
                          color: HexColor("44493D"),
                        ),
                      ),
                      trailing: IconButton(
                          icon: Icon(
                            EvaIcons.edit2Outline,
                            color: HexColor("32CD32"),
                          ),
                          onPressed: () {
                            Alert(
                                context: context,
                                title: "First Name",
                                content: Column(
                                  children: <Widget>[
                                    TextField(
                                      decoration: InputDecoration(
                                        labelText: 'Guruis Ameri',
                                      ),
                                    ),
                                  ],
                                ),
                                buttons: [
                                  DialogButton(
                                    onPressed: () => Navigator.pop(context),
                                    child: Text(
                                      "Save",
                                      style: TextStyle(
                                          color: Colors.white, fontSize: 20),
                                    ),
                                  )
                                ]).show();
                          })),

                  // Last Name
                  ListTile(
                      title: Text(
                        'Last Name',
                        style: GoogleFonts.oxygen(
                          fontSize: 12,
                          color: HexColor("B8B3B3"),
                        ),
                      ),
                      subtitle: Text(
                        'Guruis',
                        style: GoogleFonts.oxygen(
                          fontSize: 14,
                          color: HexColor("44493D"),
                        ),
                      ),
                      trailing: IconButton(
                          icon: Icon(
                            EvaIcons.edit2Outline,
                            color: HexColor("32CD32"),
                          ),
                          onPressed: () {})),

                  // Verification status
                  ListTile(
                      title: Text(
                        'Verification Status  ',
                        style: GoogleFonts.oxygen(
                          fontSize: 12,
                          color: HexColor("B8B3B3"),
                        ),
                      ),
                      subtitle: Text(
                        'Verified',
                        style: GoogleFonts.oxygen(
                          fontSize: 14,
                          color: HexColor("32CD32"),
                        ),
                      ),
                      trailing: IconButton(
                          icon: Icon(
                            EvaIcons.checkmarkCircle2Outline,
                            color: HexColor("32CD32"),
                          ),
                          onPressed: () {})),

                  // EMail Address
                  ListTile(
                      title: Text(
                        'Email Address ',
                        style: GoogleFonts.oxygen(
                          fontSize: 12,
                          color: HexColor("B8B3B3"),
                        ),
                      ),
                      subtitle: Text(
                        'guruiameris@gmail.com',
                        style: GoogleFonts.oxygen(
                          fontSize: 14,
                          color: HexColor("44493D"),
                        ),
                      ),
                      trailing: IconButton(
                          icon: Icon(
                            EvaIcons.edit2Outline,
                            color: HexColor("32CD32"),
                          ),
                          onPressed: () {})),

                  // Telephone Number
                  ListTile(
                      title: Text(
                        'Telephone Number ',
                        style: GoogleFonts.oxygen(
                          fontSize: 12,
                          color: HexColor("B8B3B3"),
                        ),
                      ),
                      subtitle: Text(
                        '0245678657',
                        style: GoogleFonts.oxygen(
                          fontSize: 14,
                          color: HexColor("44493D"),
                        ),
                      ),
                      trailing: IconButton(
                          icon: Icon(
                            EvaIcons.edit2Outline,
                            color: HexColor("32CD32"),
                          ),
                          onPressed: () {})),

                  // Telephone Number
                  ListTile(
                      title: Text(
                        'Language Spoken ',
                        style: GoogleFonts.oxygen(
                          fontSize: 12,
                          color: HexColor("B8B3B3"),
                        ),
                      ),
                      subtitle: Text(
                        'English',
                        style: GoogleFonts.oxygen(
                          fontSize: 14,
                          color: HexColor("44493D"),
                        ),
                      ),
                      trailing: IconButton(
                          icon: Icon(
                            EvaIcons.edit2Outline,
                            color: HexColor("32CD32"),
                          ),
                          onPressed: () {})),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
