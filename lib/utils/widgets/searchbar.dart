import 'package:eva_icons_flutter/eva_icons_flutter.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SearchBar extends StatelessWidget {
  final String label;
  const SearchBar({Key key, this.label}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // var width = MediaQuery.of(context).size.width;

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
      child: Container(
        width: double.infinity,
        // height: 50,
        child: TextField(
          decoration: InputDecoration(
              hintText: "Search ${label ?? 'Service'}",
              hintStyle: GoogleFonts.oxygen(fontSize: 14),
              border: InputBorder.none,
              prefixIcon: IconButton(
                icon: Icon(
                  EvaIcons.search,
                  size: 18,
                ),
                onPressed: () {},
              )),
        ),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(23),
          color: Colors.white,
        ),
      ),
    );
  }
}
