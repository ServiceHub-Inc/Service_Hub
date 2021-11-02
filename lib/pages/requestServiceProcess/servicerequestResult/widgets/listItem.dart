import 'package:eva_icons_flutter/eva_icons_flutter.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hexcolor/hexcolor.dart';

class ListItem extends StatelessWidget {
  final String providerName;
  final String serviceType;
  final String rate;
  final String noOfCpmpletedService;
  final String distance;
  final String imageUrl;
  final Function navigateToDetailPage;

  ListItem(
      {@required this.distance,
      @required this.noOfCpmpletedService,
      @required this.providerName,
      @required this.rate,
      @required this.serviceType,
      @required this.imageUrl,
      @required this.navigateToDetailPage});

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    return Padding(
      padding: const EdgeInsets.only(bottom: 3.5, left: 6.0, right: 6.0),
      child: InkWell(
        onTap: navigateToDetailPage,
        child: Container(
          color: Colors.white,
          width: double.infinity,
          child: Padding(
            padding: const EdgeInsets.only(left: 15, right: 15, bottom: 10),
            child: Column(
              children: [
                // distance text here (5 km)
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      child: Chip(
                        backgroundColor: Colors.grey[50],
                        label: Row(
                          children: [
                            Icon(
                                serviceType == 'Individual'
                                    ? EvaIcons.person
                                    : EvaIcons.people,
                                size: 12,
                                color: HexColor('32CD32')),
                            SizedBox(
                              width: 5,
                            ),
                            Text(
                              '$serviceType provider',
                              style: GoogleFonts.oxygen(
                                  color: HexColor('5F5F65'), fontSize: 12),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Container(
                      child: Row(
                        children: [
                          // distance
                          Icon(Icons.location_pin,
                              size: 12, color: HexColor('32CD32')),
                          SizedBox(),
                          Text(
                            '$distance Km Away',
                            style: GoogleFonts.oxygen(
                                fontSize: 12, color: HexColor('5F5F65')),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 10,
                ),
                //  circle image and rest
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    CircleAvatar(
                      radius: 30,
                      backgroundImage: AssetImage(
                        imageUrl,
                      ),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    // name and service description
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        // name here
                        Row(
                          children: [
                            Container(
                              width: width * 0.7,
                              child: Text(
                                providerName,
                                style: GoogleFonts.oxygen(
                                    fontSize: 16,
                                    color: HexColor('5F5F65'),
                                    fontWeight: FontWeight.w600),
                                maxLines: 2,
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 2,
                        ),
                        // rate stars here
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Text(
                              'Review',
                              style: GoogleFonts.oxygen(
                                fontSize: 12,
                                color: HexColor('99999C'),
                              ),
                            ),
                            SizedBox(
                              width: 5,
                            ),
                            // file icon
                            Icon(
                              EvaIcons.star,
                              size: 15,
                              color: Colors.amber,
                            ),
                            SizedBox(
                              width: 3,
                            ),
                            Text(
                              rate,
                              style: GoogleFonts.oxygen(
                                fontSize: 14,
                                color: Colors.amber,
                              ),
                            ),
                          ],
                        ),
                        // number of service completed here,
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'No. of completed services ',
                              overflow: TextOverflow.ellipsis,
                              style: GoogleFonts.oxygen(
                                  height: 1.5,
                                  fontSize: 12,
                                  color: HexColor('99999C')),
                              maxLines: 4,
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            // number here
                            Text(
                              noOfCpmpletedService,
                              style: GoogleFonts.oxygen(
                                  color: HexColor('32CD32'), fontSize: 14),
                            )
                          ],
                        ),
                      ],
                    )
                  ],
                ),
                SizedBox(
                  height: 3,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
