import 'package:eva_icons_flutter/eva_icons_flutter.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hexcolor/hexcolor.dart';

class AttachedImageDocumentsPageIndividual extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: HexColor('E5E5E5'),
      body: Column(
        children: [
          // header info
          Container(
            color: Colors.white,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Uploaded Image Documents',
                    style: GoogleFonts.oxygen(
                        fontSize: 14,
                        color: HexColor('44493D'),
                        fontWeight: FontWeight.w600),
                  ),
                  Row(
                    children: [
                      Text('(10)',
                          style: GoogleFonts.oxygen(
                            fontSize: 14,
                            color: HexColor('32CD32'),
                          )),
                    ],
                  ),
                ],
              ),
            ),
          ),
          SizedBox(
            height: 3,
          ),
          // Grid view of yploaded images
          Expanded(
            child: Container(
              // future turned into into list view builder
              child: GridView.builder(
                itemCount: 5,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  mainAxisSpacing: 2.0,
                  crossAxisSpacing: 2.0,
                  crossAxisCount: 3,
                  childAspectRatio: 1.0,
                ),
                itemBuilder: (context, index) {
                  return Container(
                    decoration: BoxDecoration(
                        image: DecorationImage(
                            colorFilter: ColorFilter.mode(
                                Colors.black.withOpacity(0.5),
                                BlendMode.darken),
                            // thumbnail image
                            image:
                                AssetImage('assets/serviceImages/security.jpg'),
                            fit: BoxFit.cover)),
                    child: Stack(
                      children: [
                        // video duration displayed here
                        Positioned(
                          bottom: 0,
                          right: 0,
                          child: Padding(
                            padding: const EdgeInsets.symmetric(
                                horizontal: 5, vertical: 5),
                            child: Row(
                              children: [
                                // icon
                                Icon(EvaIcons.image,
                                    color: Colors.white, size: 14),
                                SizedBox(
                                  width: 5,
                                ),
                                // duration her
                                Text(
                                  '2.3MB',
                                  style: GoogleFonts.oxygen(
                                    fontSize: 12,
                                    color: Colors.white,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        )
                      ],
                    ),
                  );
                },
              ),
            ),
          )
        ],
      ),
    );
  }
}
