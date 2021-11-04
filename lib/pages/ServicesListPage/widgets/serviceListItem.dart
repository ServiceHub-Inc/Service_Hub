import 'package:flutter/material.dart';
import 'package:getwidget/components/avatar/gf_avatar.dart';
import 'package:getwidget/shape/gf_avatar_shape.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:get/get.dart';
import 'package:servicehub/pages/ServiceDetailPage/ServiceDetailPage.dart';

class ServicelistItem extends StatelessWidget {
  final String imageUrl;
  final String serviceTitle;
  final String priceRange;
  final String serviceDescription;

  ServicelistItem(
      {this.imageUrl,
      this.priceRange,
      this.serviceDescription,
      this.serviceTitle});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 2),
      child: Container(
        color: Colors.white,
        child: ListTile(
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
          leading: GFAvatar(
              radius: 30,
              backgroundImage: AssetImage(imageUrl),
              shape: GFAvatarShape.standard),
          title: Text(serviceTitle,
              style: GoogleFonts.oxygen(
                  fontSize: 14,
                  color: HexColor('44493D'),
                  fontWeight: FontWeight.w600)),
          subtitle: Row(
            children: [
              Text('From ',
                  style: GoogleFonts.oxygen(
                    fontSize: 12,
                    color: HexColor('B8B3B3'),
                  )),
              SizedBox(
                width: 5,
              ),
              Text(
                '¢$priceRange',
                style: GoogleFonts.oxygen(
                  fontSize: 12,
                  color: HexColor('32CD32'),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
