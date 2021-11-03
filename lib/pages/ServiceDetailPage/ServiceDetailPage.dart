import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:servicehub/pages/ServiceDetailPage/widgets/ServiceDetailActionButtons.dart';

class ServiceDetailPage extends StatelessWidget {
  final String image;
  final String title;
  final String description;

  ServiceDetailPage({Key key, this.image, this.title, this.description})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    // var width = MediaQuery.of(context).size.width;

    return Scaffold(
        // body
        body: SafeArea(
      child: CustomScrollView(
        slivers: [
          SliverAppBar(
            backgroundColor: HexColor('32CD32'),
            elevation: 0,
            expandedHeight: 200,
            pinned: true,
            title: Row(
              children: [
                Text(
                  title,
                  style: GoogleFonts.oxygen(fontSize: 18, color: Colors.white),
                ),
                SizedBox(
                  width: 5,
                ),
                Text(
                  'Services',
                  style: GoogleFonts.oxygen(fontSize: 18, color: Colors.white),
                ),
              ],
            ),
            flexibleSpace: FlexibleSpaceBar(
              centerTitle: true,
              background: Image.asset(
                image,
                fit: BoxFit.cover,
                colorBlendMode: BlendMode.darken,
                color: Colors.black.withOpacity(0.7),
              ),
            ),
          ),
          SliverToBoxAdapter(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 15),
              child: Column(
                children: [
                  Row(
                    children: [
                      Text(
                        'Service Description',
                        textAlign: TextAlign.left,
                        style: GoogleFonts.oxygen(
                            fontSize: 16.5,
                            color: HexColor('32CD32'),
                            fontWeight: FontWeight.w600),
                        maxLines: 10,
                      ),
                    ],
                  ),
                  Divider(
                    color: Colors.grey[100],
                    height: 20,
                  ),
                  Text(
                    description,
                    textAlign: TextAlign.justify,
                    style: GoogleFonts.oxygen(
                      fontSize: 16.5,
                      fontWeight: FontWeight.w400,
                      letterSpacing: 0.4,
                      wordSpacing: 1.0,
                      color: HexColor('44493D').withOpacity(0.7),
                    ),
                    maxLines: 10,
                  ),
                  SizedBox(
                    height: 25,
                  ),
                  Row(
                    children: [
                      Text(
                        'I want to :',
                        textAlign: TextAlign.left,
                        style: GoogleFonts.oxygen(
                          fontSize: 16,
                          color: HexColor('32CD32'),
                          fontWeight: FontWeight.w600,
                        ),
                        maxLines: 1,
                      ),
                    ],
                  ),
                  Divider(
                    color: Colors.grey[100],
                    height: 10,
                  ),
                  // action buttons
                  Column(
                    children: [ServiceDetailActionButtons()],
                  )
                ],
              ),
            ),
          )
        ],
      ),
    ));
  }
}

// CustomScrollView(
//         child: Column(
//           crossAxisAlignment: CrossAxisAlignment.start,
//           children: [
//             // Header image
//             Container(
//               height: 300,
//               width: double.infinity,
//               decoration: BoxDecoration(
//                   image: DecorationImage(
//                       colorFilter: ColorFilter.mode(
//                           Colors.black.withOpacity(0.5), BlendMode.darken),
//                       image: AssetImage(data[0]),
//                       fit: BoxFit.cover)
//                     ),
//             ),
//             SizedBox(
//               height: 20,
//             ),
//             Padding(
//               padding: const EdgeInsets.symmetric(horizontal: 15),
//               child: Column(
//                 crossAxisAlignment: CrossAxisAlignment.start,
//                 children: [
//                   Text(
//                     'Description',
//                     style: GoogleFonts.oxygen(
//                         fontSize: 18,
//                         fontWeight: FontWeight.w600,
//                         color: HexColor('44493D')),
//                   ),
//                   SizedBox(
//                     height: 10,
//                   ),
//                   AutoSizeText(
//                     data[2],
//                     textAlign: TextAlign.left,
//                     style: GoogleFonts.oxygen(
//                         fontSize: 14,
//                         color: HexColor('44493D').withOpacity(0.7)),
//                     maxLines: 10,
//                   ),
//                   SizedBox(
//                     height: 20,
//                   ),
//                   Text(
//                     'Do you want to?',
//                     style: GoogleFonts.oxygen(
//                         fontSize: 14,
//                         fontWeight: FontWeight.w600,
//                         color: HexColor('44493D')),
//                   ),
//                   SizedBox(
//                     height: 10,
//                   ),
//                   //
//                 ],
//               ),
//             ),
// ServiceDetailActionButtons()
//           ],
//         ),
//       ),
