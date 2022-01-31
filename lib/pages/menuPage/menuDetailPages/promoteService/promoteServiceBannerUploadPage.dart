import 'package:eva_icons_flutter/eva_icons_flutter.dart';
import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:servicehub/pages/menuPage/menuDetailPages/promoteService/promoteServiceInvoicePage.dart';

class UploadBannerPage extends StatefulWidget {
  @override
  _UploadBannerPageState createState() => _UploadBannerPageState();
}

class _UploadBannerPageState extends State<UploadBannerPage> {
  final _formKey = GlobalKey<FormBuilderState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: HexColor('32CD32'),
          iconTheme: IconThemeData(color: Colors.white),
          elevation: 0,
          title: Text(
            'Promote Service',
            style: GoogleFonts.oxygen(fontSize: 18, color: Colors.white),
          ),
        ),
        body: SingleChildScrollView(
          child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 15),
              child: FormBuilder(
                key: _formKey,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('Upload Banner Image',
                        style: GoogleFonts.oxygen(
                            fontSize: 20,
                            fontWeight: FontWeight.w600,
                            color: Colors.black54)),
                    Text(
                      'A banner image would be the cover image for promoting the service',
                      style: GoogleFonts.oxygen(
                          color: Colors.grey, fontSize: 14, height: 1.5),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    // upload buton
                    Center(
                      child: CircleAvatar(
                        backgroundColor: HexColor('32CD32'),
                        child: IconButton(
                          icon: Icon(
                            Icons.add_a_photo_outlined,
                            color: Colors.white,
                            size: 18,
                          ),
                          onPressed: () {
                            // upload function/ trigger
                          },
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    // Preview Imager
                    Container(
                      width: double.infinity,
                      height: 150,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(
                            EvaIcons.imageOutline,
                            color: Colors.grey,
                          ),
                          Text(
                            'Image Preview here',
                            style: GoogleFonts.oxygen(
                                color: Colors.grey, fontSize: 14, height: 1.5),
                          )
                        ],
                      ),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Colors.grey[100]),
                    ),
                    SizedBox(
                      height: 20,
                    ),

                    GestureDetector(
                      onTap: () {
                        // clear up`load image
                      },
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Icon(
                            EvaIcons.trash2Outline,
                            color: Colors.grey,
                            size: 15,
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Text(
                            'Clear Image',
                            style: GoogleFonts.oxygen(
                                color: Colors.grey, fontSize: 14, height: 1.5),
                          )
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    // next button
                    Container(
                      height: 50,
                      width: double.infinity,
                      child: TextButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => PromoteServiceInvoicePage(),
                            ),
                          );
                        },
                        child: Text('NEXT',
                            style: GoogleFonts.oxygen(
                                fontSize: 16,
                                fontWeight: FontWeight.w600,
                                color: Colors.white)),
                      ),
                      decoration: BoxDecoration(
                          color: HexColor('32CD32'),
                          borderRadius: BorderRadius.circular(50)),
                    ),
                  ],
                ),
              )),
        ));
  }
}
