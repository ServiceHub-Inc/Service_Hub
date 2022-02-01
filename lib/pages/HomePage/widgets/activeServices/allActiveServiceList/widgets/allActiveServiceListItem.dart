import 'package:eva_icons_flutter/eva_icons_flutter.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:servicehub/models/pendingServiceModel.dart';
import 'package:servicehub/pages/HomePage/widgets/activeServices/ActiveServicesDetailPages/activeServiceDetialPage/activeServiceDetailPage.dart';
import 'package:servicehub/pages/ServicesListPage/widgets/searchbar.dart';

class AllActiveServiceListItem extends StatefulWidget {
  final List<PendingServiceDatum> pendingServices;
  const AllActiveServiceListItem({Key key, this.pendingServices}) : super(key: key);

  @override
  _AllActiveServiceListItemState createState() =>
      _AllActiveServiceListItemState();
}

class _AllActiveServiceListItemState extends State<AllActiveServiceListItem> {
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
        title: Text(
          'All Pending Services',
          style: GoogleFonts.oxygen(
            fontSize: 16,
            fontWeight: FontWeight.w600,
            color: Colors.white,
          ),
        ),
        elevation: 0,
        backgroundColor: HexColor('32CD32'),
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 8.0),
            child: SearchBar(),
          ),
          Expanded(
            child: ListView.builder(itemCount: widget.pendingServices.length, itemBuilder: (context, index) {
                      return ActiveServiceTile(
                        service: widget.pendingServices[index],
                      );
                    })
                 
            ),
          
        ],
      ),
    );
  }
}

class ActiveServiceTile extends StatelessWidget {
  final PendingServiceDatum service;
  const ActiveServiceTile({
    Key key,
    this.service,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 5),
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
          child: PhysicalModel(
            color: Colors.white,
            borderRadius: BorderRadius.circular(10),
            elevation: 2.0,
            child: Container(
              height: 130,
              width: double.infinity,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(10),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  // line
                  Container(
                    height: 4,
                    width: double.infinity,
                    margin: EdgeInsets.symmetric(horizontal: 2.0),
                    decoration: BoxDecoration(
                      color: HexColor('32CD32'),
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                  SizedBox(
                    height: 3,
                  ),

                  Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 15.0, vertical: 4.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 8.0),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              // service type
                              Padding(
                                padding:
                                    const EdgeInsets.symmetric(horizontal: 15),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.end,
                                  children: [
                                    Padding(
                                      padding:
                                          const EdgeInsets.only(bottom: 4.0),
                                      child: Text(
                                        service.serviceId.first.description,
                                        style: GoogleFonts.oxygen(
                                          fontSize: 15,
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
                                radius: 30,
                                backgroundColor: HexColor('32CD32'),
                                backgroundImage: AssetImage(
                                  'assets/avatar/avatar1.jpg',
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(4.0),
                                child: Text(
                                  service.nameOfPerson,
                                  style: GoogleFonts.oxygen(
                                      fontSize: 15,
                                      fontWeight: FontWeight.w600,
                                      color: HexColor('44493D')),
                                  maxLines: 2,
                                  overflow: TextOverflow.ellipsis,
                                ),
                              ),
                            ],
                          ),
                        ),
                        Expanded(
                            child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(
                              EvaIcons.calendarOutline,
                              color: HexColor('32CD32'),
                              size: 45.0,
                            ),
                            SizedBox(width: 15.0),
                            Expanded(
                              child: Column(
                                mainAxisSize: MainAxisSize.min,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'Start Date & Time',
                                    style: TextStyle(
                                      color: Colors.grey[400],
                                      fontSize: 15.0,
                                      fontWeight: FontWeight.w500,
                                    ),
                                  ),
                                  Text(
                                    '${service.startDate}, ${service.startTime}',
                                    style: TextStyle(
                                      color: Colors.grey[700],
                                      fontSize: 16.0,
                                      fontWeight: FontWeight.w700,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ))
                      ],
                    ),
                  ),

                  // // next row
                  // Padding(
                  //   padding: const EdgeInsets.symmetric(horizontal: 10),
                  //   child: Row(
                  //     children: [
                  //       //image
                  //       CircleAvatar(
                  //         radius: 24,
                  //         backgroundColor: HexColor('32CD32'),
                  //         backgroundImage: AssetImage(
                  //           'assets/avatar/avatar1.jpg',
                  //         ),
                  //       ),
                  //       SizedBox(
                  //         width: 10,
                  //       ),
                  //       // provider name
                  //       Column(
                  //         crossAxisAlignment: CrossAxisAlignment.start,
                  //         children: [
                  //           Text(
                  //             'Kwadjo Amarh',
                  //             style: GoogleFonts.oxygen(
                  //                 fontSize: 14,
                  //                 fontWeight: FontWeight.w600,
                  //                 color: HexColor('44493D')),
                  //             maxLines: 2,
                  //             overflow: TextOverflow.ellipsis,
                  //           ),
                  //           Row(
                  //             children: [
                  //               Text(
                  //                 'Start date : ',
                  //                 style: GoogleFonts.oxygen(
                  //                     fontSize: 12, color: Colors.grey),
                  //                 maxLines: 1,
                  //                 overflow: TextOverflow.ellipsis,
                  //               ),
                  //               Text(
                  //                 '20/09/21 9:43 PM',
                  //                 style: GoogleFonts.oxygen(
                  //                     fontSize: 12,
                  //                     fontWeight: FontWeight.w600,
                  //                     color: HexColor('44493D')),
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
            ),
          )),
    );
  }
}
