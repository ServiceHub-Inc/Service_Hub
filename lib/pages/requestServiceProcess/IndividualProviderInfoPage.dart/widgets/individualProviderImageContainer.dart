import 'package:auto_size_text/auto_size_text.dart';
import 'package:eva_icons_flutter/eva_icons_flutter.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hexcolor/hexcolor.dart';

class IndividualProviderImageContainer extends StatelessWidget {
  const IndividualProviderImageContainer({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return
        // background image
        Container(
            width: double.infinity,
            decoration: BoxDecoration(
                image: DecorationImage(
                    fit: BoxFit.cover,
                    colorFilter: ColorFilter.mode(
                        Colors.black.withOpacity(0.1), BlendMode.dstATop),
                    image: AssetImage(
                      'assets/serviceImages/laundry.jpg',
                    ))),
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 5),
              child: Column(children: [
                // circle with image
                CircleAvatar(
                  radius: 60,
                  backgroundImage: AssetImage(
                    'assets/serviceImages/person1.jpg',
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                // name
                Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 15,
                  ),
                  child: Container(
                    width: double.infinity,
                    child: AutoSizeText(
                      'James Anthony',
                      style: GoogleFonts.oxygen(
                          fontSize: 20,
                          color: HexColor('44493D'),
                          fontWeight: FontWeight.bold),
                      maxLines: 1,
                      textAlign: TextAlign.center,
                    ),
                  ),
                ),

                // verifed or not
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Verified Identity',
                      style: GoogleFonts.oxygen(
                        fontSize: 12,
                        color: HexColor('B8B3B3'),
                      ),
                      maxLines: 1,
                    ),
                    SizedBox(
                      width: 5,
                    ),
                    Icon(
                      EvaIcons.checkmarkCircle2Outline,
                      size: 20,
                      color: HexColor('32CD32'),
                    )
                  ],
                ),
                SizedBox(
                  height: 10,
                ),
              ]),
            )); // circle imag
  }
}

// import 'package:auto_size_text/auto_size_text.dart';
// import 'package:eva_icons_flutter/eva_icons_flutter.dart';
// import 'package:flutter/material.dart';
// import 'package:get/get.dart';
// import 'package:google_fonts/google_fonts.dart';
// import 'package:hexcolor/hexcolor.dart';
// import 'package:theservicehub/requestServiceProcess/providerInfoPage.dart/widgets/submitRequestBottomSheet.dart';

// class ProviderImageContainer extends StatelessWidget {
//   const ProviderImageContainer({Key key}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return Padding(
//       padding: const EdgeInsets.symmetric(vertical: 20),
//       child: Column(
//         children:[
//           // circle with image
//           CircleAvatar(
//           radius: 50,
//           backgroundImage: AssetImage(
//               'assets/serviceImages/plumber.jpg',
//             ),
//         ),
//         SizedBox(height: 10,),
//         // name
//          Padding(
//            padding: const EdgeInsets.symmetric(horizontal: 15,),
//            child: Container(
//              width: double.infinity,
//              child: AutoSizeText(
//                 'Ameri Gurui',
//                 style: GoogleFonts.oxygen(
//                     fontSize: 20,
//                     color: HexColor('44493D'),
//                     fontWeight: FontWeight.bold),
//                 maxLines: 1,
//                 textAlign: TextAlign.center,
//               ),
//            ),
//          ),

//           // verifed or not
//           Row(
//             mainAxisAlignment: MainAxisAlignment.center,
//             children: [
//               Text(
//                 'Verified Identity',
//                 style: GoogleFonts.oxygen(
//                   fontSize: 12,
//                   color: HexColor('B8B3B3'),
//                 ),
//                 maxLines: 1,
//                ),
//               SizedBox(
//                 width: 5,
//               ),
//             Icon(
//                 EvaIcons.checkmarkCircle2Outline,
//                 size: 20,
//                 color: HexColor('32CD32'),
//               )
//             ],
//           ),
//           SizedBox(height: 10,),

//           // Action buttons chat submit rquest
//           Padding(
//             padding: const EdgeInsets.symmetric(horizontal: 15),
//             child: Row(
//               mainAxisAlignment: MainAxisAlignment.spaceBetween,
//               children: [
//                 // submit button
//                  Row(
//                    children: [
//                      GestureDetector(
//                         onTap: (){
//                            // bottom sheet here
//                           Get.bottomSheet(Container(
//                             height: 300,
//                             color: Colors.white,
//                             child: SubmitRequestBottomSheet(),
//                         ));

//                         },
//                         child: Chip(
//                           backgroundColor: HexColor('32CD32'),
//                           label: Text('SUMBIT REQUEST',
//                           style: GoogleFonts.oxygen(
//                           fontSize: 14,
//                           fontWeight: FontWeight.bold,
//                           color: Colors.white
//                           )
//                         )
//                 ),
//               ),
//                    ],
//                  ),
//                 Row(
//                   children: [
//                     // call button
//                     CircleAvatar(
//                     backgroundColor: HexColor('32CD32'),
//                     radius: 18,
//                     child: IconButton(
//                         icon: (Icon(EvaIcons.phoneCall,
//                             size: 18, color: Colors.white)),
//                         onPressed: () {}),
//                   ),
//                   SizedBox(
//                     width: 10,
//                   ),
//                   // message button
//                   CircleAvatar(
//                     backgroundColor: HexColor('32CD32'),
//                     radius: 18,
//                     child: IconButton(
//                         icon: (Icon(EvaIcons.messageCircle,
//                             size: 18, color: Colors.white)),
//                         onPressed: () {}),
//                   ),
//                   ],
//                 )
//               ],
//             ),
//           )
//        ]
//       ),
//     );
//   }
// }
