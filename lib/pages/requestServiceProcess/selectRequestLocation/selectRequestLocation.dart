import 'dart:ui';

import 'package:eva_icons_flutter/eva_icons_flutter.dart';
import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:servicehub/pages/requestServiceProcess/selectRequestLocation/locationMap.dart';
import 'package:servicehub/pages/requestServiceProcess/servicerequestResult/servicerequestResult.dart';

class SelectRequestLocation extends StatelessWidget {
  const SelectRequestLocation({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: HexColor('32CD32'),
        iconTheme: IconThemeData(color: Colors.white),
        elevation: 0,
        title: Text(
          'Request Service',
          style: GoogleFonts.oxygen(fontSize: 18, color: Colors.white),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 15),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            // image logo here
            Center(
              child: CircleAvatar(
                radius: 70,
                backgroundColor: Colors.grey[200],
                child: Container(
                  height: 70,
                  width: 70,
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          image:
                              AssetImage('assets/serviceImages/location.png'))),
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            // title
            Text(
              'Service Request Location',
              style:
                  GoogleFonts.oxygen(color: HexColor('32CD32'), fontSize: 18),
            ),
            SizedBox(
              height: 5,
            ),
            // dexcription
            Text(
              ' Service provision requires a location. You can either use your current location or choose a preferred location from the map',
              textAlign: TextAlign.center,
              style:
                  GoogleFonts.oxygen(color: HexColor('B8B3B3'), fontSize: 13),
            ),

            SizedBox(
              height: 25,
            ),
            // Use map buttton

            Container(
                height: 40,
                // width: 120,
                padding: EdgeInsets.all(4.0),
                decoration: BoxDecoration(
                    color: HexColor('32CD32').withOpacity(0.3),
                    borderRadius: BorderRadius.circular(20)),
                child: TextButton.icon(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => LocationMapScreen(),
                        ),
                      );
                    },
                    icon: Icon(EvaIcons.mapOutline, color: HexColor('32CD32')),
                    label: Text(
                      'Use map',
                      style: GoogleFonts.oxygen(
                          color: HexColor('32CD32'), fontSize: 14),
                    ))),

            SizedBox(
              height: 20,
            ),
            //  Use current location button
            Container(
              height: 50,
              width: double.infinity,
              decoration: BoxDecoration(
                  color: HexColor('32CD32'),
                  borderRadius: BorderRadius.circular(20)),
              child: FormBuilder(
                child: TextButton.icon(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => ServiceRequestResultPage(),
                      ),
                    );
                  },
                  icon: Icon(
                    Icons.location_pin,
                    color: Colors.white,
                  ),
                  label: Text(
                    'USE MY CURRENT LOCATION',
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
