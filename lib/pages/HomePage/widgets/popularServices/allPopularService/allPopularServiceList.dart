import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:servicehub/models/popularServiceModel.dart';
import 'package:servicehub/pages/ServiceDetailPage/ServiceDetailPage.dart';
import 'package:servicehub/utils/widgets/searchbar.dart';

import 'widgets/allPopularListItem.dart';

class AllPopularServiceList extends StatelessWidget {
  final List<PopularServiceDatum> services;

  AllPopularServiceList({Key key, this.services}) : super(key: key);

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
          Expanded(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 5.0),
                child: ListView.builder(
                    itemCount: services.length,
                    itemBuilder: (context, index) {
                      return GestureDetector(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => ServiceDetailPage(
                                service: services[index],
                              ),
                            ),
                          );
                        },
                        child: AllPopularServiceListItem(
                          service:services[index]
                        ),
                      );
                    }),
              ),
            
          ),
        ],
      ),
    );
  }
}
