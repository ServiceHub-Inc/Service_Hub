import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:servicehub/pages/menuPage/menuDetailPages/promoteService/promoteServicePaymentOptionPage.dart';

class PromoteServiceInvoicePage extends StatelessWidget {
  const PromoteServiceInvoicePage({Key key}) : super(key: key);

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
            // INVOICE DETAILS
            Container(
              width: double.infinity,
              color: Colors.white,
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      // Agreed service charged
                      Padding(
                        padding: const EdgeInsets.only(bottom: 20),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Chosen Package',
                              style: GoogleFonts.oxygen(
                                  fontSize: 12, color: HexColor('B8B3B3')),
                            ),
                            Text(
                              ' Promote the service for 60 days @GH₵50',
                              style: GoogleFonts.oxygen(
                                  fontSize: 14,
                                  color: HexColor('5F5F65'),
                                  fontWeight: FontWeight.bold),
                            ),
                          ],
                        ),
                      ),
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
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) =>
                                        PromoteServicePaymentOptionPage(),
                                  ),
                                );
                                //   Get.bottomSheet(
                                //     Container(
                                //     height: 350,
                                //     color: Colors.white,
                                //     child: PaymentOptionsBottomSheet(),
                                // ));
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
