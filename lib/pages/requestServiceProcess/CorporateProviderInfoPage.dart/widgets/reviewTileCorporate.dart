import 'package:eva_icons_flutter/eva_icons_flutter.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hexcolor/hexcolor.dart';

class ReviewTileCorporate extends StatelessWidget {
  const ReviewTileCorporate({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    return Padding(
      padding: const EdgeInsets.only(bottom: 2),
      child: Container(
        color: Colors.white,
        width: double.infinity,
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 15),
          child: Column(
            children: [
              // distance text here (5 km)
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Text(
                    '1 day ago',
                    style: GoogleFonts.oxygen(
                        fontSize: 12, color: Colors.grey[500]),
                  ),
                ],
              ),
              //  circle image and rest
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  CircleAvatar(
                    radius: 25,
                    backgroundImage: AssetImage(
                      'assets/serviceImages/person1.jpg',
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
                              'Zack Driving Services ',
                              style: GoogleFonts.oxygen(
                                  fontSize: 14,
                                  color: HexColor('5F5F65'),
                                  fontWeight: FontWeight.bold),
                              maxLines: 2,
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      // service description here
                      Row(
                        children: [
                          Container(
                            width: width * 0.7,
                            child: Text(
                              'This is Abigail. I have over two years of driving experience. I have not had any infractions with the law in the course I also have a long distance driving experience have driven from Accra to Kumasi ',
                              overflow: TextOverflow.ellipsis,
                              style: GoogleFonts.oxygen(
                                  height: 1.5,
                                  fontSize: 13,
                                  color: HexColor('5F5F65')),
                              maxLines: 4,
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 5,
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
                            '2.5',
                            style: GoogleFonts.oxygen(
                              fontSize: 14,
                              color: Colors.amber,
                            ),
                          ),
                        ],
                      ),
                    ],
                  )
                ],
              ),

              SizedBox(
                height: 1,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
