import 'dart:io';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:image_picker_widget/enum/image_picker_widget_shape.dart';
import 'package:image_picker_widget/image_picker_widget.dart';
import 'package:servicehub/pages/becomeProviderProcess/IndividualProviderProcess/personalRefereeInfo.dart';

class UploadIndividualProfilePicture extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: HexColor('32CD32'),
        title: Text(
          'Become Provider',
          style: GoogleFonts.oxygen(fontSize: 16, color: Colors.white),
        ),
        elevation: 0,
        iconTheme: IconThemeData(color: Colors.white),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 15),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // header
            Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Photo',
                    style: GoogleFonts.oxygen(
                        fontSize: 22,
                        color: HexColor('44493D'),
                        fontWeight: FontWeight.bold),
                  ),
                ],
              ),
              RichText(
                  text: TextSpan(
                      text: "2",
                      style: GoogleFonts.oxygen(
                          fontSize: 14, color: HexColor('949498')),
                      children: [
                    TextSpan(
                        text: " / 3",
                        style: GoogleFonts.oxygen(
                            fontSize: 14,
                            color: HexColor('32CD32'),
                            fontWeight: FontWeight.w600))
                  ]))
            ]),
            // description
            Text('Select a photo for your provider’s profile.',
                style: GoogleFonts.oxygen(
                    fontSize: 14, color: HexColor('A7A7A7'))),

            SizedBox(
              height: 50,
            ),

            // Upload Picture here

            Center(
              child: ImagePickerWidget(
                diameter: 160,
                initialImage:
                    "https://strattonapps.com/wp-content/uploads/2020/02/flutter-logo-5086DD11C5-seeklogo.com_.png",
                shape: ImagePickerWidgetShape.circle,
                isEditable: true,
                onChange: (File file) {
                  print("I changed the file to: ${file.path}");
                },
              ),
            ),

            SizedBox(
              height: 20,
            ),
            // save and continue button
            GestureDetector(
              onTap: () {
                Navigator.pushAndRemoveUntil(
                  context,
                  MaterialPageRoute(
                    builder: (context) => PersonalRefereeInfo(),
                  ),
                  (route) => false,
                );
              },
              child: Container(
                height: 50,
                child:
                    Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                  Text(
                    'SAVE AND CONTINUE',
                    style: GoogleFonts.oxygen(
                      fontSize: 16,
                      fontWeight: FontWeight.w600,
                      color: Colors.white,
                    ),
                  ),
                ]),
                decoration: BoxDecoration(
                  color: HexColor('32CD32'),
                  borderRadius: BorderRadius.circular(50),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
