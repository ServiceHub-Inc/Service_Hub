import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:servicehub/pages/HomePage/controller/promotedServiceController.dart';
import 'package:servicehub/pages/HomePage/widgets/promotedSevice/promotedServiceDetailPage.dart';
import 'package:servicehub/utils/widgets/searchbar.dart';

import 'widget/allpromotedServiceListItem.dart';

class AllPromotedServiceList extends StatelessWidget {
  final promotedServiceController = Get.put(PromotedServicesController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
        title: Text(
          'All Promoted Services',
          style: GoogleFonts.oxygen(
            fontSize: 16,
            fontWeight: FontWeight.w600,
            color: Colors.white,
          ),
        ),
        elevation: 0,
        backgroundColor: HexColor('32CD32'),
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 8.0),
            child: SearchBar(),
          ),
          Obx(() {
            return Expanded(
              child: ListView.builder(
                  itemCount: promotedServiceController.promotedServices.length,
                  itemBuilder: (context, index) {
                    return GestureDetector(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => PromotedServiceDetailPage(),
                            ),
                          );
                          // Get.toNamed('/promotedServiceDetailPage', arguments: [
                          //   promotedServiceController
                          //       .promotedServices[index].imageUrl,
                          //   promotedServiceController
                          //       .promotedServices[index].serviceType,
                          //   promotedServiceController
                          //       .promotedServices[index].providerName,
                          //   promotedServiceController
                          //       .promotedServices[index].providerImageUrl,
                          //   promotedServiceController
                          //       .promotedServices[index].providerId,
                          //   promotedServiceController
                          //       .promotedServices[index].providerRating,
                          //   promotedServiceController
                          //       .promotedServices[index].serviceDescription,
                          //   promotedServiceController
                          //       .promotedServices[index].startDate,
                          //   promotedServiceController
                          //       .promotedServices[index].endDate,
                          // ]);
                        },
                        child: ALlPromtedServiceListItem(
                          providerName: promotedServiceController
                              .promotedServices[index].providerName,
                          serviceDescription: promotedServiceController
                              .promotedServices[index].serviceDescription,
                          endDate: promotedServiceController
                              .promotedServices[index].endDate,
                          providerImageUrl: promotedServiceController
                              .promotedServices[index].providerImageUrl,
                        ));
                  }),
            );
          }),
        ],
      ),
    );
  }
}
