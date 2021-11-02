import 'package:eva_icons_flutter/eva_icons_flutter.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:servicehub/pages/MessagesPage/widgets/chatList.dart';

class MessagesPage extends StatelessWidget {
  const MessagesPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: HexColor('E5E5E5'),
        appBar: AppBar(
          backgroundColor: HexColor('32CD32'),
          iconTheme: IconThemeData(color: Colors.white),
          elevation: 0,
          title: Text(
            'Messages',
            style: GoogleFonts.oxygen(fontSize: 18, color: Colors.white),
          ),
          actions: [
            // search icon
            IconButton(
                icon: Icon(
                  EvaIcons.searchOutline,
                  color: Colors.white,
                  size: 20,
                ),
                onPressed: () {}),
            // settings icon
            IconButton(
                icon: Icon(
                  EvaIcons.settings2,
                  color: Colors.white,
                  size: 20,
                ),
                onPressed: () {})
          ],
        ),
        body: Column(
          children: [
            // header
            Container(
              color: HexColor('32CD32'),
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 15, vertical: 8),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    // Chat(3)
                    Container(
                      child: Row(
                        children: [
                          Text(
                            'CHAT',
                            style: GoogleFonts.oxygen(
                                fontSize: 14,
                                color: Colors.white,
                                fontWeight: FontWeight.w600),
                          ),
                          SizedBox(
                            width: 5,
                          ),
                          CircleAvatar(
                            radius: 11,
                            backgroundColor: Colors.white,
                            child: Text(
                              '10',
                              style: GoogleFonts.oxygen(
                                  fontSize: 10,
                                  color: HexColor('32CD32'),
                                  fontWeight: FontWeight.w600),
                            ),
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),

            // Chat List
            Expanded(child: ChatList())
          ],
        ));
  }
}
