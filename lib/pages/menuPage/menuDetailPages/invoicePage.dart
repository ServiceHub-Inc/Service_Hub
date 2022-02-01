import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:servicehub/pages/InvoicePage/widgets/paymetOptionsBottomSheet.dart';

class InvoicePage extends StatelessWidget {
  const InvoicePage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
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
      body: SingleChildScrollView(
        child: Column(
          children: [
            // header
            Padding(
              padding: const EdgeInsets.only(bottom: 3),
              child: Container(
                width: double.infinity,
                color: Colors.white,
                child: Padding(
                  padding:
                      const EdgeInsets.symmetric(vertical: 15, horizontal: 15),
                  child: Text(
                    'INVOICE',
                    style: GoogleFonts.oxygen(
                        fontSize: 18, color: HexColor('44493D')),
                  ),
                ),
              ),
            ),
            // INVOICE DETAILS
            Container(
              width: double.infinity,
              color: Colors.white,
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 20, vertical: 15),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      // Agreed service charged
                      Padding(
                        padding: const EdgeInsets.only(bottom: 15),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Agreed service fee',
                              style: GoogleFonts.oxygen(
                                  fontSize: 12, color: HexColor('B8B3B3')),
                            ),
                            Text(
                              'GHc 200',
                              style: GoogleFonts.oxygen(
                                  fontSize: 14,
                                  color: HexColor('5F5F65'),
                                  fontWeight: FontWeight.bold),
                            ),
                          ],
                        ),
                      ),

                      // Platform Fee
                      Padding(
                        padding: const EdgeInsets.only(bottom: 15),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Platform Fee',
                              style: GoogleFonts.oxygen(
                                  fontSize: 12, color: HexColor('B8B3B3')),
                            ),
                            Text(
                              'GHc 6',
                              style: GoogleFonts.oxygen(
                                  fontSize: 14,
                                  color: HexColor('5F5F65'),
                                  fontWeight: FontWeight.bold),
                            ),
                          ],
                        ),
                      ),

                      // Total Cahrge Payable
                      Padding(
                        padding: const EdgeInsets.only(bottom: 15),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Total fee Payable',
                              style: GoogleFonts.oxygen(
                                  fontSize: 12, color: HexColor('B8B3B3')),
                            ),
                            Text(
                              'GHc 206',
                              style: GoogleFonts.oxygen(
                                  fontSize: 14,
                                  color: HexColor('5F5F65'),
                                  fontWeight: FontWeight.bold),
                            ),
                          ],
                        ),
                      ),

                      // 12.6% upfront Commitment fee
                      Padding(
                        padding: const EdgeInsets.only(bottom: 15),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              '12.6% upfront Commitment fee',
                              style: GoogleFonts.oxygen(
                                  fontSize: 12, color: HexColor('B8B3B3')),
                            ),
                            Text(
                              'GHc 26',
                              style: GoogleFonts.oxygen(
                                  fontSize: 14,
                                  color: HexColor('32CD32'),
                                  fontWeight: FontWeight.bold),
                            ),
                          ],
                        ),
                      ),

                      // Description message here
                      RichText(
                          text: TextSpan(
                              text: '“The remaining service charge of ',
                              style: GoogleFonts.oxygen(
                                  height: 1.5,
                                  color: HexColor('44493D'),
                                  fontSize: 14,
                                  fontWeight: FontWeight.w600),
                              children: [
                            TextSpan(
                                text: ' GHc 180',
                                style: GoogleFonts.oxygen(
                                    color: HexColor('32CD32'),
                                    fontSize: 14,
                                    fontWeight: FontWeight.w600)),
                            TextSpan(
                                text:
                                    ' is payable to the Provider upon completion of the requested service.',
                                style: GoogleFonts.oxygen(
                                    color: HexColor('44493D'),
                                    fontSize: 14,
                                    fontWeight: FontWeight.w600))
                          ])),

                      // pay button
                      Container(
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
                                showModalBottomSheet(
                                  elevation: 5.0,
                                  barrierColor: Colors.black.withOpacity(0.4),
                                  isDismissible: true,
                                  context: context,
                                  builder: (context) {
                                    return Container(
                                      height: 350,
                                      color: Colors.white,
                                      child: PaymentOptionsBottomSheet(),
                                    );
                                  },
                                );
                              },
                              child: Text('PAY',
                                  style: GoogleFonts.oxygen(
                                      color: Colors.white,
                                      fontSize: 14,
                                      fontWeight: FontWeight.bold)),
                            ),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(50),
                              color: HexColor('32CD32'),
                            ),
                          ),
                        ),
                      )
                    ]),
              ),
            )
          ],
        ),
      ),
    );
  }
}
