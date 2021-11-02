import 'package:auto_size_text/auto_size_text.dart';
import 'package:eva_icons_flutter/eva_icons_flutter.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:servicehub/pages/requestServiceProcess/selectRequestLocation/locationMap.dart';

class ThePageHeader extends StatelessWidget {
  const ThePageHeader({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    return Container(
      color: Colors.white,
      height: 50,
      width: double.infinity,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          // Chip here
          Container(
            width: width * 0.3,
            child: Chip(
              backgroundColor: HexColor('32CD32').withOpacity(0.3),
              label: Text(
                'Driving',
                style: GoogleFonts.oxygen(color: HexColor('32CD32')),
              ),
            ),
          ),
          // filtered by current loction or chosen location, text here
          GestureDetector(
            onTap: () {
              // function to sort here
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => LocationMapScreen(),
                ),
              );
            },
            child: Row(
              children: [
                Icon(Icons.location_pin, color: HexColor('32CD32')),
                Container(
                  width: width * 0.3,
                  child: AutoSizeText(
                    'Current Loaction ',
                    style: GoogleFonts.oxygen(
                      color: HexColor('5F5F65'),
                    ),
                    overflow: TextOverflow.ellipsis,
                    maxLines: 1,
                  ),
                ),
              ],
            ),
          ),

          Row(
            children: [
              Icon(EvaIcons.arrowDownOutline, color: HexColor('32CD32')),
              Container(
                width: width * 0.1,
                child: AutoSizeText(
                  'All',
                  style: GoogleFonts.oxygen(
                    color: HexColor('5F5F65'),
                  ),
                  overflow: TextOverflow.ellipsis,
                  maxLines: 1,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
