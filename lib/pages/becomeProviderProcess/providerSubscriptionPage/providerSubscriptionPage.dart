import 'package:auto_size_text/auto_size_text.dart';
import 'package:eva_icons_flutter/eva_icons_flutter.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:servicehub/pages/becomeProviderProcess/IndividualProviderProcess/personalInfoFormsPage.dart';
import 'package:servicehub/pages/becomeProviderProcess/widgets/picodeForm.dart';

class ProviderSubscriptionPage extends StatefulWidget {
  @override
  _ProviderSubscriptionPageState createState() =>
      _ProviderSubscriptionPageState();
}

class _ProviderSubscriptionPageState extends State<ProviderSubscriptionPage> {
  
  // location
  bool _showLocationForms = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: HexColor('32CD32'),
        title: Text(
          'Provider Subscription',
          style: GoogleFonts.oxygen(fontSize: 16, color: Colors.white),
        ),
        elevation: 0,
        iconTheme: IconThemeData(color: Colors.white),
        automaticallyImplyLeading: false,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 25, horizontal: 15),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Column(
              //   crossAxisAlignment: CrossAxisAlignment.start,
              //   children: [
              //     AutoSizeText(
              //       'Service',
              //       style: GoogleFonts.oxygen(
              //           fontSize: 16, color: HexColor('B8B3B3')),
              //       maxLines: 1,
              //     ),
              //     AutoSizeText(
              //       'Provider Subscription',
              //       style: GoogleFonts.oxygen(
              //           fontSize: 20,
              //           color: HexColor('44493D'),
              //           fontWeight: FontWeight.bold),
              //       maxLines: 1,
              //     )
              //   ],
              // ),
              // Space

              SizedBox(
                height: 30,
              ),
              // pin Code Title
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  AutoSizeText(
                    'Enter Referral Code',
                    style: GoogleFonts.oxygen(
                      fontSize: 20,
                      fontWeight: FontWeight.w600,
                      // color: HexColor('C4C4C4'),
                    ),
                  )
                ],
              ),
              PinCodeForm(),
              // Space
              SizedBox(
                height: 30,
              ),

              // No referral Code
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  GestureDetector(
                    onTap: () {
                      setState(() {
                        _showLocationForms = !_showLocationForms;
                      });
                    },
                    child: AutoSizeText('No Referral Code ?',
                        style: GoogleFonts.oxygen(
                            fontSize: 14, color: HexColor('32CD32'))),
                  )
                ],
              ),
              // space
              SizedBox(
                height: 30,
              ),

              // location of domicille form

              Visibility(
                visible: _showLocationForms,
                child: Column(
                  children: [
                    // Location Forms
                    TextFormField(
                      keyboardType: TextInputType.text,
                      decoration: InputDecoration(
                        labelStyle: GoogleFonts.oxygen(color: Colors.grey),
                        enabledBorder: new UnderlineInputBorder(
                            borderSide:
                                new BorderSide(color: Colors.grey[300])),
                        hintText: 'Location of domicile',
                        hintStyle: GoogleFonts.oxygen(
                            fontSize: 14, color: Colors.grey[400]),
                        suffixIcon: TextButton.icon(
                            onPressed: () {},
                            icon: Icon(
                              EvaIcons.navigation2,
                              color: HexColor('32CD32'),
                            ),
                            label: Text(
                              'Use Map',
                              style: GoogleFonts.oxygen(
                                fontSize: 12,
                                color: HexColor('32CD32'),
                              ),
                            )),
                      ),
                    ),
                    // Space

                    SizedBox(
                      height: 20,
                    ),

                    // Submit Button
                    Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                      Container(
                        height: 40,
                        padding: EdgeInsets.symmetric(horizontal: 5.0),
                        decoration: BoxDecoration(
                            color: HexColor('32CD32'),
                            borderRadius: BorderRadius.circular(50)),
                        child: TextButton(
                          child: AutoSizeText(
                            "SUBMIT",
                            style: GoogleFonts.oxygen(
                                fontSize: 14,
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                letterSpacing: 2,
                                height: 1.5),
                            maxLines: 1,
                          ),
                          onPressed: () {
                            Navigator.pushAndRemoveUntil(
                              context,
                              MaterialPageRoute(
                                builder: (context) => IndividualInfoFormsPage(),
                              ),
                              (route) => false,
                            );
                          },
                        ),
                      ),
                    ])
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
