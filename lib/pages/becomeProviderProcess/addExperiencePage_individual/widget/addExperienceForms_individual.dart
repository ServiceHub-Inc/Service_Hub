import 'package:eva_icons_flutter/eva_icons_flutter.dart';
import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:servicehub/pages/becomeProviderProcess/uploadServiceImages.dart';

class AddExperienceForm extends StatefulWidget {
  @override
  _AddExperienceFormState createState() => _AddExperienceFormState();
}

class _AddExperienceFormState extends State<AddExperienceForm> {
  // form global key
  GlobalKey<FormBuilderState> _formKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;

    return FormBuilder(
      key: _formKey,
      child: Column(
        children: [
          // notice
          Container(
            width: double.infinity,
            color: Colors.white,
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
              child: Row(
                children: [
                  Icon(
                    EvaIcons.alertCircle,
                    color: Colors.orange,
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Container(
                    width: width * 0.8,
                    child: Text(
                      'You can upload documents or image of the documents or both',
                      style: GoogleFonts.oxygen(
                        color: HexColor(
                          '5F5F65',
                        ),
                        fontSize: 14,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          SizedBox(
            height: 10,
          ),
          // Second Section of the forms
          Container(
            width: double.infinity,
            color: Colors.white,
            child: Padding(
              padding:
                  EdgeInsets.only(left: 15, right: 15, top: 10, bottom: 10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // Upload document
                  Text(
                    'Upload Document',
                    style: GoogleFonts.oxygen(
                        color: HexColor(
                          '5F5F65',
                        ),
                        fontSize: 14,
                        fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  // upload button
                  Container(
                    height: 40,
                    child: TextButton.icon(
                        icon: Icon(
                          EvaIcons.file,
                          color: HexColor("32CD32"),
                          size: 14,
                        ),
                        onPressed: () {
                          //
                        },
                        label: Text(
                          'Upload',
                          style: GoogleFonts.oxygen(
                            color: HexColor('32CD32'),
                          ),
                        )),
                    decoration: BoxDecoration(
                        border: Border.all(color: HexColor('32CD32'), width: 2),
                        borderRadius: BorderRadius.circular(10)),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  // (Description text here)
                  RichText(
                    text: TextSpan(
                        text:
                            "Upload your Document eg, Driver’s Liscence, Certificates, CV, . File should be in  ",
                        style: GoogleFonts.oxygen(
                          color: HexColor(
                            '5F5F65',
                          ),
                          fontSize: 13,
                        ),
                        children: [
                          TextSpan(
                            text: "word, excel and pdf. ",
                            style: GoogleFonts.oxygen(
                              color: HexColor(
                                '32CD32',
                              ),
                              fontSize: 13,
                            ),
                          ),
                        ]),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  // Upload file lis text here
                  Text(
                    'Upload File List',
                    style: GoogleFonts.oxygen(
                        color: HexColor(
                          '44493D',
                        ),
                        fontSize: 13,
                        fontWeight: FontWeight.w600),
                  ),
                  SizedBox(
                    height: 10,
                  ),

                  //uploaded files here
                  Container(
                    height: 50,
                    width: double.maxFinite,
                    child: ListView.builder(
                        scrollDirection: Axis.horizontal,
                        itemCount: 4,
                        itemBuilder: (context, index) {
                          return Padding(
                              padding: const EdgeInsets.only(right: 10),
                              child: Container(
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(15),
                                  color: Colors.grey[100],
                                ),
                                child: Padding(
                                  padding:
                                      const EdgeInsets.symmetric(horizontal: 5),
                                  child: Row(
                                    children: [
                                      // uploaded file icon
                                      CircleAvatar(
                                        backgroundColor: HexColor('32CD32'),
                                        radius: 16,
                                        child: Icon(
                                          EvaIcons.file,
                                          size: 15,
                                          color: Colors.white,
                                        ),
                                      ),
                                      SizedBox(width: 10),
                                      // uploaded file name
                                      Container(
                                        //  width: width,
                                        child: Text(
                                          'MyCV/Cert.pdf',
                                          style: GoogleFonts.oxygen(
                                            color: HexColor(
                                              '44493D',
                                            ),
                                            fontSize: 13,
                                          ),
                                        ),
                                      ),
                                      // delete icon
                                      IconButton(
                                          icon: Icon(
                                            EvaIcons.closeCircle,
                                            size: 24,
                                            color: Colors.red,
                                          ),
                                          onPressed: () {
                                            // delete uploaded document
                                          })
                                    ],
                                  ),
                                ),
                              ));
                        }),
                  ),
                ],
              ),
            ),
          ),
          SizedBox(
            height: 10,
          ),

          // Third Section of the forms
          Container(
            width: double.infinity,
            color: Colors.white,
            child: Padding(
              padding:
                  EdgeInsets.only(left: 15, right: 15, top: 10, bottom: 10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // Upload document
                  Text(
                    'Upload Image Document',
                    style: GoogleFonts.oxygen(
                        color: HexColor(
                          '5F5F65',
                        ),
                        fontSize: 14,
                        fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  // upload button
                  Container(
                    height: 40,
                    child: TextButton.icon(
                        icon: Icon(
                          EvaIcons.file,
                          color: HexColor("32CD32"),
                          size: 14,
                        ),
                        onPressed: () {
                          //
                        },
                        label: Text(
                          'Upload',
                          style: GoogleFonts.oxygen(color: HexColor('32CD32')),
                        )),
                    decoration: BoxDecoration(
                        border: Border.all(color: HexColor('32CD32'), width: 2),
                        borderRadius: BorderRadius.circular(10)),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  // (Description text here)
                  RichText(
                    text: TextSpan(
                        text:
                            "Upload image of your document eg, Driver’s Liscence, Certificates, CV, . File should be in  ",
                        style: GoogleFonts.oxygen(
                          color: HexColor(
                            '5F5F65',
                          ),
                          fontSize: 13,
                        ),
                        children: [
                          TextSpan(
                            text: "png, jpeg, jpg. ",
                            style: GoogleFonts.oxygen(
                              color: HexColor(
                                '32CD32',
                              ),
                              fontSize: 13,
                            ),
                          ),
                        ]),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  // Upload file lis text here
                  Text(
                    'Upload File List',
                    style: GoogleFonts.oxygen(
                        color: HexColor(
                          '44493D',
                        ),
                        fontSize: 13,
                        fontWeight: FontWeight.w600),
                  ),
                  SizedBox(
                    height: 10,
                  ),

                  //uploaded files here
                  Container(
                    height: 70,
                    width: double.maxFinite,
                    child: ListView.builder(
                        scrollDirection: Axis.horizontal,
                        itemCount: 7,
                        itemBuilder: (context, index) {
                          return Stack(children: [
                            // image container
                            Padding(
                              padding: const EdgeInsets.only(right: 8),
                              child: Container(
                                width: 70,
                                height: 70,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10),
                                    image: DecorationImage(
                                        fit: BoxFit.cover,
                                        image: AssetImage(
                                            'assets/serviceImages/laundry.jpg'))),
                              ),
                            ),

                            Positioned(
                              top: 3,
                              right: 3,
                              child: CircleAvatar(
                                radius: 15,
                                backgroundColor: Colors.red,
                                child: IconButton(
                                    icon: Icon(
                                      EvaIcons.trash2,
                                      color: Colors.white,
                                      size: 15,
                                    ),
                                    onPressed: () {}),
                              ),
                            )
                          ]);
                        }),
                  ),
                ],
              ),
            ),
          ),

          SizedBox(
            height: 20,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15),
            child: Container(
              height: 50,
              width: double.infinity,
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
                      builder: (context) => UploadServiceImages(),
                    ),
                  );
                },
              ),
              decoration: BoxDecoration(
                  color: HexColor('32CD32'),
                  borderRadius: BorderRadius.circular(50)),
            ),
          ),
        ],
      ),
    );
  }
}
