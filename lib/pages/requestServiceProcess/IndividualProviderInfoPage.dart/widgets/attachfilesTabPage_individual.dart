import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hexcolor/hexcolor.dart';

import 'attachedfiles_individual/attachedBrandingImagesPage_individual.dart';
import 'attachedfiles_individual/attachedDocumentsPage_individual.dart';
import 'attachedfiles_individual/attachedImageDocumentsPage_Individual.dart';

// create a stateful home widget and link it to the main.dart

class AttachdFilesTabPageIndividual extends StatefulWidget {
  AttachdFilesTabPageIndividual({Key key}) : super(key: key);

  @override
  _AttachdFilesTabPageIndividualState createState() =>
      _AttachdFilesTabPageIndividualState();
}

class _AttachdFilesTabPageIndividualState
    extends State<AttachdFilesTabPageIndividual>
    with SingleTickerProviderStateMixin {
  // This is where you define the tab(camera, chat, status, calss)
  TabController _tabController;
  @override
  void initState() {
    super.initState();
    _tabController = new TabController(length: 3, vsync: this, initialIndex: 0);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: new AppBar(
        backgroundColor: HexColor('32CD32'),
        iconTheme: IconThemeData(color: Colors.white),
        elevation: 0,
        title: Text(
          'James Anthony',
          style:
              GoogleFonts.oxygen(fontSize: 18, color: Colors.white), // 5F5F65
        ),
        // The tab bar itself
        bottom: new TabBar(
            controller: _tabController,
            indicatorColor: Colors.white,
            unselectedLabelColor: Colors.white70,
            labelStyle: GoogleFonts.oxygen(fontWeight: FontWeight.w600),
            tabs: [
              new Tab(
                text: "DOCUMENTS",
              ),
              new Tab(
                text: "IMAGE DOCS",
              ),
              new Tab(
                text: "BRANDING IMAGES",
              )
            ]),
      ),
      body: new TabBarView(
        controller: _tabController,
        children: <Widget>[
          new AttachedDocumentsPageIndividual(),
          new AttachedImageDocumentsPageIndividual(),
          new AttachedBrandingImagesPageIndividual(),
        ],
      ),
    );
  }
}
