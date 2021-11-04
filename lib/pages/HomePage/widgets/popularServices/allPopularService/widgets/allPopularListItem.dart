import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:servicehub/pages/ServiceDetailPage/ServiceDetailPage.dart';

class AllPopularServiceListItem extends StatelessWidget {
  final String imageUrl;
  final String serviceTitle;
  final String priceRange;
  final String serviceDescription;

  AllPopularServiceListItem(
      {this.imageUrl,
      this.serviceTitle,
      this.priceRange,
      this.serviceDescription});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => ServiceDetailPage(
              image: imageUrl,
              title: serviceTitle,
              description: serviceDescription,
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
                image: AssetImage(imageUrl),
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
                        Text(serviceTitle,
                            style: GoogleFonts.oxygen(
                                fontSize: 16,
                                fontWeight: FontWeight.w600,
                                color: Colors.white)),
                        Text(' From ¢$priceRange',
                            style: GoogleFonts.oxygen(
                                fontSize: 14, color: Colors.white)),
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
