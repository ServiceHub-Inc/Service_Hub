import 'package:eva_icons_flutter/eva_icons_flutter.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:servicehub/pages/menuPage/menuDetailPages/becomeAgentPage/becomeAgent_PropseNewServicePage.dart';
import 'package:servicehub/pages/menuPage/menuDetailPages/proposeNewServicePage.dart';
import 'package:servicehub/pages/menuPage/menuDetailPages/requestReferealCodePage/requestReferalCodePage.dart';
import 'package:servicehub/pages/menuPage/menuDetailPages/userProfileDetailPage.dart';
import 'package:servicehub/pages/menuPage/widgets/menuHeader.dart';

import 'menuDetailPages/promoteService/promoteServiceListPage.dart';

class MenuPage extends StatelessWidget {
  const MenuPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              // header
              MenuHeader(),
              SizedBox(
                height: 3,
              ),

              // Rest of the menus here

              // Provide services link
              Container(
                  color: Colors.white,
                  width: double.infinity,
                  child: ListTile(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => UserProfileDetailPage(),
                        ),
                      );
                    },
                    leading: Icon(
                      EvaIcons.briefcase,
                      color: HexColor('32CD32'),
                    ),
                    title: Text(
                      'My Provided Services',
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

              // Request History
              Container(
                  color: Colors.white,
                  width: double.infinity,
                  child: ListTile(
                    leading: Icon(
                      Icons.history,
                      color: HexColor('32CD32'),
                    ),
                    title: Text(
                      'Request History',
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
              ), // Become Agent
              Container(
                  color: Colors.white,
                  width: double.infinity,
                  child: ListTile(
                    onTap: () {
                      // bottom sheet here
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) =>
                              BecomeAgentProposeNewServicePage(),
                        ),
                      );
                    },
                    leading: Icon(
                      EvaIcons.personDone,
                      color: HexColor('32CD32'),
                    ),
                    title: Text(
                      'Become Agent',
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

              // Propose new service
              Container(
                  color: Colors.white,
                  width: double.infinity,
                  child: ListTile(
                    onTap: () {
                      // bottom sheet here
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => ProposeNewServicePage(),
                        ),
                      );
                    },
                    leading: Icon(
                      EvaIcons.personDone,
                      color: HexColor('32CD32'),
                    ),
                    title: Text(
                      'Propose new service   ',
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
              // Referal code
              Container(
                  color: Colors.white,
                  width: double.infinity,
                  child: ListTile(
                    onTap: () {
                      // bottom sheet here
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => RequestReferalCodePage(),
                        ),
                      );
                    },
                    leading: Icon(
                      EvaIcons.personAdd,
                      color: HexColor('32CD32'),
                    ),
                    title: Text(
                      'Referral Code',
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
              // Referal code
              Container(
                  color: Colors.white,
                  width: double.infinity,
                  child: ListTile(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => PromoteServiceList(),
                        ),
                      );
                    },
                    leading: Icon(
                      EvaIcons.briefcaseOutline,
                      color: HexColor('32CD32'),
                    ),
                    title: Text(
                      'Promote Service',
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
            ],
          ),
        ),
      ),
    );
  }
}
