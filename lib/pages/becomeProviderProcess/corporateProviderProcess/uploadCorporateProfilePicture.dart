import 'dart:io';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:image_picker_widget/enum/image_picker_widget_shape.dart';

import 'package:image_picker_widget/image_picker_widget.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:servicehub/pages/becomeProviderProcess/addExperiencePage_corporate/addExperience_corporate.dart';

class UploadCorporateProfilePicture extends StatefulWidget {
  @override
  _UploadCorporateProfilePictureState createState() =>
      _UploadCorporateProfilePictureState();
}

class _UploadCorporateProfilePictureState
    extends State<UploadCorporateProfilePicture> {
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
          children: [
            // header
            Container(
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Upload Picture',
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
            ),
            // description
            Text(
                'Sed ut perspiciatis unde Logo or Bussiness Picture natus error sit voluptatem accusantium .',
                style: GoogleFonts.oxygen(
                    fontSize: 14, color: HexColor('A7A7A7'))),

            SizedBox(
              height: 50,
            ),

            ImagePickerWidget(
              diameter: 160,
              initialImage:
                  "https://strattonapps.com/wp-content/uploads/2020/02/flutter-logo-5086DD11C5-seeklogo.com_.png",
              shape: ImagePickerWidgetShape.circle,
              isEditable: true,
              onChange: (File file) {
                print("I changed the file to: ${file.path}");
              },
            ),

            SizedBox(
              height: 20,
            ),
            // save and continue button
            Container(
              width: double.infinity,
              height: 50,
              child: TextButton(
                child: Text('SAVE AND CONTINUE',
                    style: GoogleFonts.oxygen(
                        fontSize: 16,
                        fontWeight: FontWeight.w600,
                        color: Colors.white)),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => AddExperiencePageCorporate(),
                    ),
                  );
                },
              ),
              decoration: BoxDecoration(
                  color: HexColor('32CD32'),
                  borderRadius: BorderRadius.circular(50)),
            ),
          ],
        ),
      ),
    );
  }
}

// 

// 