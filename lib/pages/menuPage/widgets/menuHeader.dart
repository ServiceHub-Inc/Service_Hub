import 'package:eva_icons_flutter/eva_icons_flutter.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:provider/provider.dart';
import 'package:servicehub/models/loginModel.dart';
import 'package:servicehub/pages/menuPage/menuDetailPages/userProfileDetailPage.dart';
import 'package:servicehub/pages/settignsPage/settingsPage.dart';
import 'package:servicehub/provider/globals.dart';

class MenuHeader extends StatelessWidget {
  const MenuHeader({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    UserData user;
    final _globals = Provider.of<Globals>(context);
    user = _globals.getUser;

    return // profile pic, name and rest
        GestureDetector(
      // user profile details
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => UserProfileDetailPage(),
          ),
        );
      },
      child: Container(
        width: double.infinity,
        color: Colors.white,
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  // image container and edit icon
                  Stack(
                    children: [
                      // image container
                      Container(
                        height: 70,
                        width: 70,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(100),
                            image: DecorationImage(
                                image: AssetImage(
                                    'assets/serviceImages/security.jpg'),
                                fit: BoxFit.cover)),
                      ),
                      // edit icon
                      Positioned(
                        right: 0,
                        bottom: 0,
                        child: CircleAvatar(
                          radius: 13,
                          backgroundColor: HexColor('32CD32'),
                          child: Icon(
                            EvaIcons.editOutline,
                            color: Colors.white,
                            size: 12,
                          ),
                        ),
                      )
                    ],
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  // Name of user and ID
                  Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          width: width * 0.5,
                          child: Text(
                            "${user.firstName} ${user.lastName}",
                            style: GoogleFonts.oxygen(
                                color: HexColor('44493D'),
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                                height: 1),
                          ),
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        RichText(
                          text: TextSpan(
                              text: 'ID:',
                              style: GoogleFonts.oxygen(
                                color: HexColor('44493D'),
                                fontSize: 13,
                              ),
                              // overflow: TextOverflow.ellipsis,
                              children: [
                                TextSpan(
                                    text: ' ${user.userId}',
                                    style: GoogleFonts.oxygen(
                                      color: HexColor('32CD32'),
                                      fontSize: 15,
                                      fontWeight: FontWeight.w600,
                                    )),
                              ]),
                        ),
                      ]),
                  // settings buttons
                  IconButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => SettingsPage(),
                          ),
                        );
                      },
                      icon: Icon(
                        EvaIcons.settings2,
                        size: 24,
                        color: HexColor('32CD32'),
                      ))
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
