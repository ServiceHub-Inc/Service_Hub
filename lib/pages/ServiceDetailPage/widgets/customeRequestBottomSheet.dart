import 'package:eva_icons_flutter/eva_icons_flutter.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:servicehub/pages/becomeProviderProcess/IndividualProviderProcess/widgets/personalInfoForms.dart';
import 'package:servicehub/pages/becomeProviderProcess/corporateProviderProcess/corporateInfoPage.dart';
// import 'package:theservicehub/becomeProviderProcess/providerSubscriptionPage/providerSubscriptionPage.dart';

class CustomRequestBottomSheet extends StatelessWidget {
  const CustomRequestBottomSheet({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(15),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(
            'Service Option',
            style: GoogleFonts.oxygen(
                fontSize: 16,
                fontWeight: FontWeight.w600,
                color: HexColor('32CD32')),
          ),
          Text(
            'What category of provider do you prefer?',
            style: GoogleFonts.oxygen(
                fontSize: 14, color: HexColor('44493D').withOpacity(0.65)),
          ),
          SizedBox(
            height: 20,
          ),
          // Options here
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Column(
                children: [
                  GestureDetector(
                    onTap: () {
                      Navigator.pushAndRemoveUntil(
                        context,
                        MaterialPageRoute(
                          builder: (context) => IndividualInfoForms(),
                        ),
                        (route) => false,
                      );
                    },
                    child: Container(
                      child: Icon(
                        EvaIcons.person,
                        color: HexColor('44493D'),
                        size: 16,
                      ),
                      height: 70,
                      width: 70,
                      decoration: BoxDecoration(
                          color: Colors.grey[200],
                          borderRadius: BorderRadius.circular(15)),
                    ),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Text('Individual',
                      style: GoogleFonts.oxygen(
                          color: HexColor('44493D'), fontSize: 12))
                ],
              ),
              Column(
                children: [
                  GestureDetector(
                    onTap: () {
                      Navigator.pushAndRemoveUntil(
                        context,
                        MaterialPageRoute(
                          builder: (context) => CorporateInfoPage(),
                        ),
                        (route) => false,
                      );
                    },
                    child: Container(
                      child: Icon(
                        EvaIcons.people,
                        color: HexColor('44493D'),
                        size: 16,
                      ),
                      height: 70,
                      width: 70,
                      decoration: BoxDecoration(
                          color: Colors.grey[200],
                          borderRadius: BorderRadius.circular(15)),
                    ),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Text('Corporate',
                      style: GoogleFonts.oxygen(
                          color: HexColor('44493D'), fontSize: 12))
                ],
              ),
            ],
          )
        ],
      ),
    );
  }
}
