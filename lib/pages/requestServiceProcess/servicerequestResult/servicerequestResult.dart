import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:servicehub/pages/ServicesListPage/widgets/searchbar.dart';
import 'package:servicehub/pages/requestServiceProcess/servicerequestResult/widgets/PageList.dart';
import 'package:servicehub/pages/requestServiceProcess/servicerequestResult/widgets/thePageHeader.dart';

class ServiceRequestResultPage extends StatelessWidget {
  const ServiceRequestResultPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: HexColor('E5E5E5'),
      appBar: AppBar(
        backgroundColor: HexColor('32CD32'),
        iconTheme: IconThemeData(color: Colors.white),
        elevation: 0,
        title: Text(
          'Request Service',
          style: GoogleFonts.oxygen(fontSize: 18, color: Colors.white),
        ),
      ),
      body: Column(
        children: [
          // header here
          ThePageHeader(),
          SizedBox(height: 5),
          SearchBar(),
          SizedBox(height: 5),
          // List here
          PageList()
        ],
      ),
    );
  }
}
