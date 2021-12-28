import 'package:eva_icons_flutter/eva_icons_flutter.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:servicehub/pages/settignsPage/settingsDetailPages/locatianSettingsDetailPage/locationSettingsdetailPage.dart';
import 'package:servicehub/pages/settignsPage/settingsDetailPages/locationSettingsDetailPage/securitySettingsdetailPage.dart';

class SettingsPage extends StatelessWidget {
  const SettingsPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // final width = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: HexColor('32CD32'),
        iconTheme: IconThemeData(color: Colors.white),
        elevation: 0,
        title: Text(
          'Settings',
          style: GoogleFonts.oxygen(fontSize: 18, color: Colors.white),
        ),
      ),
      body: Column(
        children: [
          // terms and conditions
          Container(
              color: Colors.white,
              width: double.infinity,
              child: ListTile(
                title: Text(
                  'Terms & Conditions',
                  style: GoogleFonts.oxygen(
                    color: HexColor('44493D'),
                    fontSize: 14,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                trailing: Icon(EvaIcons.arrowIosForwardOutline),
              )),
          SizedBox(
            height: 1,
          ),
          // New user FAQ
          Container(
              color: Colors.white,
              width: double.infinity,
              child: ListTile(
                title: Text(
                  'New user FAQ',
                  style: GoogleFonts.oxygen(
                    color: HexColor('44493D'),
                    fontSize: 14,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                trailing: Icon(EvaIcons.arrowIosForwardOutline),
              )),
          SizedBox(
            height: 1,
          ),
          // Location
          Container(
              color: Colors.white,
              width: double.infinity,
              child: ListTile(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => LocationSettingsDetailPage(),
                    ),
                  );
                },
                title: Text(
                  'Location',
                  style: GoogleFonts.oxygen(
                    color: HexColor('44493D'),
                    fontSize: 14,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                trailing: Icon(EvaIcons.arrowIosForwardOutline),
              )),
          SizedBox(
            height: 1,
          ),
          // Privacy policy
          Container(
              color: Colors.white,
              width: double.infinity,
              child: ListTile(
                title: Text(
                  'Privacy Policy',
                  style: GoogleFonts.oxygen(
                    color: HexColor('44493D'),
                    fontSize: 14,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                trailing: Icon(EvaIcons.arrowIosForwardOutline),
              )),
          SizedBox(
            height: 1,
          ),
          // Security
          Container(
              color: Colors.white,
              width: double.infinity,
              child: ListTile(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => SecuritySettingsDetailPage(),
                    ),
                  );
                },
                title: Text(
                  'Security',
                  style: GoogleFonts.oxygen(
                    color: HexColor('44493D'),
                    fontSize: 14,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                trailing: Icon(EvaIcons.arrowIosForwardOutline),
              )),
          SizedBox(
            height: 1,
          ),
          // Log out
          Container(
              color: Colors.white,
              width: double.infinity,
              child: ListTile(
                title: Text(
                  'Sign out',
                  style: GoogleFonts.oxygen(
                    color: HexColor('44493D'),
                    fontSize: 14,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                trailing: Icon(
                  EvaIcons.logOut,
                  color: HexColor('32CD32'),
                ),
              )),
        ],
      ),
    );
  }
}
