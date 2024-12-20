import 'package:eva_icons_flutter/eva_icons_flutter.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:rflutter_alert/rflutter_alert.dart';
import 'package:servicehub/models/pendingServiceModel.dart';
import 'package:servicehub/pages/HomePage/widgets/BottomNavigationBar.dart';
import 'package:servicehub/pages/MessagesPage/chatDetailPage.dart';
import 'package:servicehub/pages/ServiceDetailPage/serviceCancellationForm.dart';
import 'package:servicehub/pages/rateProvider/rateProviderPage.dart';
import 'package:servicehub/utils/callsEmailService.dart';
import 'package:servicehub/utils/util.dart';

class ActiveServiceDetailPage extends StatefulWidget {
  final PendingServiceDatum service;
  const ActiveServiceDetailPage({Key key, this.service}) : super(key: key);

  @override
  _ActiveServiceDetailPageState createState() =>
      _ActiveServiceDetailPageState();
}

class _ActiveServiceDetailPageState extends State<ActiveServiceDetailPage> {
  final UrlLauncherService _service = UrlLauncherService();
  @override
  Widget build(BuildContext context) {
       // form builder key
    // final _formKey = GlobalKey<FormBuilderState>();
    // screen width
    final width = MediaQuery.of(context).size.width;
    return Scaffold(
      // AppBar
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.white),
        backgroundColor: HexColor('32CD32'),
        title: Text(
          '${widget.service.serviceId.first.description} (Active)',
          style: GoogleFonts.oxygen(fontSize: 18, color: Colors.white),
        ),
        elevation: 0,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              width: double.infinity,
              color: Colors.white,
              child: Padding(
                padding: const EdgeInsets.all(15),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    SizedBox(
                      height: 10,
                    ),
                    // provider List tile
                    Center(
                      child: CircleAvatar(
                        backgroundImage: AssetImage(
                          Utilities.getServiceDisplayImage(
                              widget.service.serviceId.first.description),
                        ),
                        radius: 50,
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    // name here
                    Center(
                      child: Container(
                        width: width * 0.9,
                        margin: EdgeInsets.only(bottom: 4.0),
                        child: Text(
                          widget.service.nameOfPerson,
                          style: GoogleFonts.oxygen(
                              fontSize: 19,
                              color: HexColor("44493D"),
                              fontWeight: FontWeight.w700),
                          textAlign: TextAlign.center,
                          maxLines: 2,
                        ),
                      ),
                    ),

                    // id here
                    Center(
                      child: RichText(
                        text: TextSpan(
                          text: 'Requester ID: ',
                          style: GoogleFonts.oxygen(
                              fontSize: 14,
                              color: HexColor("B8B3B4"),
                              fontWeight: FontWeight.w600),
                          children: [
                            TextSpan(
                              text: widget.service.serviceId.first.id,
                              style: GoogleFonts.oxygen(
                                fontSize: 14,
                                color: HexColor("32CD32"),
                                fontWeight: FontWeight.w600,
                              ),
                            )
                          ],
                        ),
                      ),
                    ),

                    SizedBox(
                      height: 10,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        // call button
                        Chip(
                          backgroundColor: HexColor('32CD32').withOpacity(0.3),
                          label: InkWell(
                            onTap: () {
                              print('calling');
                              _service.call(widget.service.contactOfPerson);
                            },
                            child: Container(
                              height: 23,
                              child: Row(
                                children: [
                                  Icon(
                                    EvaIcons.phoneCall,
                                    color: HexColor("32CD32"),
                                    size: 20,
                                  ),
                                  SizedBox(
                                    width: 15,
                                  ),
                                  Text(
                                    'Call',
                                    style: GoogleFonts.oxygen(
                                      fontSize: 14,
                                      color: HexColor("32CD32"),
                                      fontWeight: FontWeight.w600,
                                    ),
                                  )
                                ],
                              ),
                            ),
                          ),
                        ),
                        SizedBox(
                          width: 20,
                        ),
                        // mesaage button
                        Chip(
                          backgroundColor: HexColor('32CD32').withOpacity(0.3),
                          label: GestureDetector(
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => ChatDetailPage(
                                    username: widget.service.nameOfPerson,
                                  ),
                                ),
                              );
                            },
                            child: Container(
                              height: 23,
                              child: Row(
                                children: [
                                  Icon(
                                    EvaIcons.messageCircle,
                                    color: HexColor("32CD32"),
                                    size: 20,
                                  ),
                                  SizedBox(
                                    width: 10,
                                  ),
                                  Text(
                                    'Message',
                                    style: GoogleFonts.oxygen(
                                      fontSize: 14,
                                      color: HexColor("32CD32"),
                                      fontWeight: FontWeight.w600,
                                    ),
                                  )
                                ],
                              ),
                            ),
                          ),
                        ),
                      ],
                    )
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 10,
            ),

            // rest of the info here
            Container(
              color: Colors.white,
              width: double.infinity,
              child: Padding(
                padding: const EdgeInsets.all(15),
                child: Column(
                  children: [
                    // start date
                    ListTile(
                      leading: Icon(
                        EvaIcons.calendarOutline,
                        color: HexColor('32CD32'),
                      ),
                      title: Text(
                        'Service Start Date',
                        style: GoogleFonts.oxygen(
                          fontSize: 14,
                          color: HexColor("B8B3B3"),
                        ),
                      ),
                      subtitle: Text(
                        Utilities.newdateFormat(widget.service.startDate),
                        style: GoogleFonts.oxygen(
                          fontSize: 16,
                          color: HexColor("44493D"),
                          // fontWeight: FontWeight.w600,
                        ),
                      ),
                    ),
                    // start date
                    ListTile(
                      leading: Icon(
                        EvaIcons.clockOutline,
                        color: HexColor('32CD32'),
                      ),
                      title: Text(
                        'Service Start Time',
                        style: GoogleFonts.oxygen(
                          fontSize: 14,
                          color: HexColor("B8B3B3"),
                        ),
                      ),
                      subtitle: Text(
                        widget.service.startTime,
                        style: GoogleFonts.oxygen(
                          fontSize: 16,
                          color: HexColor("44493D"),
                        ),
                      ),
                    ),
                    //service recipient
                    if (widget.service.requestType != "myself") ...[
                      ListTile(
                        leading: Icon(
                          EvaIcons.personOutline,
                          color: HexColor('32CD32'),
                        ),
                        title: Text(
                          'Name of Service Recipient (Requested for someone)',
                          style: GoogleFonts.oxygen(
                            fontSize: 14,
                            color: HexColor("B8B3B3"),
                          ),
                        ),
                        subtitle: Text(
                          widget.service.requester != null &&
                                  widget.service.requester.isNotEmpty
                              ? widget.service.requester
                              : "N/A",
                          style: GoogleFonts.oxygen(
                            fontSize: 16,
                            color: HexColor("44493D"),
                          ),
                        ),
                      ),
                    ],
                    //service recipient contact
                    ListTile(
                      leading: Icon(
                        EvaIcons.phoneOutline,
                        color: HexColor('32CD32'),
                      ),
                      title: Text(
                        'Contact of Service Recipient',
                        style: GoogleFonts.oxygen(
                          fontSize: 14,
                          color: HexColor("B8B3B3"),
                        ),
                      ),
                      subtitle: Text(
                        widget.service.contactOfPerson,
                        style: GoogleFonts.oxygen(
                          fontSize: 16,
                          color: HexColor("44493D"),
                        ),
                      ),
                    ),

                    // FormBuilderDateTimePicker(
                    //   name: 'date',
                    //   // onChanged: _onChanged,
                    //   inputType: InputType.time,
                    //   decoration: InputDecoration(
                    //     labelText: 'Appointment Time',
                    //   ),
                    //   initialTime: TimeOfDay(hour: 8, minute: 0),
                    //   // initialValue: DateTime.now(),
                    //   // enabled: true,
                    // ),

                    // Service Location
                    ListTile(
                      onTap: () {
                        // function that leads to map screen
                      },
                      leading: Icon(
                        Icons.pin_drop_outlined,
                        color: HexColor('32CD32'),
                      ),
                      title: Text(
                        'Service Location',
                        style: GoogleFonts.oxygen(
                          fontSize: 14,
                          color: HexColor("B8B3B3"),
                        ),
                      ),
                      subtitle: Text(
                        widget.service.location,
                        style: GoogleFonts.oxygen(
                          fontSize: 16,
                          color: HexColor("32CD32"),
                        ),
                      ),
                    ),

                    // Fee Payable to the provider
                    ListTile(
                      leading: Icon(
                        Icons.credit_card,
                        color: HexColor('32CD32'),
                      ),
                      title: Text(
                        'Fees Receivable',
                        style: GoogleFonts.oxygen(
                          fontSize: 14,
                          color: HexColor("B8B3B3"),
                        ),
                      ),
                      subtitle: RichText(
                        text: TextSpan(
                          text: 'GH¢ ',
                          style: GoogleFonts.oxygen(
                              fontSize: 16,
                              color: HexColor("B8B3B3"),
                              fontWeight: FontWeight.w600),
                          children: [
                            TextSpan(
                              text: Utilities.formatAmounts(
                                widget.service.feesCharged,
                              ),
                              style: GoogleFonts.oxygen(
                                fontSize: 16,
                                color: HexColor("32CD32"),
                                fontWeight: FontWeight.w600,
                              ),
                            )
                          ],
                        ),
                      ),
                    ),

                    // Brief Description
                    ListTile(
                      title: Text(
                        'Service Description',
                        style: GoogleFonts.oxygen(
                          fontSize: 14,
                          color: HexColor("B8B3B3"),
                        ),
                      ),
                      subtitle: Text(
                        widget.service.serviceId.first.description ??
                            'I need a temporary driver to pick and drop-off my kids at school for the next 2 days. Provider would deploy his own vehicle to execute this service',
                        style: GoogleFonts.oxygen(
                          fontSize: 16,
                          color: HexColor("44493D"),
                        ),
                      ),
                    ),

                    // // Service is completed and fee is duly paid (check box)
                    // Padding(
                    //   padding: const EdgeInsets.symmetric(horizontal: 8.0),
                    //   child: Container(
                    //     width: double.infinity,
                    //     child: FormBuilder(
                    //       key: _formKey,
                    //       child: FormBuilderCheckbox(
                    //         decoration:
                    //             InputDecoration(border: InputBorder.none),
                    //         name: 'accept_terms',
                    //         initialValue: false,
                    //         // onChanged: (){},
                    //         title: RichText(
                    //           text: TextSpan(
                    //             children: [
                    //               TextSpan(
                    //                 text:
                    //                     'Service is completed and fee is duly paid',
                    //                 style: GoogleFonts.oxygen(
                    //                   fontSize: 14,
                    //                   color: HexColor("44493D"),
                    //                 ),
                    //               ),
                    //             ],
                    //           ),
                    //         ),
                    //         validator: FormBuilderValidators.equal(
                    //           context,
                    //           true,
                    //           errorText:
                    //               'You must accept terms and conditions to continue',
                    //         ),
                    //       ),
                    //     ),
                    //   ),
                    // ),
                    SizedBox(
                      height: 10,
                    ),

                    // End service button & cancel service
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        // End Service
                        Container(
                          decoration: BoxDecoration(
                              color: HexColor('32CD32'),
                              borderRadius: BorderRadius.circular(50)),
                          width: width * 0.3,
                          height: 38,
                          child: TextButton(
                              onPressed: () {
                                // end service alert
                                Alert(
                                  context: context,
                                  style: Utilities.alertStyle(),
                                  // image:
                                  //     Image.asset("assets/quizLogo/check.png"),
                                  title: "SERVICE STATUS",
                                  desc:
                                      "Click on 'Continue' if the service is executed and the agreed fee is duly paid.",
                                  buttons: [
                                    DialogButton(
                                      color: Colors.blue,
                                      child: Text(
                                        "Back",
                                        style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 16,
                                        ),
                                      ),
                                      onPressed: () {
                                        Navigator.pop(context);
                                      },
                                      width: 120,
                                    ),
                                    DialogButton(
                                      child: Text(
                                        "Continue",
                                        style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 16,
                                        ),
                                      ),
                                      onPressed: () {
                                        Navigator.pop(context);
                                        Alert(
                                          context: context,
                                          style: Utilities.alertStyle(),
                                          image: Image.asset(
                                              "assets/quizLogo/check.png"),
                                          title: "SERVICE COMPLETED",
                                          desc:
                                              "You have successfully ended this service. Thank you for choosing Service Hub.",
                                          buttons: [
                                            DialogButton(
                                              child: Text(
                                                "Rate here",
                                                style: TextStyle(
                                                    color: Colors.white,
                                                    fontSize: 16),
                                              ),
                                              onPressed: () {
                                                Navigator.pushAndRemoveUntil(
                                                    context,
                                                    MaterialPageRoute(
                                                      builder: (context) =>
                                                          RateProviderPage(),
                                                    ),
                                                    (route) => false);
                                              },
                                              width: 120,
                                            ),
                                            DialogButton(
                                              child: Text(
                                                "Exit",
                                                style: TextStyle(
                                                    color: Colors.white,
                                                    fontSize: 16),
                                              ),
                                              onPressed: () {
                                                Navigator.pushAndRemoveUntil(
                                                    context,
                                                    MaterialPageRoute(
                                                      builder: (context) =>
                                                          MyBottomNaigationBar(),
                                                    ),
                                                    (route) => false);
                                              },
                                              width: 120,
                                            ),
                                          ],
                                        ).show();
                                      },
                                      width: 120,
                                    ),
                                  ],
                                ).show();
                              },
                              child: Text(
                                'End service',
                                style: GoogleFonts.oxygen(
                                    fontSize: 14, color: Colors.white),
                              )),
                        ),

                        // PhysicalModel(
                        //   shape: BoxShape.circle,
                        //   elevation: 2.0,
                        //   color: Colors.white,
                        //   child: Container(
                        //     padding: EdgeInsets.all(4.0),
                        //     decoration: BoxDecoration(
                        //       color: Colors.white,
                        //       shape: BoxShape.circle,
                        //     ),
                        //     child: CircleAvatar(
                        //       radius: 24,
                        //       backgroundColor: Colors.white,
                        //       child: IconButton(
                        //         onPressed: () {},
                        //         icon: Icon(
                        //           EvaIcons.shareOutline,
                        //           color: HexColor('32CD32'),
                        //         ),
                        //       ),
                        //     ),
                        //   ),
                        // ),

                        // Cancel Service
                        Container(
                          decoration: BoxDecoration(
                              color: Colors.red,
                              borderRadius: BorderRadius.circular(50)),
                          width: width * 0.33,
                          height: 35,
                          child: TextButton(
                              onPressed: () {
                                Alert(
                                  context: context,
                                  style: Utilities.alertStyle(),
                                  type: AlertType.warning,
                                  title: "CANCEL SERVICE",
                                  desc:
                                      "Are you sure you want to cancel this service?",
                                  buttons: [
                                    DialogButton(
                                      child: Text(
                                        "YES",
                                        style: TextStyle(
                                            color: Colors.white, fontSize: 20),
                                      ),
                                      onPressed: () {
                                        Navigator.pushAndRemoveUntil(
                                            context,
                                            MaterialPageRoute(
                                              builder: (context) =>
                                                  ServiceCancellationFormPage(),
                                            ),
                                            (route) => false);
                                      },
                                      width: 120,
                                    ),
                                    DialogButton(
                                      color: Colors.redAccent,
                                      child: Text(
                                        "NO",
                                        style: TextStyle(
                                            color: Colors.white, fontSize: 20),
                                      ),
                                      onPressed: () => Navigator.pop(context),
                                      width: 120,
                                    )
                                  ],
                                ).show();
                              },
                              child: Text(
                                'Cancel service',
                                style: GoogleFonts.oxygen(
                                    fontSize: 14, color: Colors.white),
                              )),
                        )
                      ],
                    )
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
