import 'package:eva_icons_flutter/eva_icons_flutter.dart';
import 'package:flutter/material.dart';
import 'package:getwidget/components/avatar/gf_avatar.dart';
import 'package:getwidget/shape/gf_avatar_shape.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:servicehub/pages/menuPage/menuDetailPages/promoteService/promoteServiceFormPage.dart';

class PromotedServiceListItem extends StatelessWidget {
  final String imageUrl;
  final String serviceTitle;

  PromotedServiceListItem({this.imageUrl, this.serviceTitle});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 2),
      child: Container(
        color: Colors.white,
        child: ListTile(
          contentPadding: EdgeInsets.symmetric(vertical: 5, horizontal: 15),
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => PromoteServiceFormPage(
                  image: imageUrl,
                  title: serviceTitle,
                ),
              ),
            );
          },
          leading: GFAvatar(
              radius: 25,
              backgroundImage: AssetImage(imageUrl),
              shape: GFAvatarShape.standard),
          title: Text(serviceTitle,
              style: GoogleFonts.oxygen(
                  fontSize: 14,
                  color: HexColor('44493D'),
                  fontWeight: FontWeight.w600)),
          trailing: Icon(EvaIcons.arrowIosForward),
        ),
      ),
    );
  }
}
