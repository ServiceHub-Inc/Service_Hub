import 'package:eva_icons_flutter/eva_icons_flutter.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:servicehub/pages/ServiceDetailPage/widgets/customeProviderBottomSheet.dart';
import 'package:servicehub/pages/requestServiceProcess/selectRequestLocation/selectRequestLocation.dart';

class ServiceDetailActionButtons extends StatelessWidget {
  const ServiceDetailActionButtons({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        // Request Service Button
        Container(
          width: double.infinity,
          height: 50,
          padding: EdgeInsets.symmetric(horizontal: 10.0),
          decoration: BoxDecoration(
              color: HexColor('32CD32'),
              borderRadius: BorderRadius.circular(20)),
          child: TextButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => SelectRequestLocation(),
                ),
              );
            },
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Request Service',
                  style: GoogleFonts.oxygen(
                      fontSize: 15.5,
                      fontWeight: FontWeight.w600,
                      color: Colors.white),
                ),
                Icon(
                  EvaIcons.arrowForward,
                  color: Colors.white,
                )
              ],
            ),
          ),
        ),

        SizedBox(height: 10),

        Container(
          width: double.infinity,
          height: 50,
          padding: EdgeInsets.symmetric(horizontal: 10.0),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            border: Border.all(color: HexColor('32CD32'), width: 2),
          ),
          child: TextButton(
            onPressed: () {
              Get.bottomSheet(Container(
                height: 224,
                color: Colors.white,
                child: CustomeProviderBottomSheet(),
              ));
            },
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Provide Service',
                  style: GoogleFonts.oxygen(
                      fontSize: 15.5,
                      fontWeight: FontWeight.w600,
                      color: HexColor('32CD32')),
                ),
                Icon(
                  EvaIcons.arrowForward,
                  color: HexColor('32CD32'),
                )
              ],
            ),
          ),
        ),
      ],
    );
  }
}

// Column(
//       children: [
//         Container(
//           height: 40,
//           width: 160,
//           decoration: BoxDecoration(
//               border: Border.all(
//                   color: HexColor(
//                     '32CD32',
//                   ),
//                   width: 2),
//               borderRadius: BorderRadius.circular(8)),
//           child: FlatButton(
//             child: Text(
//               'Become a provider',
//               style: GoogleFonts.oxygen(
//                   color: HexColor(
//                     '32CD32',
//                   ),
//                   fontSize: 12),
//             ),
//             onPressed: () {

//             },
//           ),
//         ),
//         SizedBox(
//           height: 5,
//         ),
//         Container(
//           height: 40,
//           width: 160,
//           decoration: BoxDecoration(
//               border: Border.all(
//                   color: HexColor(
//                     '32CD32',
//                   ),
//                   width: 2),
//               borderRadius: BorderRadius.circular(8)),
//           child: FlatButton(
//             child: Text(
//               'Request Service',
//               style:
//                   GoogleFonts.oxygen(color: HexColor('32CD32'), fontSize: 12),
//             ),
//             onPressed: () {},
//           ),
//         ),
//       ],
//     );



        // GestureDetector(
        //   onTap: () {
        //     Get.bottomSheet(
        //       Container(
        //       height: 224,
        //       color: Colors.white,
        //       child: CustomeRequestBottomSheet(),
        //     ))
        //   ;
        //   },
        //   child: Container(
        //     width: double.infinity,
        //     height: 50,
        //     decoration: BoxDecoration(
        //       color: HexColor('32CD32'),
        //       borderRadius:BorderRadius.circular(20) 
        //     ),
        //     child: Padding(
        //       padding: const EdgeInsets.symmetric(horizontal: 15),
        //       child: Row(
        //         mainAxisAlignment: MainAxisAlignment.spaceBetween,
        //         children: [
        //           AutoSizeText('Request Service',
        //               style: GoogleFonts.oxygen(
        //                   fontSize: 14,
        //                   fontWeight: FontWeight.w600,
        //                   color: Colors.white),
        //               overflow: TextOverflow.ellipsis,
        //               maxLines: 1),
        //           Icon(
        //             EvaIcons.arrowForward,
        //             color: Colors.white,
        //           )
        //         ],
        //       ),
        //     ),
        //   ),
        // ),