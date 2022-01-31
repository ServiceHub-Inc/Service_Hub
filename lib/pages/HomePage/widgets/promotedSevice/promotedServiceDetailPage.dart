import 'package:eva_icons_flutter/eva_icons_flutter.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:rflutter_alert/rflutter_alert.dart';
import 'package:servicehub/models/promotedServiceModel.dart';
import 'package:servicehub/pages/MessagesPage/chatDetailPage.dart';
import 'package:servicehub/pages/requestServiceProcess/IndividualProviderInfoPage.dart/IndividualProviderInfoPage.dart';
import 'package:servicehub/utils/callsEmailService.dart';
import 'package:servicehub/utils/util.dart';

import 'widget/submitRequestBottomSheet.dart';

// ignore: must_be_immutable
class PromotedServiceDetailPage extends StatelessWidget {
  final PromotedServiceDatum service;
  
  // alert style
  var alertStyle = AlertStyle(
      isCloseButton: true,
      isOverlayTapDismiss: true,
      descStyle: GoogleFonts.oxygen(fontSize: 14, color: HexColor('44493D')),
      titleStyle: GoogleFonts.oxygen(
          fontSize: 16,
          color: HexColor('32CD32'),
          fontWeight: FontWeight.w600));
  // build list function
  // var data = Get.arguments;

  PromotedServiceDetailPage(
      {Key key,
      this.service})
      : super(key: key);

  final UrlLauncherService _service = UrlLauncherService();

  @override
  Widget build(BuildContext context) {
    // double _width = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Colors.white,
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            floating: false,
            backgroundColor: HexColor('32CD32'),
            expandedHeight: 200,
            flexibleSpace: FlexibleSpaceBar(
              centerTitle: true,
              background: Image.asset(
                Utilities.getServiceImage(service.banner),
                fit: BoxFit.cover,
                colorBlendMode: BlendMode.darken,
                color: Colors.black.withOpacity(0.7),
              ),
            ),
            elevation: 0,
            title: Text(
              service.title,
              style: GoogleFonts.oxygen(
                fontSize: 18.5,
                fontWeight: FontWeight.w600,
                color: Colors.white,
              ), // 5F5F65
            ),
            actions: [],
          ),
          SliverToBoxAdapter(
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 15, vertical: 10),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Column(
                    children: [
                      Text(
                        "${service.providerFirstname} ${service.providerLastname}",
                        style: GoogleFonts.oxygen(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                          color: HexColor('44493D'),
                        ),
                        maxLines: 2,
                      ),
                      SizedBox(
                        height: 4,
                      ),
                      CircleAvatar(
                        backgroundImage: AssetImage(
                          // service.providerLastname ??
                                  "assets/avatar/avatar.jpg",),
                        radius: 24,
                      ),
                      SizedBox(
                        height: 4,
                      ),
                      Row(
                        children: [
                          Icon(
                            EvaIcons.star,
                            size: 15,
                            color: Colors.amber,
                          ),
                          SizedBox(
                            width: 5,
                          ),
                          Text(
                            service.providerId.toString(),
                            style: GoogleFonts.oxygen(
                              fontSize: 14,
                              color: Colors.amber,
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  Expanded(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        // message button
                        Chip(
                            backgroundColor:
                                HexColor('32CD32').withOpacity(0.3),
                            label: GestureDetector(
                              onTap: () {
                                _service.call('0548739273');
                              },
                              child: Container(
                                height: 20,
                                child: Row(
                                  children: [
                                    Icon(
                                      EvaIcons.phoneCall,
                                      color: HexColor("32CD32"),
                                      size: 18,
                                    ),
                                    SizedBox(
                                      width: 10,
                                    ),
                                    Text(
                                      'Call',
                                      style: GoogleFonts.oxygen(
                                          fontSize: 12,
                                          color: HexColor("32CD32"),
                                          fontWeight: FontWeight.w600),
                                    )
                                  ],
                                ),
                              ),
                            )),
                        SizedBox(
                          width: 15,
                        ),
                        // message button
                        Chip(
                          backgroundColor: HexColor('32CD32').withOpacity(0.3),
                          label: GestureDetector(
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => ChatDetailPage(
                                    username: service.providerFirstname,
                                  ),
                                ),
                              );
                            },
                            child: Container(
                              height: 20,
                              child: Row(
                                children: [
                                  Icon(
                                    EvaIcons.messageCircle,
                                    color: HexColor("32CD32"),
                                    size: 18,
                                  ),
                                  SizedBox(
                                    width: 10,
                                  ),
                                  Text(
                                    'Message',
                                    style: GoogleFonts.oxygen(
                                        fontSize: 12,
                                        color: HexColor("32CD32"),
                                        fontWeight: FontWeight.w600),
                                  )
                                ],
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),

          // provider id
          SliverToBoxAdapter(
            child: Padding(
              padding: EdgeInsets.symmetric(vertical: 8, horizontal: 15),
              child: ListTile(
                leading: Icon(
                  Icons.contact_mail_outlined,
                  color: HexColor('32CD32'),
                ),
                title: Text(
                  'Service Provider ID #',
                  style: GoogleFonts.oxygen(
                    fontSize: 13,
                    color: HexColor('B8B3B3'),
                  ),
                ),
                subtitle: Text(
                  service.providerId,
                  style: GoogleFonts.oxygen(
                    fontSize: 14,
                    color: HexColor('44493D'),
                  ),
                ),
              ),
            ),
          ),
          // start date
          SliverToBoxAdapter(
            child: Padding(
              padding: EdgeInsets.symmetric(vertical: 5, horizontal: 15),
              child: ListTile(
                leading: Icon(
                  EvaIcons.calendarOutline,
                  color: HexColor('32CD32'),
                ),
                title: Text(
                  'Promotion Start Date',
                  style: GoogleFonts.oxygen(
                    fontSize: 13,
                    color: HexColor('B8B3B3'),
                  ),
                ),
                subtitle: Text(
                  service.promotionStartDate ?? "Today",
                  style: GoogleFonts.oxygen(
                    fontSize: 14,
                    color: HexColor('44493D'),
                  ),
                ),
              ),
            ),
          ),
          // endate
          SliverToBoxAdapter(
            child: Padding(
              padding: EdgeInsets.symmetric(vertical: 5, horizontal: 15),
              child: ListTile(
                leading: Icon(
                  EvaIcons.calendarOutline,
                  color: HexColor('32CD32'),
                ),
                title: Text(
                  'Promotion End Date',
                  style: GoogleFonts.oxygen(
                    fontSize: 13,
                    color: HexColor('B8B3B3'),
                  ),
                ),
                subtitle: Text(
                  service.promotionEndDate ?? "Today",
                  style: GoogleFonts.oxygen(
                    fontSize: 14,
                    color: HexColor('44493D'),
                  ),
                ),
              ),
            ),
          ),

          // description message
          SliverToBoxAdapter(
            child: Padding(
              padding: EdgeInsets.symmetric(vertical: 5, horizontal: 15),
              child: Padding(
                padding: EdgeInsets.symmetric(vertical: 5, horizontal: 15),
                child: Column(
                  children: [
                    Row(
                      // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Icon(
                          Icons.notes_outlined,
                          color: HexColor('32CD32'),
                        ),
                        SizedBox(width: 30.0),
                        Text(
                          'Promotion Detail',
                          style: GoogleFonts.oxygen(
                            fontSize: 13,
                            color: HexColor("B8B3B3"),
                          ),
                          maxLines: 2,
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 4,
                    ),
                    Row(
                      children: [
                        Opacity(
                          opacity: 0,
                          child: Icon(
                            EvaIcons.fileTextOutline,
                            color: Colors.grey[500],
                          ),
                        ),
                        SizedBox(width: 30.0),
                        Flexible(
                          child: Text(
                            service.description,
                            style: GoogleFonts.oxygen(
                              fontSize: 14,
                              color: HexColor('44493D'),
                            ),
                            textAlign: TextAlign.justify,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),

          // Submit button
          SliverToBoxAdapter(
            child: Container(
              margin: EdgeInsets.only(top: 15),
              padding: EdgeInsets.symmetric(vertical: 10, horizontal: 15),
              child: Column(
                children: [
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      GestureDetector(
                        onTap: () {
                          // bottom sheet here
                          // Get.toNamed('/individualProviderInfoPage');
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) =>
                                  IndividualProviderInfoPage(),
                            ),
                          );
                        },
                        child: Column(
                          children: [
                            PhysicalModel(
                              shape: BoxShape.circle,
                              elevation: 2.0,
                              color: HexColor('32CD32'),
                              child: Container(
                                decoration: BoxDecoration(
                                    color: HexColor('32CD32'),
                                    shape: BoxShape.circle,
                                    border: Border.all(
                                      color: HexColor('32CD32'),
                                      width: 1.5,
                                    )),
                                child: CircleAvatar(
                                  radius: 28,
                                  backgroundColor: Colors.white,
                                  child: Icon(
                                    EvaIcons.personOutline,
                                    color: HexColor('32CD32'),
                                    size: 34,
                                  ),
                                ),
                              ),
                            ),
                            SizedBox(height: 5.0),
                            Text(
                              'View \nProfile',
                              textAlign: TextAlign.center,
                              style: GoogleFonts.oxygen(
                                fontSize: 14,
                                color: Colors.grey[700],
                                fontWeight: FontWeight.bold,
                              ),
                            )
                          ],
                        ),
                      ),

                      GestureDetector(
                        onTap: () {
                          Alert(
                                  style: alertStyle,
                                  buttons: [
                                    DialogButton(
                                      color: Colors.blueAccent,
                                      child: Text(
                                        "Back",
                                        style: TextStyle(
                                            color: Colors.white, fontSize: 20),
                                      ),
                                      onPressed: () {
                                        Navigator.pop(context);
                                      },
                                      width: 120,
                                    ),
                                    DialogButton(
                                      color: HexColor('32CD32'),
                                      child: Text(
                                        "Continue",
                                        style: TextStyle(
                                            color: Colors.white, fontSize: 20),
                                      ),
                                      onPressed: () {
                                        Navigator.pop(context);
                                        showModalBottomSheet(
                                          elevation: 5.0,
                                          barrierColor:
                                              Colors.black.withOpacity(0.4),
                                          isDismissible: true,
                                          context: context,
                                          builder: (context) {
                                            return Container(
                                              height: 200,
                                              color: Colors.white,
                                              child: SubmitRequestBottomSheet(),
                                            );
                                          },
                                        );
                                      },
                                      width: 120,
                                    ),
                                  ],
                                  title: 'Engaged Provider ?'.toUpperCase(),
                                  context: context,
                                  desc:
                                      "You must engage the provider to agree on the scope of the service and the fees involved before submitting this request.")
                              .show();
                        },
                        child: Column(
                          children: [
                            PhysicalModel(
                              shape: BoxShape.circle,
                              elevation: 2.0,
                              color: HexColor('32CD32'),
                              child: Container(
                                decoration: BoxDecoration(
                                    color: HexColor('32CD32'),
                                    shape: BoxShape.circle,
                                    border: Border.all(
                                      color: HexColor('32CD32'),
                                      width: 1.5,
                                    )),
                                child: CircleAvatar(
                                  radius: 28,
                                  backgroundColor: Colors.white,
                                  child: Icon(
                                    EvaIcons.checkmarkOutline,
                                    color: HexColor('32CD32'),
                                    size: 34,
                                  ),
                                ),
                              ),
                            ),
                            SizedBox(height: 5.0),
                            Text(
                              'Submit \nRequest',
                              textAlign: TextAlign.center,
                              style: GoogleFonts.oxygen(
                                  fontSize: 14,
                                  color: Colors.grey[700],
                                  fontWeight: FontWeight.bold),
                            )
                          ],
                        ),
                      ),
                      // SizedBox(
                      //   width: 10,
                      // ),
                      Column(
                        children: [
                          PhysicalModel(
                            shape: BoxShape.circle,
                            elevation: 2.0,
                            color: HexColor('32CD32'),
                            child: Container(
                              decoration: BoxDecoration(
                                  color: HexColor('32CD32'),
                                  shape: BoxShape.circle,
                                  border: Border.all(
                                    color: HexColor('32CD32'),
                                    width: 1.5,
                                  )),
                              child: CircleAvatar(
                                radius: 28,
                                backgroundColor: Colors.white,
                                child: Icon(
                                  EvaIcons.shareOutline,
                                  color: HexColor('32CD32'),
                                  size: 34,
                                ),
                              ),
                            ),
                          ),
                          SizedBox(height: 5.0),
                          Text(
                            'Share\n',
                            textAlign: TextAlign.center,
                            style: GoogleFonts.oxygen(
                                fontSize: 14,
                                color: Colors.grey[700],
                                fontWeight: FontWeight.bold),
                          )
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

// bottom sheet here
// Get.bottomSheet(Container(
//       height: 200,
//       color: Colors.white,
//       child: SubmitRequestBottomSheet(),
//   )
// );
