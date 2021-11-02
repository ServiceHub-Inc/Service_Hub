import 'package:auto_size_text/auto_size_text.dart';
import 'package:eva_icons_flutter/eva_icons_flutter.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:rflutter_alert/rflutter_alert.dart';

class Details extends StatelessWidget {
  const Details({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // alert stlying
    var alertStyle = AlertStyle(
      isCloseButton: false,
      isOverlayTapDismiss: false,
      descStyle: GoogleFonts.oxygen(fontSize: 14, color: HexColor('5F5F65')),
      descTextAlign: TextAlign.center,
      animationDuration: Duration(milliseconds: 400),
      alertBorder: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(15),
      ),
      titleStyle: TextStyle(
          fontSize: 20, color: HexColor('32CD32'), fontWeight: FontWeight.w600),
      alertAlignment: Alignment.centerRight,
    );

    // screen width
    final width = MediaQuery.of(context).size.width;

    return Container(
        width: double.infinity,
        color: Colors.white,
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 15),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // service Id
              Text('Service Information',
                  style: GoogleFonts.oxygen(
                    fontSize: 12,
                    color: HexColor("B8B3B3"),
                  )),

              // sevice type
              ListTile(
                leading: Icon(
                  Icons.home_repair_service_rounded,
                  color: HexColor('32CD32'),
                ),
                title: Text(
                  'Service Type',
                  style: GoogleFonts.oxygen(
                    fontSize: 12,
                    color: HexColor("B8B3B3"),
                  ),
                ),
                subtitle: Text(
                  'Driving',
                  style: GoogleFonts.oxygen(
                    fontSize: 14,
                    color: HexColor("44493D"),
                  ),
                ),
              ),
              // SService Type

              // Service Location
              ListTile(
                leading: Icon(
                  Icons.location_pin,
                  color: HexColor('32CD32'),
                ),
                title: Text(
                  'Location of Service',
                  style: GoogleFonts.oxygen(
                    fontSize: 12,
                    color: HexColor("B8B3B3"),
                  ),
                ),
                subtitle: Text(
                  'Dansoman, Police Station',
                  style: GoogleFonts.oxygen(
                    fontSize: 14,
                    color: HexColor("44493D"),
                  ),
                ),
                trailing: TextButton.icon(
                  onPressed: () {},
                  icon: Icon(
                    EvaIcons.navigation2,
                    color: HexColor("32CD32"),
                  ),
                  label: Text(
                    'Use map',
                    style: GoogleFonts.oxygen(
                      fontSize: 9,
                      color: HexColor("32CD32"),
                    ),
                  ),
                ),
              ),
              // sevice type
              ListTile(
                leading: Icon(
                  EvaIcons.clockOutline,
                  color: HexColor('32CD32'),
                ),
                title: Text(
                  'Estimation service duration',
                  style: GoogleFonts.oxygen(
                    fontSize: 12,
                    color: HexColor("B8B3B3"),
                  ),
                ),
                subtitle: Text(
                  'Two (2) days',
                  style: GoogleFonts.oxygen(
                    fontSize: 14,
                    color: HexColor("44493D"),
                  ),
                ),
              ),

              // start date and time
              ListTile(
                leading: Icon(
                  EvaIcons.calendarOutline,
                  color: HexColor('32CD32'),
                ),
                title: Text(
                  'Date & Time',
                  style: GoogleFonts.oxygen(
                    fontSize: 12,
                    color: HexColor("B8B3B3"),
                  ),
                ),
                subtitle: Text(
                  '02.10.2021, 10:00 AM',
                  style: GoogleFonts.oxygen(
                    fontSize: 14,
                    color: HexColor("44493D"),
                  ),
                ),
              ),

              // Fee Payable to the provider
              ListTile(
                leading: Icon(
                  Icons.money_rounded,
                  color: HexColor('32CD32'),
                ),
                title: Text(
                  'Agreed service fee',
                  style: GoogleFonts.oxygen(
                    fontSize: 12,
                    color: HexColor("B8B3B3"),
                  ),
                ),
                subtitle: Text(
                  'GHC 200',
                  style: GoogleFonts.oxygen(
                    fontSize: 14,
                    color: HexColor("44493D"),
                  ),
                ),
              ),

              // Brief Description
              ListTile(
                leading: Icon(
                  Icons.notes_outlined,
                  color: HexColor('32CD32'),
                ),
                title: Text(
                  'Brief Description',
                  style: GoogleFonts.oxygen(
                    fontSize: 12,
                    color: HexColor("B8B3B3"),
                  ),
                ),
                subtitle: Text(
                  'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum',
                  maxLines: 4,
                  overflow: TextOverflow.ellipsis,
                  style: GoogleFonts.oxygen(
                    fontSize: 13,
                    color: HexColor("44493D"),
                  ),
                ),
              ),

              SizedBox(
                height: 20,
              ),

              // End service Accept Service & Decline
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  // End Service
                  Container(
                    decoration: BoxDecoration(
                        color: HexColor('32CD32'),
                        borderRadius: BorderRadius.circular(50)),
                    width: width * 0.4,
                    height: 35,
                    child: TextButton(
                        onPressed: () {
                          // end service alert
                          Alert(
                            context: context,
                            style: alertStyle,
                            image: Image.asset("assets/quizLogo/check.png"),
                            title: "SERVICE ACCEPTED",
                            desc:
                                "You have successfully accepted request from (requester name). This service is now pending .",
                            buttons: [
                              DialogButton(
                                child: Text(
                                  "OK",
                                  style: TextStyle(
                                      color: Colors.white, fontSize: 20),
                                ),
                                onPressed: () {
                                  Get.offAllNamed('/MyBottomNavigationBar');
                                },
                                width: 120,
                              ),
                            ],
                          ).show();
                        },
                        child: AutoSizeText(
                          'Accept Service',
                          style: GoogleFonts.oxygen(
                            fontSize: 14,
                            color: Colors.white,
                          ),
                        )),
                  ),

                  // End Service
                  Container(
                    decoration: BoxDecoration(
                        color: HexColor('357EA7'),
                        borderRadius: BorderRadius.circular(50)),
                    width: width * 0.4,
                    height: 35,
                    child: TextButton(
                        onPressed: () {
                          Alert(
                            context: context,
                            style: alertStyle,
                            type: AlertType.warning,
                            title: "DECLINE SERVICE",
                            desc: "Are you sure you want Decline this service.",
                            buttons: [
                              DialogButton(
                                color: Colors.blue,
                                child: Text(
                                  "NO",
                                  style: TextStyle(
                                      color: Colors.white, fontSize: 20),
                                ),
                                onPressed: () {
                                  Get.back();
                                },
                                width: 120,
                              ),
                              DialogButton(
                                child: Text(
                                  "YES",
                                  style: TextStyle(
                                      color: Colors.white, fontSize: 20),
                                ),
                                onPressed: () {
                                  Get.back();
                                  Alert(
                                    context: context,
                                    style: AlertStyle(
                                      isCloseButton: false,
                                      isOverlayTapDismiss: false,
                                      descStyle: GoogleFonts.oxygen(
                                          fontSize: 14,
                                          color: HexColor('5F5F65')),
                                      descTextAlign: TextAlign.center,
                                      animationDuration:
                                          Duration(milliseconds: 400),
                                      alertBorder: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(15),
                                      ),
                                      titleStyle: TextStyle(
                                        fontSize: 18,
                                        color: Colors.black,
                                        fontWeight: FontWeight.w500,
                                      ),
                                      alertAlignment: Alignment.centerRight,
                                    ),
                                    type: AlertType.none,
                                    title: "Decline Successful !",
                                    desc:
                                        "Service has been declined successfully.",
                                    buttons: [
                                      DialogButton(
                                        // color: Colors.blue,
                                        child: Text(
                                          "OK",
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 20),
                                        ),
                                        onPressed: () {
                                          Get.offAllNamed('/notificationsPage');
                                        },
                                        width: 120,
                                      ),
                                    ],
                                  ).show();
                                },
                                width: 120,
                              )
                            ],
                          ).show();
                        },
                        child: Text(
                          'Decline Service',
                          style: GoogleFonts.oxygen(
                              fontSize: 14, color: Colors.white),
                        )),
                  )
                ],
              )
            ],
          ),
        ));
  }
}
