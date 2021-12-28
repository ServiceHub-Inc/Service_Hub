import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:servicehub/pages/HomePage/widgets/BottomNavigationBar.dart';

// ignore: must_be_immutable
class ProvidedServiceSuccesspage extends StatelessWidget {
  // var alertStyle = AlertStyle(
  //   isCloseButton: false,
  //   isOverlayTapDismiss: false,
  //   descStyle: GoogleFonts.oxygen(fontSize: 14, color: HexColor('44493D')),
  //   titleStyle: GoogleFonts.oxygen(
  //       fontSize: 16,
  //       color: HexColor('32CD32'),
  //       fontWeight: FontWeight.w600)
  //     );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Padding(
      padding: const EdgeInsets.only(top: 80, left: 15, right: 15, bottom: 15),
      child: Column(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              // CHECK ICON HERE
              Center(
                child: Container(
                  height: 95,
                  width: 95,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage(
                        'assets/quizLogo/check.png',
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              // Title here
              Text(
                'Registration Successful',
                style: GoogleFonts.oxygen(
                    color: HexColor('32CD32'),
                    fontSize: 18,
                    fontWeight: FontWeight.w600),
                textAlign: TextAlign.center,
              ),
              SizedBox(
                height: 10,
              ),
              //
              // description
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 20),
                child: Text(
                  'Thank you for registering your details as a new service provider. A review of your details and verification of your identity document would be completed within 1 day',
                  style: GoogleFonts.oxygen(
                      color: HexColor('5F5F65'), fontSize: 14),
                  textAlign: TextAlign.center,
                ),
              ),

              SizedBox(
                height: 20,
              ),
              // Container with services deatils
              Container(
                width: double.infinity,
                decoration: BoxDecoration(
                    color: Colors.grey[200],
                    borderRadius: BorderRadius.circular(20)),
                child: Padding(
                  padding:
                      const EdgeInsets.symmetric(vertical: 15, horizontal: 10),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          // ID here
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text('Service Provider ID #',
                                  style: GoogleFonts.oxygen(
                                      fontSize: 13,
                                      color: HexColor('32CD32'),
                                      fontWeight: FontWeight.bold)),
                              Text('233442233212',
                                  style: GoogleFonts.oxygen(
                                    fontSize: 12,
                                    color: HexColor('5F5F65'),
                                  ))
                            ],
                          ),
                          // Time here
                          Text('6:34 PM',
                              style: GoogleFonts.oxygen(
                                fontSize: 12,
                                color: HexColor('5F5F65'),
                              ))
                        ],
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      // divider here
                      Divider(
                        height: 0.5,
                        color: Colors.grey[300],
                      ),
                      // Category Here
                      SizedBox(
                        height: 15,
                      ),
                      Text('Sevice Category',
                          style: GoogleFonts.oxygen(
                              fontSize: 13,
                              color: HexColor('32CD32'),
                              fontWeight: FontWeight.bold)),
                      Text('Driving',
                          style: GoogleFonts.oxygen(
                            fontSize: 12,
                            color: HexColor('5F5F65'),
                          )),

                      // Provider name
                      SizedBox(
                        height: 15,
                      ),
                      Text('Service ProviASCZder Name',
                          style: GoogleFonts.oxygen(
                              fontSize: 13,
                              color: HexColor('32CD32'),
                              fontWeight: FontWeight.bold)),
                      Text('Kingsley Abab',
                          style: GoogleFonts.oxygen(
                            fontSize: 12,
                            color: HexColor('5F5F65'),
                          )),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 40,
              ),
              // Finish Button
              Container(
                width: double.infinity,
                height: 50,
                child: TextButton(
                    onPressed: () {
                      Navigator.pushAndRemoveUntil(
                          context,
                          MaterialPageRoute(
                            builder: (context) => MyBottomNaigationBar(),
                          ),
                          (route) => false);
                      //   Alert(
                      //     style: alertStyle,
                      //     buttons: [
                      //       DialogButton(
                      //         color: HexColor('32CD32'),
                      //         child: Text(
                      //           "Continue",
                      //           style: TextStyle(color: Colors.white, fontSize: 20),
                      //         ),
                      //         onPressed: () {
                      //           Get.offAllNamed('/MyBottomNavigationBar');
                      //         },
                      //         width: 120,
                      //       ),
                      //     ],
                      //     context: context,
                      //     title: "SUBMITTED SUCCSESSFULLY",
                      //     desc:
                      //         "Thank you for the interest in offering service on ServiceHub. One of our agents would be in touch with you to onboard you.")
                      // .show();
                    },
                    child: Text('FINISH',
                        style: GoogleFonts.oxygen(
                            fontSize: 16,
                            fontWeight: FontWeight.w600,
                            color: Colors.white))),
                decoration: BoxDecoration(
                    color: HexColor('32CD32'),
                    borderRadius: BorderRadius.circular(50)),
              ),
            ],
          ),
        ],
      ),
    ));
  }
}
