import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hexcolor/hexcolor.dart';
import 'attachedfiles_corporate/attachedBrandingImagesPage_corporate.dart';
import 'attachedfiles_corporate/attachedDocumentsPage_corporate.dart';
import 'attachedfiles_corporate/attachedImageDocumentsPage_corporate.dart';

// create a stateful home widget and link it to the main.dart

class AttachdFilesTabPageCorporate extends StatefulWidget {
  AttachdFilesTabPageCorporate({Key key}) : super(key: key);

  @override
  _AttachdFilesTabPageCorporateState createState() =>
      _AttachdFilesTabPageCorporateState();
}

class _AttachdFilesTabPageCorporateState
    extends State<AttachdFilesTabPageCorporate>
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
          'Zack Cleaning Services',
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
                text: "BRANDING",
              )
            ]),
      ),
      body: new TabBarView(
        controller: _tabController,
        children: <Widget>[
          new AttachedDocumentsPageCorporate(),
          new AttachedImageDocumentsPageCorporate(),
          new AttachedBrandingImagePageCorporate(),
        ],
      ),
    );
  }
}
