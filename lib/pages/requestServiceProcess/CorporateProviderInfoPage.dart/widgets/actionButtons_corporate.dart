import 'package:eva_icons_flutter/eva_icons_flutter.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:rflutter_alert/rflutter_alert.dart';
import 'package:servicehub/pages/MessagesPage/messagespage.dart';

import 'submitRequestBottomSheet_corporate.dart';

// ignore: must_be_immutable
class ActionButtonsCorporate extends StatelessWidget {
  var alertStyle = AlertStyle(
      isCloseButton: true,
      isOverlayTapDismiss: true,
      descStyle: GoogleFonts.oxygen(fontSize: 14, color: HexColor('44493D')),
      titleStyle: GoogleFonts.oxygen(
          fontSize: 16,
          color: HexColor('32CD32'),
          fontWeight: FontWeight.w600));

  @override
  Widget build(BuildContext context) {
    return // Action buttons chat submit rquest
        Container(
      color: Colors.grey[100],
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            // submit button
            Row(
              children: [
                GestureDetector(
                  onTap: () {
                    Alert(
                            style: alertStyle,
                            buttons: [
                              DialogButton(
                                color: Colors.blueAccent,
                                child: Text(
                                  "Back",
                                  style: TextStyle(
                                      color: Colors.white, fontSize: 20),
                                ),
                                onPressed: () {
                                  Navigator.pop(context);
                                },
                                width: 120,
                              ),
                              DialogButton(
                                color: HexColor('32CD32'),
                                child: Text(
                                  "Continue",
                                  style: TextStyle(
                                      color: Colors.white, fontSize: 20),
                                ),
                                onPressed: () {
                                  Navigator.pop(context);
                                  showBottomSheet(
                                    elevation: 5.0,
                                    context: context,
                                    builder: (context) {
                                      return Container(
                                        height: 200,
                                        color: Colors.white,
                                        child:
                                            SubmitRequestBottomSheetCorporate(),
                                      );
                                    },
                                  );
                                },
                                width: 120,
                              ),
                            ],
                            context: context,
                            title: "ENGAGED PROVIDER?",
                            desc:
                                "You must engage the provider to agree on the scope of the service and the fees involved before submitting this request.")
                        .show();
                  },
                  child: Chip(
                      backgroundColor: HexColor('32CD32'),
                      label: Text('SUBMIT REQUEST',
                          style: GoogleFonts.oxygen(
                              fontSize: 14,
                              fontWeight: FontWeight.bold,
                              color: Colors.white))),
                ),
              ],
            ),
            Row(
              children: [
                // call button
                CircleAvatar(
                  backgroundColor: HexColor('32CD32'),
                  radius: 18,
                  child: IconButton(
                      icon: (Icon(EvaIcons.phoneCall,
                          size: 18, color: Colors.white)),
                      onPressed: () {}),
                ),
                SizedBox(
                  width: 10,
                ),
                // message button
                CircleAvatar(
                  backgroundColor: HexColor('32CD32'),
                  radius: 18,
                  child: IconButton(
                      icon: (Icon(EvaIcons.messageCircle,
                          size: 18, color: Colors.white)),
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => MessagesPage(),
                          ),
                        );
                      }),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
