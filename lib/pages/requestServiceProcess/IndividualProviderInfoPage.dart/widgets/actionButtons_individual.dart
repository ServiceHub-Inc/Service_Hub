import 'package:eva_icons_flutter/eva_icons_flutter.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:rflutter_alert/rflutter_alert.dart';
import 'package:servicehub/pages/MessagesPage/chatDetailPage.dart';
import 'package:servicehub/pages/requestServiceProcess/CorporateProviderInfoPage.dart/widgets/submitRequestBottomSheet_corporate.dart';
import 'package:servicehub/utils/callsEmailService.dart';
import 'package:servicehub/utils/util.dart';

// ignore: must_be_immutable
class ActionButtonsIndividual extends StatelessWidget {
  final UrlLauncherService _service = UrlLauncherService();

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
                            style: Utilities.alertStyle(),
                            buttons: [
                              DialogButton(
                                color: Colors.blueAccent,
                                child: Text(
                                  "Back",
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 20,
                                  ),
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
                                  showModalBottomSheet(
                                    elevation: 5.0,
                                    barrierColor: Colors.black.withOpacity(0.4),
                                    isDismissible: true,
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
                    label: Text(
                      'SUBMIT REQUEST',
                      style: GoogleFonts.oxygen(
                        fontSize: 14,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                  ),
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
                      onPressed: () {
                        _service.call('0548739273');
                      }),
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
                            builder: (context) => ChatDetailPage(
                              username: "James Anthony",
                            ),
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
