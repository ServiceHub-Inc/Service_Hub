import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:servicehub/pages/requestServiceProcess/CorporateProviderInfoPage.dart/CorporateProviderInfoPage.dart';
import 'package:servicehub/pages/requestServiceProcess/IndividualProviderInfoPage.dart/IndividualProviderInfoPage.dart';
import 'package:servicehub/pages/requestServiceProcess/servicerequestResult/widgets/listItem.dart';

class PageList extends StatelessWidget {
  const PageList({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
          width: double.infinity,
          child: ListView(
            children: [
              // first tile Individual
              ListItem(
                distance: '5',
                imageUrl: 'assets/serviceImages/person1.jpg',
                noOfCpmpletedService: '5',
                providerName: 'James Anthony',
                rate: '4',
                serviceType: 'Individual',
                navigateToDetailPage: () {
                  Navigator.pushAndRemoveUntil(
                    context,
                    MaterialPageRoute(
                      builder: (context) => IndividualProviderInfoPage(),
                    ),
                    (route) => false,
                  );
                },
              ),
              ListItem(
                distance: '12',
                imageUrl: 'assets/serviceImages/cleaner.jpg',
                noOfCpmpletedService: '21',
                providerName: 'Zack Cleaning Service',
                rate: '4.5',
                serviceType: 'Corporate',
                navigateToDetailPage: () {
                  Navigator.pushAndRemoveUntil(
                    context,
                    MaterialPageRoute(
                      builder: (context) => CorporateProviderInfoPage(),
                    ),
                    (route) => false,
                  );
                },
              ),
              ListItem(
                distance: '3',
                imageUrl: 'assets/serviceImages/person1.jpg',
                noOfCpmpletedService: '5',
                providerName: 'Jeshrun Anthony',
                rate: '3.8',
                serviceType: 'Individual',
                navigateToDetailPage: () {
                  Navigator.pushAndRemoveUntil(
                    context,
                    MaterialPageRoute(
                      builder: (context) => IndividualProviderInfoPage(),
                    ),
                    (route) => false,
                  );
                },
              ),
            ],
          )),
    );
  }
}



// ListView.builder(
//               itemCount: 10,
//               itemBuilder: (context, index) {
//                 // List Item
//                 return Padding(
//                   padding: const EdgeInsets.symmetric(vertical: 1),
//                   child: Container(
//                       height: 105,
//                       color: Colors.white,
//                       child: Padding(
//                         padding: const EdgeInsets.symmetric(horizontal: 15),
//                         child: Row(
//                           mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                           children: [
//                             // circle iamge her
//                             Row(
//                               children: [
//                                 Container(
//                                   child: CircleAvatar(
//                                     radius: 30,
//                                   ),
//                                 ),

//                                 SizedBox(width: 20),
//                                 // name, rating etc
//                                 Padding(
//                                   padding: const EdgeInsets.only(top: 20),
//                                   child: Container(
//                                     child: Column(
//                                       crossAxisAlignment:
//                                           CrossAxisAlignment.start,
//                                       children: [
//                                         // Title
//                                         Container(
//                                           width: width * 0.4,
//                                           child: Text(
//                                             'Ameri Gurui Adeyi',
//                                             style: GoogleFonts.oxygen(
//                                                 color: HexColor('44493D'),
//                                                 fontSize: 16,
//                                                 fontWeight: FontWeight.w600),
//                                             overflow: TextOverflow.ellipsis,
//                                           ),
//                                         ),
//                                         // sub title
//                                         Text(
//                                           '5km Away',
//                                           style: GoogleFonts.oxygen(
//                                             color: HexColor('6E798C'),
//                                             fontSize: 13,
//                                           ),
//                                         ),

//                                         SizedBox(
//                                           height: 3,
//                                         ),
//                                         // rating
//                                         RatingBar.builder(
//                                           itemSize: 20,
//                                           initialRating: 3,
//                                           minRating: 1,
//                                           direction: Axis.horizontal,
//                                           allowHalfRating: true,
//                                           itemCount: 5,
//                                           itemPadding: EdgeInsets.symmetric(
//                                               horizontal: 1.0),
//                                           itemBuilder: (context, _) => Icon(
//                                             Icons.star,
//                                             color: Colors.amber,
//                                           ),
//                                           onRatingUpdate: (rating) {
//                                             print(rating);
//                                           },
//                                         )
//                                       ],
//                                     ),
//                                   ),
//                                 ),
//                               ],
//                             ),

//                             Container(
//                               child: Padding(
//                                 padding: const EdgeInsets.only(top: 20),
//                                 child: Column(
//                                   children: [
//                                     // No of service
//                                     Text(
//                                       'No. of services',
//                                       style: GoogleFonts.oxygen(
//                                         color: HexColor('6E798C'),
//                                         fontSize: 12,
//                                       ),
//                                     ),
//                                     SizedBox(
//                                       height: 5,
//                                     ),
//                                     CircleAvatar(
//                                       radius: 15,
//                                       backgroundColor:
//                                           HexColor('32CD32').withOpacity(0.5),
//                                       child: Text(
//                                         '13',
//                                         style: GoogleFonts.oxygen(
//                                           color: Colors.white,
//                                           fontSize: 13,
//                                         ),
//                                       ),
//                                     )
//                                   ],
//                                 ),
//                               ),
//                             )
//                           ],
//                         ),
//                       )),
//                 );
//               }),