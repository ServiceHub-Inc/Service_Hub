import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:servicehub/pages/HomePage/controller/popularServiceController.dart';
import 'package:servicehub/pages/ServiceDetailPage/ServiceDetailPage.dart';
import 'package:servicehub/utils/widgets/searchbar.dart';

import 'widgets/allPopularListItem.dart';

class AllPopularServiceList extends StatelessWidget {
  final popularServiceController = Get.put(PopularServiceController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
        title: Text(
          'All Popular Services',
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
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 5.0),
                child: ListView.builder(
                    itemCount: popularServiceController.popularServices.length,
                    itemBuilder: (context, index) {
                      return GestureDetector(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => ServiceDetailPage(
                                description: popularServiceController
                                    .popularServices[index].serviceDescription,
                                image: popularServiceController
                                    .popularServices[index].imageUrl,
                                title: popularServiceController
                                    .popularServices[index].serviceTitle,
                              ),
                            ),
                          );
                        },
                        child: AllPopularServiceListItem(
                          imageUrl: popularServiceController
                              .popularServices[index].imageUrl,
                          serviceTitle: popularServiceController
                              .popularServices[index].serviceTitle,
                          priceRange: popularServiceController
                              .popularServices[index].priceRange
                              .toString(),
                          serviceDescription: popularServiceController
                              .popularServices[index].serviceDescription,
                        ),
                      );
                    }),
              ),
            );
          }),
        ],
      ),
    );
  }
}
