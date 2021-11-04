import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:servicehub/pages/HomePage/widgets/InviteOthersLink.dart';
import 'package:servicehub/pages/HomePage/widgets/activeServices/allActiveServiceList/widgets/allActiveServiceListItem.dart';
import 'package:servicehub/pages/HomePage/widgets/popularServices/PopularServiceList.dart';
import 'package:servicehub/pages/HomePage/widgets/popularServices/allPopularService/allPopularServiceList.dart';
import 'package:servicehub/pages/HomePage/widgets/promotedSevice/allPromotedServiceList.dart';
import 'package:servicehub/pages/menuPage/menuDetailPages/userProfileDetailPage.dart';
import '../HomePage/widgets/notificationIcon.dart';
import 'widgets/activeServices/activeServices.dart';
import 'widgets/promotedSevice/promotedServiceList.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  // bottomNavigation index
  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    var height = MediaQuery.of(context).size.height;
    return Scaffold(
      // AppBar
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.white),
        backgroundColor: HexColor('32CD32'),
        actions: [
          Row(
            children: [
              // Notification
              NotificationIcon(),
              SizedBox(
                width: 10,
              ),
              GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => UserProfileDetailPage(),
                    ),
                  );
                },
                child: CircleAvatar(
                  radius: 14,
                  backgroundImage: AssetImage('assets/avatar/avatar1.jpg'),
                ),
              ),
              SizedBox(
                width: 10,
              )
            ],
          )
        ],
        title: Text('ServiceHub',
            style: GoogleFonts.oxygen(fontSize: 18, color: Colors.white)),
        elevation: 0,
      ),

      // body
      body: SingleChildScrollView(
        child: Column(
          children: [
            // Popular write ups
            Padding(
              padding: EdgeInsets.symmetric(vertical: 5, horizontal: 5),
              child: Container(
                height: height * 0.05,
                width: width,
                child: Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 15,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        width: width * 0.4,
                        child: AutoSizeText(
                          'Popular Services',
                          style: GoogleFonts.oxygen(
                              fontSize: 14, fontWeight: FontWeight.w600),
                          maxLines: 1,
                        ),
                      ),
                      GestureDetector(
                        onTap: () {
                          print('to all popular services');
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => AllPopularServiceList(),
                            ),
                          );
                        },
                        child: AutoSizeText(
                          'See All',
                          style: GoogleFonts.oxygen(fontSize: 12),
                          maxLines: 1,
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ),

            // Popular Services here
            PopularServiceList(),

            // Popular write ups
            Padding(
              padding: EdgeInsets.symmetric(vertical: 5, horizontal: 5),
              child: Container(
                height: height * 0.05,
                width: width,
                child: Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 15,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        width: width * 0.4,
                        child: AutoSizeText(
                          'Pending Service (3)',
                          style: GoogleFonts.oxygen(
                            fontSize: 14,
                            fontWeight: FontWeight.w600,
                          ),
                          maxLines: 1,
                        ),
                      ),
                      GestureDetector(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => AllActiveServiceListItem(),
                            ),
                          );
                        },
                        child: AutoSizeText(
                          'See All',
                          style: GoogleFonts.oxygen(fontSize: 12),
                          maxLines: 1,
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ),

            // Active Service
            ActiveServices(),

            SizedBox(
              height: 10,
            ),

            Padding(
              padding: EdgeInsets.symmetric(vertical: 2, horizontal: 5),
              child: Container(
                height: height * 0.05,
                width: width,
                child: Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 15,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        width: width * 0.4,
                        child: AutoSizeText(
                          'Promoted Services',
                          style: GoogleFonts.oxygen(
                              fontSize: 14, fontWeight: FontWeight.w600),
                          maxLines: 1,
                        ),
                      ),
                      GestureDetector(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => AllPromotedServiceList(),
                            ),
                          );
                        },
                        child: AutoSizeText(
                          'See All',
                          style: GoogleFonts.oxygen(fontSize: 12),
                          maxLines: 1,
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ),

            // slider of promoted services
            PromotedServiceList(),
            SizedBox(height: 15.0),

            // Invite Others
            InviteOthers()
          ],
        ),
      ),
      // bottomNavigationBar:
    );
  }
}