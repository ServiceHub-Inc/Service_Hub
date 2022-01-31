import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:servicehub/models/popularServiceModel.dart';
import 'package:servicehub/pages/ServiceDetailPage/ServiceDetailPage.dart';
import 'package:servicehub/utils/util.dart';

class AllPopularServiceListItem extends StatelessWidget {
  final PopularServiceDatum service;

  AllPopularServiceListItem({this.service});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => ServiceDetailPage(
              service: service,
            ),
          ),
        );
      },
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 5, horizontal: 10),
        child: Container(
          height: 110,
          width: double.infinity,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            image: DecorationImage(
                image: AssetImage(Utilities.getServiceImage(service.banner)),
                fit: BoxFit.cover,
                colorFilter: ColorFilter.mode(
                    Colors.black.withOpacity(0.4), BlendMode.darken)),
            color: Colors.white,
          ),
          child: Stack(
            children: [
              Positioned(
                bottom: 10,
                left: 10,
                child: Row(
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(service.title,
                            style: GoogleFonts.oxygen(
                                fontSize: 16,
                                fontWeight: FontWeight.w600,
                                color: Colors.white)),
                        Text(' From ¢${service.price}',
                            style: GoogleFonts.oxygen(
                                fontSize: 14, color: Colors.white,),),
                      ],
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
