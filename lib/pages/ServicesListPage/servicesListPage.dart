import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hexcolor/hexcolor.dart';
import '../ServicesListPage/widgets/serviceList.dart';
import '../ServicesListPage/widgets/searchbar.dart';

class ServiceListPage extends StatelessWidget {
  const ServiceListPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('All Services',
              style: GoogleFonts.oxygen(
                  fontSize: 16,
                  fontWeight: FontWeight.w600,
                  color: Colors.white)),
          automaticallyImplyLeading: false,
          elevation: 0,
          backgroundColor: HexColor('32CD32'),
        ),
        body: Column(
          children: [
            // Search Bar
            SearchBar(),
            ServiceList()
            // service list
          ],
        ));
  }
}
