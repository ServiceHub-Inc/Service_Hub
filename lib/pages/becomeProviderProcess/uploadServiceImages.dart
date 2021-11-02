import 'package:eva_icons_flutter/eva_icons_flutter.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:servicehub/pages/becomeProviderProcess/videoPages.dart';

class UploadServiceImages extends StatelessWidget {
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
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.symmetric(vertical: 10, horizontal: 15),
              child: Column(
                children: [
                  Text(
                    'Add Photos',
                    style: GoogleFonts.oxygen(
                        fontSize: 18, color: HexColor('5F5F65')),
                  ),
                  Text(
                    'Add photos of your works to sell your self',
                    style: GoogleFonts.oxygen(fontSize: 14, color: Colors.grey),
                  )
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15),
              child: Container(
                width: double.infinity,
                child: Padding(
                  padding: const EdgeInsets.all(15),
                  child: Column(
                    children: [
                      // Add images Icon
                      CircleAvatar(
                        radius: 30,
                        backgroundColor: HexColor('32CD32'),
                        child: IconButton(
                            icon: Icon(
                              Icons.add_a_photo_outlined,
                              color: Colors.white,
                            ),
                            onPressed: () {}),
                      ),
                      // uploaded photos text here
                      Row(
                        children: [
                          Text(
                            'Uploaded Photos',
                            style: GoogleFonts.oxygen(
                                fontSize: 14,
                                color: HexColor('44493D'),
                                fontWeight: FontWeight.w600),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      // actual photos here
                      Container(
                        height: 70,
                        child: ListView.builder(
                            scrollDirection: Axis.horizontal,
                            itemCount: 10,
                            itemBuilder: (context, index) {
                              return Stack(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(right: 8),
                                    child: Container(
                                      width: 70,
                                      height: 70,
                                      decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(10),
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
                                ],
                              );
                            }),
                      ),
                      SizedBox(
                        height: 20,
                      ),
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
                                builder: (context) => VideoPage(),
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
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    color: Colors.grey[200]),
              ),
            )
          ],
        ),
      ),
    );
  }
}

//                              Padding(
//                                 padding: const EdgeInsets.all(5),
//                                 child: Column(
//                                   children: [
//                                     Container(
//                                       height: 70,
//                                       width: 70,
//                                       decoration: BoxDecoration(
//                                           borderRadius: BorderRadius.circular(10),
//                                           image: DecorationImage(
//                                               fit: BoxFit.cover,
//                                               image: AssetImage(
//                                                   'assets/serviceImages/laundry.jpg'))),
//                                     ),
//                                     // Close button for Images

//                                   ],
//                                 ),
//                               );
