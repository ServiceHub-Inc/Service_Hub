import 'package:eva_icons_flutter/eva_icons_flutter.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:servicehub/models/pendingServiceModel.dart';
import 'package:servicehub/pages/HomePage/widgets/activeServices/ActiveServicesDetailPages/activeServiceDetialPage/activeServiceDetailPage.dart';
import 'package:servicehub/utils/util.dart';

class ActiveListItem extends StatelessWidget {
  final bool isEmpty;
  final PendingServiceDatum service;
  const ActiveListItem({Key key, this.isEmpty, this.service}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    String serviceDate = Utilities.serviceDateFormat(service.startDate);
    return isEmpty
        ? Container(
            margin: EdgeInsets.only(bottom: 10.0),
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: Container(
              width: 231,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(6),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.5),
                    spreadRadius: 2,
                    blurRadius: 3,
                    offset: Offset(0, 3), // changes position of shadow
                  ),
                ],
              ),
              child: Center(
                child: Text(
                  'You have no pending services',
                  style: TextStyle(
                    color: Colors.grey[400],
                    fontSize: 15,
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ),
            ),
          )
        : Container(
            margin: EdgeInsets.only(bottom: 10.0, top: 3),
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: GestureDetector(
                onTap: () {
                  // detail page
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => ActiveServiceDetailPage(),
                    ),
                  );
                },
                child: Container(
                  width: 231,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(6),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.5),
                        spreadRadius: 2,
                        blurRadius: 3,
                        offset: Offset(0, 3), // changes position of shadow
                      ),
                    ],
                  ),
                  child: Column(
                    children: [
                      SizedBox(
                        height: 6,
                      ),

                      Padding(
                        padding: EdgeInsets.only(
                          left: 5.0,
                          top: 2.0,
                          bottom: 2.0,
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 6.0),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  // service type
                                  Padding(
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 15),
                                    child: Row(
                                      mainAxisAlignment: MainAxisAlignment.end,
                                      children: [
                                        Padding(
                                          padding: const EdgeInsets.only(
                                              bottom: 6.0),
                                          child: Text(
                                            service.serviceId.first.description,
                                            style: GoogleFonts.oxygen(
                                              fontSize: 12,
                                              fontWeight: FontWeight.w700,
                                              color: HexColor('32CD32'),
                                            ),
                                            maxLines: 1,
                                            overflow: TextOverflow.ellipsis,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  //image
                                  CircleAvatar(
                                    radius: 21,
                                    backgroundColor: HexColor('32CD32'),
                                    backgroundImage: AssetImage(
                                      'assets/avatar/avatar1.jpg',
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.all(3.0),
                                    child: Text(
                                      service.nameOfPerson,
                                      style: GoogleFonts.oxygen(
                                        fontSize: 12,
                                        fontWeight: FontWeight.w600,
                                        color: HexColor('44493D'),
                                      ),
                                      maxLines: 2,
                                      overflow: TextOverflow.ellipsis,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Expanded(
                                child: Column(
                              children: [
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Stack(
                                      children: [
                                        Icon(
                                          EvaIcons.calendarOutline,
                                          color: HexColor('32CD32'),
                                          size: 60.0,
                                        ),
                                        Positioned(
                                          left: 14.0,
                                          top: 14.0,
                                          child: Container(
                                            color: Colors.white,
                                            margin: EdgeInsets.only(top: 1.0),
                                            padding: EdgeInsets.only(
                                              left: 5,
                                              right: 5,
                                              bottom: 1,
                                              top: 5.0,
                                            ),
                                            child: Text(
                                              "${serviceDate.split(" ")[0]}\n${serviceDate.split(" ")[1]}"
                                                  .toUpperCase(),
                                              textAlign: TextAlign.center,
                                              style: TextStyle(
                                                fontSize: 11.0,
                                                fontWeight: FontWeight.w600,
                                              ),
                                            ),
                                          ),
                                        )
                                      ],
                                    ),
                                  ],
                                ),
                                SizedBox(height: 3.0),
                                Text(
                                  service.startTime,
                                  style: TextStyle(
                                    color: Colors.grey[700],
                                    fontSize: 11.0,
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                              ],
                            ))
                          ],
                        ),
                      ),

                      // time requested
                      // Padding(
                      //   padding: const EdgeInsets.symmetric(horizontal: 15),
                      //   child: Row(
                      //     mainAxisAlignment: MainAxisAlignment.end,
                      //     children: [
                      //       Text(
                      //         '2 days ago',
                      //         style: GoogleFonts.oxygen(
                      //             fontSize: 12,
                      //             fontWeight: FontWeight.w600,
                      //             color: HexColor('32CD32')),
                      //         maxLines: 1,
                      //         overflow: TextOverflow.ellipsis,
                      //       ),
                      //     ],
                      //   ),
                      // ),
                      // //next row
                      // Padding(
                      //   padding: const EdgeInsets.symmetric(horizontal: 8),
                      //   child: Row(
                      //     children: [
                      //       //image
                      //       CircleAvatar(
                      //         radius: 18,
                      //         backgroundColor: HexColor('32CD32'),
                      //         backgroundImage: AssetImage(
                      //           'assets/avatar/avatar1.jpg',
                      //         ),
                      //       ),
                      //       SizedBox(
                      //         width: 8,
                      //       ),
                      //       // provider name
                      //       Column(
                      //         crossAxisAlignment: CrossAxisAlignment.start,
                      //         children: [
                      //           Padding(
                      //             padding: const EdgeInsets.all(2.0),
                      //             child: Text(
                      //               'Kwadjo Amarh',
                      //               style: GoogleFonts.oxygen(
                      //                   fontSize: 14,
                      //                   fontWeight: FontWeight.w600,
                      //                   color: HexColor('44493D')),
                      //               maxLines: 2,
                      //               overflow: TextOverflow.ellipsis,
                      //             ),
                      //           ),
                      //           Text(
                      //             'Driver',
                      //             style: GoogleFonts.oxygen(
                      //                 fontSize: 12,
                      //                 fontWeight: FontWeight.w600,
                      //                 color: HexColor('32CD32')),
                      //             maxLines: 2,
                      //             overflow: TextOverflow.ellipsis,
                      //           ),
                      //           Row(
                      //             children: [
                      //               Text(
                      //                 'Start Date : ',
                      //                 style: GoogleFonts.oxygen(
                      //                     fontSize: 12, color: Colors.grey),
                      //                 maxLines: 1,
                      //                 overflow: TextOverflow.ellipsis,
                      //               ),
                      //               Text(
                      //                 '20.09.21, 9:43 AM',
                      //                 style: GoogleFonts.oxygen(
                      //                   fontSize: 12.5,
                      //                   fontWeight: FontWeight.w600,
                      //                   color: Colors.grey[600],
                      //                 ),
                      //                 maxLines: 1,
                      //                 overflow: TextOverflow.ellipsis,
                      //               ),
                      //             ],
                      //           ),
                      //         ],
                      //       ),
                      //     ],
                      //   ),
                      // ),
                    ],
                  ),
                )),
          );
  }
}
