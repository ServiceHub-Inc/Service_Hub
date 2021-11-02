import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hexcolor/hexcolor.dart';
import 'widgets/actionButtons_corporate.dart';
import 'widgets/attachments_corporate.dart';
import 'widgets/corporateInfo_qualification.dart';
import 'widgets/experience_offer_corporate.dart';
import 'widgets/profileHiglights_corporate.dart';
import 'widgets/providerImageContainer_corporate.dart';
import 'widgets/providerReviews_corporate.dart';

class CorporateProviderInfoPage extends StatefulWidget {
  @override
  _CorporateProviderInfoPageState createState() =>
      _CorporateProviderInfoPageState();
}

class _CorporateProviderInfoPageState extends State<CorporateProviderInfoPage> {
  // show basic

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        body: CustomScrollView(slivers: [
          SliverAppBar(
            backgroundColor: Colors.white,
            elevation: 0,
            floating: true,
            iconTheme: IconThemeData(color: HexColor('5F5F65')),
            title: Text(
              'Zack Cleaning Service',
              style: GoogleFonts.oxygen(
                fontSize: 18,
                color: HexColor('32CD32'),
              ), // 5F5F65
            ),
          ),
          SliverToBoxAdapter(
            child: Container(
              color: HexColor('E5E5E5'),
              child: Column(
                children: [
                  ProviderImageContainerCorporate(),
                  ActionButtonsCorporate(),
                  CorporateProfileHighlight(),
                  SizedBox(
                    height: 0.5,
                  ),
                  CorporateExperienceAndOffer(),
                  SizedBox(
                    height: 0.5,
                  ),
                  CorporateInfoQualification(),
                  SizedBox(
                    height: 0.5,
                  ),
                  AttachedFilesCorporate(),
                  SizedBox(
                    height: 0.5,
                  ),
                  CorporateProviderReviews(),
                ],
              ),
            ),
          )
        ]));
  }
}

        //    Padding(
        //   padding: const EdgeInsets.only(bottom: 15),
        //   child: Column(
        //     children: [
        //       // Image Container
        //       ProviderImageContainer(),
        //       // Rest Of Provider Details
        //       Container(
        //         color: HexColor('E5E5E5'),
        //         child: Column(
        //           children: [
        //             ProfileHighlight(),
        //             SizedBox(height: 1,),
        //             ExperienceAndOffer(),
        //             SizedBox(height: 1,),
        //             PersonalInfoAndQualification(),
        //             SizedBox(height: 1,),
        //             RefereeInfo(),
        //             SizedBox(height: 1,),
        //             AttachedFiles()    
        //       ])
        //     )
        //     ]
        //   )
        // )



