import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:servicehub/controllers/serviceControllers.dart';
import 'package:servicehub/models/pendingServiceModel.dart';
import 'package:servicehub/models/popularServiceModel.dart';
import 'package:servicehub/models/promotedServiceModel.dart';
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
  List<PendingServiceDatum> pendingServices;
  Future<List<PendingServiceDatum>> getPendingServices;
  List<PromotedServiceDatum> promotedServices;
  Future<List<PromotedServiceDatum>> getPromotedServices;
  List<PopularServiceDatum> poplularServices;
  Future<List<PopularServiceDatum>> getPoplularServices;

  @override
  initState() {
    super.initState();
    getPendingServices = ServiceController.pendingServices(context);
    getPromotedServices = ServiceController.promotedServices(context);
    getPoplularServices = ServiceController.popularServices(context);
    // _rebuild();
  }

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
            FutureBuilder<List<PopularServiceDatum>>(
              future: getPoplularServices,
              builder: (context, snapshot) {
                if (snapshot.connectionState == ConnectionState.none ||
                    snapshot.connectionState == ConnectionState.active ||
                    snapshot.connectionState == ConnectionState.waiting) {
                  return Center(
                    child: SpinKitCircle(
                      color: HexColor('32CD32'),
                      size: 28,
                    ),
                  );
                }
                if (snapshot.hasError) {
                  return Text('Errorm;l/.');
                }

                if (snapshot.connectionState == ConnectionState.done) {
                  print("done");
                  poplularServices = snapshot.data;

                  if (poplularServices == null) {
                    return Container();
                  } else {
                    return PopularServiceList(services: poplularServices);
                  }
                }
                return null;
              },
            ),

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
            FutureBuilder<List<PendingServiceDatum>>(
              future: getPendingServices,
              builder: (context, snapshot) {
                if (snapshot.connectionState == ConnectionState.none ||
                    snapshot.connectionState == ConnectionState.active ||
                    snapshot.connectionState == ConnectionState.waiting) {
                  return Center(
                    child: SpinKitCircle(
                      color: HexColor('32CD32'),
                      size: 28,
                    ),
                  );
                }
                if (snapshot.hasError) {
                  return Text('Errorm;l/.');
                }

                if (snapshot.connectionState == ConnectionState.done) {
                  print("done");
                  pendingServices = snapshot.data;

                  if (pendingServices == null) {
                    return Container();
                  } else {
                    return ActiveServices(services: snapshot.data);
                  }
                }
                return null;
              },
            ),

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
            FutureBuilder<List<PromotedServiceDatum>>(
              future: getPromotedServices,
              builder: (context, snapshot) {
                if (snapshot.connectionState == ConnectionState.none ||
                    snapshot.connectionState == ConnectionState.active ||
                    snapshot.connectionState == ConnectionState.waiting) {
                  return Center(
                    child: SpinKitCircle(
                      color: HexColor('32CD32'),
                      size: 28,
                    ),
                  );
                }
                if (snapshot.hasError) {
                  return Text('Error');
                }

                if (snapshot.connectionState == ConnectionState.done) {
                  print("done");
                  promotedServices = snapshot.data;

                  if (promotedServices == null) {
                    return Container();
                  } else {
                    return PromotedServiceList(promotedServices: promotedServices,);
                  }
                }
                return null;
              },
            ),
            // PromotedServiceList(),
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
