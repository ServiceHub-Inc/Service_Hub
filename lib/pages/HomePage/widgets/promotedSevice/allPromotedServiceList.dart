import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:servicehub/models/promotedServiceModel.dart';
import 'package:servicehub/pages/HomePage/widgets/promotedSevice/promotedServiceDetailPage.dart';
import 'package:servicehub/utils/widgets/searchbar.dart';

import 'widget/allpromotedServiceListItem.dart';

class AllPromotedServiceList extends StatelessWidget {
  final List<PromotedServiceDatum> services;

  const AllPromotedServiceList({Key key, this.services}) : super(key: key);

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
                  itemCount: services.length,
                  itemBuilder: (context, index) {
                    return GestureDetector(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => PromotedServiceDetailPage(
                                service: services[index],
                              ),
                            ),
                          );
                        },
                        child: AllPromotedServiceListItem(
                          service:services[index]
                        ));
                  }),
            );
          }),
        ],
      ),
    );
  }
}
