import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hexcolor/hexcolor.dart';
import 'widgets/IndividualInfo_qualification.dart';
import 'widgets/IndividualProviderImageContainer.dart';
import 'widgets/IndividualproviderReviews.dart';
import 'widgets/actionButtons_individual.dart';
import 'widgets/attachments_individual.dart';
import 'widgets/individualExperience_offer.dart';
import 'widgets/individualProfileHiglights.dart';
import 'widgets/individualRefereeInfo.dart';

class IndividualProviderInfoPage extends StatefulWidget {
  @override
  _IndividualProviderInfoPageState createState() =>
      _IndividualProviderInfoPageState();
}

class _IndividualProviderInfoPageState
    extends State<IndividualProviderInfoPage> {
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
              'James Anthony',
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
                  IndividualProviderImageContainer(),
                  ActionButtonsIndividual(),
                  IndividualProfileHighlight(),
                  SizedBox(
                    height: 0.5,
                  ),
                  IndividualExperienceAndOffer(),
                  SizedBox(
                    height: 0.5,
                  ),
                  IndividualInfoAndQualification(),
                  SizedBox(
                    height: 0.5,
                  ),
                  IndividualRefereeInfo(),
                  SizedBox(
                    height: 0.5,
                  ),
                  AttachedFilesIndividual(),
                  SizedBox(
                    height: 0.5,
                  ),
                  IndividualProviderReviews(),
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



