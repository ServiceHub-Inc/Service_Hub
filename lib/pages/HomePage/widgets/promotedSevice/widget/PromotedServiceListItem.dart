import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:servicehub/pages/HomePage/widgets/promotedSevice/promotedServiceDetailPage.dart';

class PromotedServiceListItem extends StatelessWidget {
  //
  final String imageUrl;
  final String serviceType;
  final String startDate;
  final String endDate;
  final String serviceDescription;
  final String providerName;
  final String providerImageUrl;
  final String providerId;
  final double providerRating;

  PromotedServiceListItem(
      {this.imageUrl,
      this.startDate,
      this.endDate,
      this.serviceDescription,
      this.providerName,
      this.providerImageUrl,
      this.serviceType,
      this.providerId,
      this.providerRating});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 4.0),
      child: GestureDetector(
        onTap: () {
          // Get.toNamed('/promotedServiceDetailPage', arguments: [
          //   imageUrl,
          //   serviceType,
          //   providerName,
          //   providerImageUrl,
          //   providerId,
          //   providerRating,
          //   serviceDescription,
          //   startDate,
          //   endDate,
          // ]);
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => PromotedServiceDetailPage(),
            ),
          );
        },
        child: PhysicalModel(
          color: Colors.white,
          elevation: 2.0,
          borderRadius: BorderRadius.circular(8),
          child: Container(
            width: 232,
            // margin: EdgeInsets.only(bottom: 12.0),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(8),
            ),
            alignment: Alignment.center,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                // Image container
                Container(
                  height: 132,
                  width: 232,
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                      vertical: 10,
                      horizontal: 10,
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          padding: EdgeInsets.symmetric(
                            horizontal: 5.0,
                            vertical: 3.0,
                          ),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(4.0),
                            color: HexColor('32CD32'),
                          ),
                          child: Text(
                            serviceType,
                            style: GoogleFonts.oxygen(
                              fontSize: 14,
                              fontWeight: FontWeight.w600,
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(8),
                      topRight: Radius.circular(8),
                    ),
                    image: DecorationImage(
                      image: AssetImage(imageUrl),
                      fit: BoxFit.cover,
                      colorFilter: ColorFilter.mode(
                        Colors.black.withOpacity(0.2),
                        BlendMode.darken,
                      ),
                    ),
                    color: Colors.white,
                  ),
                ),
                SizedBox(
                  height: 7,
                ),

                // provider name
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Container(
                          margin: EdgeInsets.only(left: 6.0),
                          child: CircleAvatar(
                            radius: 16,
                            backgroundImage: AssetImage(
                              providerImageUrl,
                            ),
                          ),
                        ),
                        SizedBox(width: 10.0),
                        Text(
                          providerName,
                          style: GoogleFonts.oxygen(
                            fontSize: 14.0,
                            fontWeight: FontWeight.w600,
                            color: HexColor('44493D'),
                          ),
                          maxLines: 2,
                        ),
                      ],
                    ),
                    // SizedBox(height: 5.0),
                    Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 15.0, vertical: 4.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Text(
                            "${providerName.split(' ').first}'s  $serviceType",
                            style: GoogleFonts.oxygen(
                              fontSize: 12,
                              fontWeight: FontWeight.w600,
                              color: Colors.black,
                            ),
                            maxLines: 1,
                            overflow: TextOverflow.ellipsis,
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: 2.0),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 10.0),
                      child: Text(
                        serviceDescription,
                        style: GoogleFonts.oxygen(
                          fontSize: 11,
                          fontWeight: FontWeight.normal,
                          color: Colors.black87,
                        ),
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                      ),
                    ),
                    SizedBox(height: 4.0),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 10.0),
                      child: Row(
                        children: [
                          Text(
                            'End date : ',
                            style: GoogleFonts.oxygen(
                              fontSize: 12,
                              fontWeight: FontWeight.normal,
                              color: Colors.black,
                            ),
                            maxLines: 1,
                            overflow: TextOverflow.ellipsis,
                          ),
                          Text(
                            endDate,
                            style: GoogleFonts.oxygen(
                              fontSize: 12,
                              fontWeight: FontWeight.normal,
                              color: Colors.black,
                            ),
                            maxLines: 1,
                            overflow: TextOverflow.ellipsis,
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
