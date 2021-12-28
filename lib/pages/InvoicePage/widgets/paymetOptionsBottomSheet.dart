import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:servicehub/pages/paymentPage/paymentPage.dart';

class PaymentOptionsBottomSheet extends StatelessWidget {
  const PaymentOptionsBottomSheet({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(15),
      child: Column(
        children: [
          // note here
          Text("PAYMET OPTIONS",
              textAlign: TextAlign.center,
              style: GoogleFonts.oxygen(
                  color: HexColor('32CD32'),
                  fontSize: 16,
                  fontWeight: FontWeight.w600)),
          SizedBox(
            height: 5,
          ),
          Text(
            "Mobile money",
            textAlign: TextAlign.start,
            style: GoogleFonts.oxygen(color: HexColor('5F5F65'), fontSize: 14),
          ),
          SizedBox(
            height: 10,
          ),

          // mobile money options
          Container(
            height: 100,
            width: double.infinity,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  // mtn option
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      GestureDetector(
                        onTap: () {
                          Navigator.pushAndRemoveUntil(
                            context,
                            MaterialPageRoute(
                              builder: (context) => PaymentPage(),
                            ),
                            (route) => false,
                          );
                        },
                        child: Container(
                          height: 80,
                          width: 80,
                          decoration: BoxDecoration(
                            image: DecorationImage(
                              fit: BoxFit.cover,
                              image: AssetImage(
                                'assets/networkImages/mtn.jpg',
                              ),
                            ),
                            borderRadius: BorderRadius.circular(10),
                          ),
                        ),
                      ),
                      Text(
                        "Mtn",
                        textAlign: TextAlign.start,
                        style: GoogleFonts.oxygen(
                            color: HexColor('5F5F65'), fontSize: 12),
                      ),
                    ],
                  ),
                ),
                // vodafone option
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      GestureDetector(
                        onTap: () {},
                        child: Container(
                          height: 80,
                          width: 80,
                          decoration: BoxDecoration(
                              image: DecorationImage(
                                  fit: BoxFit.cover,
                                  image: AssetImage(
                                      'assets/networkImages/vodafone.jpg')),
                              borderRadius: BorderRadius.circular(10)),
                        ),
                      ),
                      Text(
                        "Vodafone",
                        textAlign: TextAlign.start,
                        style: GoogleFonts.oxygen(
                            color: HexColor('5F5F65'), fontSize: 12),
                      ),
                    ],
                  ),
                ),
                // airteltigo option
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      GestureDetector(
                        onTap: () {},
                        child: Container(
                          height: 80,
                          width: 80,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              image: DecorationImage(
                                  fit: BoxFit.cover,
                                  image: AssetImage(
                                      'assets/networkImages/airtelTigo.jpg'))),
                        ),
                      ),
                      Text(
                        "AirtelTigo",
                        textAlign: TextAlign.start,
                        style: GoogleFonts.oxygen(
                            color: HexColor('5F5F65'), fontSize: 12),
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
          SizedBox(
            height: 20,
          ),

          Text(
            "Other options",
            textAlign: TextAlign.start,
            style: GoogleFonts.oxygen(color: HexColor('5F5F65'), fontSize: 14),
          ),

          // other option
          Container(
            height: 100,
            width: double.infinity,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  // VISA option
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      GestureDetector(
                        onTap: () {},
                        child: Container(
                          height: 80,
                          width: 80,
                          decoration: BoxDecoration(
                              image: DecorationImage(
                                  fit: BoxFit.cover,
                                  image: AssetImage(
                                      'assets/networkImages/visa.png')),
                              borderRadius: BorderRadius.circular(10)),
                        ),
                      ),
                      Text(
                        "VISA",
                        textAlign: TextAlign.start,
                        style: GoogleFonts.oxygen(
                            color: HexColor('5F5F65'), fontSize: 12),
                      ),
                    ],
                  ),
                ),
                // vodafone option
              ],
            ),
          )
        ],
      ),
    );
  }
}
