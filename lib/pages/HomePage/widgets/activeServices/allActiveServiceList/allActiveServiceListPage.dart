import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:servicehub/utils/widgets/searchbar.dart';

import 'widgets/allActiveServiceListItem.dart';

class AllActiveServicesPage extends StatelessWidget {
  const AllActiveServicesPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
        title: Text('All Active Services',
            style: GoogleFonts.oxygen(
                fontSize: 16,
                fontWeight: FontWeight.w600,
                color: Colors.white)),
        elevation: 0,
        backgroundColor: HexColor('32CD32'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 8.0),
              child: SearchBar(),
            ),
            Expanded(
              child: ListView.builder(
                itemCount: 2,
                itemBuilder: (contex, index) {
                  return AllActiveServiceListItem();
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
