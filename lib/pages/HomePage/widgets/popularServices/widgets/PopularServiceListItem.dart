import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:servicehub/models/popularServiceModel.dart';
import 'package:servicehub/pages/ServiceDetailPage/ServiceDetailPage.dart';
import 'package:servicehub/utils/util.dart';

class PopularServiceListItem extends StatelessWidget {
  final PopularServiceDatum service;

  PopularServiceListItem({this.service});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => ServiceDetailPage(
              service:service
            ),
          ),
        );
      },
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 5, horizontal: 10),
        child: Container(
          height: 110,
          width: 231,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            image: DecorationImage(
                image: AssetImage(Utilities.getServiceDisplayImage(service.title)),
                fit: BoxFit.cover,
                colorFilter: ColorFilter.mode(
                    Colors.black.withOpacity(0.4), BlendMode.darken)),
            color: Colors.white,
          ),
          child: Padding(
            padding: const EdgeInsets.only(top: 65, left: 10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(service.title,
                    style: GoogleFonts.oxygen(
                        fontSize: 14,
                        fontWeight: FontWeight.w600,
                        color: Colors.white)),
                Text('From ¢${service.price}',
                    style:
                        GoogleFonts.oxygen(fontSize: 12, color: Colors.white)),
              ],
            ),
          ),
        ),
      ),
    );
  }
}


          //    Text(
          //      serviceTitle,
          //     style: GoogleFonts.oxygen(
          //       fontSize: 16,
          //       fontWeight: FontWeight.w600,
          //       color: Colors.white
          //       )
          //     ),
          // Text(
          //      ' From ${new String.fromCharCodes(new Runes('\u20B5'))} $pricerange',
          //     style: GoogleFonts.oxygen(
          //       fontSize: 14,
          //       color: Colors.white
          //       )
          //     ),