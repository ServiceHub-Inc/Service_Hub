import 'package:eva_icons_flutter/eva_icons_flutter.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:servicehub/pages/menuPage/menuDetailPages/becomeAgentPage/becomeAgentPage.dart';

class BecomeAgentProposeNewServicePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final String descriptionText =
        'You can apply to become an Agent with ServiceHub where you would be tasked with onboarding new service providers and promoting our services to potential users in return for commission payments. As an Agent, you can also propose new services to be hosted on the platform. We commit to pay you 5-25% commissions on fees paid by your referrals in line with agreed milestones. To become an Agent, continue to fill the form';
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 15),
          child: Column(
            children: [
              // Circle with Icon in it
              Center(
                child: Padding(
                  padding: const EdgeInsets.only(top: 50, bottom: 20),
                  child: CircleAvatar(
                    backgroundColor: Colors.grey[200],
                    radius: 60,
                    child: Icon(
                      EvaIcons.personDone,
                      color: HexColor('32CD32'),
                      size: 50,
                    ),
                  ),
                ),
              ),

              // Become an agent text here
              Text(
                'Become an Agent',
                style: GoogleFonts.oxygen(
                  color: HexColor('32CD32'),
                  fontSize: 18,
                  fontWeight: FontWeight.w600,
                ),
              ),
              SizedBox(
                height: 20,
              ),

              // description
              Text(
                descriptionText,
                style: GoogleFonts.oxygen(
                  color: HexColor('44493D'),
                  fontSize: 14,
                  height: 1.5,
                ),
                textAlign: TextAlign.justify,
              ),
              SizedBox(
                height: 20,
              ),

              // Contunue Button
              Container(
                decoration: BoxDecoration(
                    color: HexColor('32CD32'),
                    borderRadius: BorderRadius.circular(50)),
                height: 50,
                width: double.infinity,
                child: TextButton(
                  onPressed: () {
                    Navigator.pushAndRemoveUntil(
                      context,
                      MaterialPageRoute(
                        builder: (context) => BecomeAgentPage(),
                      ),
                      (route) => false,
                    );
                  },
                  child: Text(
                    'CONTINUE',
                    style: GoogleFonts.oxygen(
                      fontWeight: FontWeight.w600,
                      color: Colors.white,
                      fontSize: 14,
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 10,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
