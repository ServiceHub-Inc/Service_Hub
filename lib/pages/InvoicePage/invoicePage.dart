import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hexcolor/hexcolor.dart';

import 'widgets/paymetOptionsBottomSheet.dart';

class InvoicePage extends StatelessWidget {
  const InvoicePage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double _height = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: HexColor('E5E5E5'),
      appBar: AppBar(
        backgroundColor: HexColor('32CD32'),
        iconTheme: IconThemeData(color: Colors.white),
        elevation: 0,
        title: Text(
          'Invoice',
          style: GoogleFonts.oxygen(fontSize: 18, color: Colors.white),
        ),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            width: double.infinity,
            height: _height * 0.7,
            color: Colors.white,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 15),
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    // Header
                    Padding(
                      padding: EdgeInsets.only(bottom: 20, top: 5),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                'INVOICE',
                                style: TextStyle(
                                  fontSize: 18.5,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.grey[500],
                                ),
                              )
                            ],
                          ),
                          SizedBox(height: 10.0),
                          Padding(
                            padding: EdgeInsets.symmetric(horizontal: 3.0),
                            child: Divider(
                              height: 3.0,
                              thickness: 2.0,
                              color: HexColor('32CD32'),
                            ),
                          ),
                        ],
                      ),
                    ),
                    // Amount to pay
                    Padding(
                      padding: const EdgeInsets.only(bottom: 25),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Amount to Pay',
                            style: GoogleFonts.oxygen(
                              fontSize: 15,
                              fontWeight: FontWeight.w600,
                              color: HexColor('5F5F65'),
                            ),
                          ),
                          Text(
                            'GHc 26.00',
                            style: GoogleFonts.oxygen(
                              fontSize: 16,
                              color: HexColor('5F5F65'),
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                    ),

                    // Breakdown
                    Padding(
                      padding: EdgeInsets.only(bottom: 10),
                      child: Text(
                        'Breakdown',
                        style: GoogleFonts.oxygen(
                          fontSize: 15.5,
                          fontWeight: FontWeight.w600,
                          color: HexColor('5F5F65'),
                        ),
                      ),
                    ),

                    // Agreed Fee
                    Padding(
                      padding: EdgeInsets.only(bottom: 20),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Fees agreed with service provider',
                            style: GoogleFonts.oxygen(
                                fontSize: 14, color: HexColor('B8B3B3')),
                          ),
                          Text(
                            'GHc 200',
                            style: GoogleFonts.oxygen(
                                fontSize: 14,
                                color: HexColor('B8B3B3'),
                                fontWeight: FontWeight.w600),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: 6.0),
                    // Platform Fee
                    Padding(
                      padding: EdgeInsets.only(bottom: 20),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          RichText(
                            text: TextSpan(
                              text: 'Platform Fee (',
                              style: GoogleFonts.oxygen(
                                // height: 1.5,
                                color: HexColor('B8B3B3'),
                                fontSize: 14,
                              ),
                              children: [
                                TextSpan(
                                  text: '3%',
                                  style: GoogleFonts.oxygen(
                                    color: HexColor('44493D'),
                                    fontSize: 14,
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                                TextSpan(
                                  text: ' of service fee)',
                                  style: GoogleFonts.oxygen(
                                    color: HexColor('B8B3B3'),
                                    fontSize: 14,
                                  ),
                                )
                              ],
                            ),
                          ),
                          Text(
                            'GHc 6',
                            style: GoogleFonts.oxygen(
                                fontSize: 14,
                                color: HexColor('B8B3B3'),
                                fontWeight: FontWeight.w600),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: 10.0),
                    // Total Charge Payable
                    Container(
                      padding: const EdgeInsets.symmetric(vertical: 12),
                      margin: EdgeInsets.only(bottom: 5.0),
                      decoration: BoxDecoration(
                        border: Border(
                          top: BorderSide(color: Colors.black45, width: 1.2),
                          bottom: BorderSide(color: Colors.black45, width: 1.2),
                        ),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Total Service Fee',
                            style: GoogleFonts.oxygen(
                                fontSize: 14, color: HexColor('B8B3B3')),
                          ),
                          Text(
                            'GHc 206',
                            style: GoogleFonts.oxygen(
                              fontSize: 15,
                              color: HexColor('B8B3B3'),
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: 6.0),

                    Padding(
                      padding: const EdgeInsets.only(bottom: 20),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Flexible(
                            child: RichText(
                              text: TextSpan(
                                text: 'Upfront Commitment Fee (',
                                style: GoogleFonts.oxygen(
                                  height: 1.5,
                                  color: HexColor('B8B3B3'),
                                  fontSize: 14,
                                ),
                                children: [
                                  TextSpan(
                                    text: '12.6%',
                                    style: GoogleFonts.oxygen(
                                      color: HexColor('44493D'),
                                      fontSize: 14,
                                      fontWeight: FontWeight.w600,
                                    ),
                                  ),
                                  TextSpan(
                                    text: ' of total service fee)',
                                    style: GoogleFonts.oxygen(
                                      color: HexColor('B8B3B3'),
                                      fontSize: 14,
                                    ),
                                  )
                                ],
                              ),
                            ),
                          ),
                          Text(
                            'GHc 26',
                            style: GoogleFonts.oxygen(
                                fontSize: 14,
                                color: HexColor('B8B3B3'),
                                fontWeight: FontWeight.w600),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: 10.0),
                    // Description message here
                    RichText(
                      text: TextSpan(
                        text: '** The remaining service charge of ',
                        style: GoogleFonts.oxygen(
                          height: 1.5,
                          color: HexColor('44493D'),
                          fontSize: 14,
                          fontWeight: FontWeight.w600,
                        ),
                        children: [
                          TextSpan(
                            text: ' GHc 180',
                            style: GoogleFonts.oxygen(
                              color: HexColor('32CD32'),
                              fontSize: 14,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                          TextSpan(
                            text:
                                ' is payable to the Provider upon completion of the requested service **',
                            style: GoogleFonts.oxygen(
                              color: HexColor('44493D'),
                              fontSize: 14,
                              fontWeight: FontWeight.w600,
                            ),
                          )
                        ],
                      ),
                    ),

                    // pay button
                    Expanded(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Container(
                            margin: EdgeInsets.only(bottom: 20.0),
                            width: double.infinity,
                            color: Colors.white,
                            child: Padding(
                              padding: const EdgeInsets.only(
                                top: 20,
                              ),
                              child: Container(
                                height: 50,
                                width: double.infinity,
                                child: TextButton(
                                  onPressed: () {
                                    // bottom sheet function
                                    Get.bottomSheet(Container(
                                      height: 350,
                                      color: Colors.white,
                                      child: PaymentOptionsBottomSheet(),
                                    ));
                                  },
                                  child: Text('PAY',
                                      style: GoogleFonts.oxygen(
                                        color: Colors.white,
                                        fontSize: 14,
                                        fontWeight: FontWeight.bold,
                                      )),
                                ),
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(50),
                                  color: HexColor('32CD32'),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    )
                  ]),
            ),
          )
        ],
      ),
    );
  }
}
