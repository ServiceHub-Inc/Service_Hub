import 'dart:io';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:image_picker_widget/enum/image_picker_widget_shape.dart';
import 'package:image_picker_widget/image_picker_widget.dart';
import 'package:servicehub/pages/HomePage/widgets/BottomNavigationBar.dart';
import 'package:servicehub/pages/becomeProviderProcess/IndividualProviderProcess/widgets/personalInfoForms.dart';
import 'package:servicehub/pages/becomeProviderProcess/IndividualProviderProcess/widgets/personalInfoFormsHeader.dart';
import 'package:servicehub/pages/becomeProviderProcess/IndividualProviderProcess/widgets/refereeInfoForms.dart';
import 'package:servicehub/pages/becomeProviderProcess/addExperiencePage_individual/addExperience_individual.dart';
import 'widgets/qualificationInfoForms.dart';

class IndividualInfoFormsPage extends StatefulWidget {
  @override
  _IndividualInfoFormsPageState createState() =>
      _IndividualInfoFormsPageState();
}

class _IndividualInfoFormsPageState extends State<IndividualInfoFormsPage> {
  PageController _controller = PageController();

  int _currentPage = 0;

  @override
  Widget build(BuildContext context) {
    var appBar = AppBar(
      title: Text(
        'Become Providers',
        style: GoogleFonts.oxygen(fontSize: 16, color: Colors.white),
      ),
      elevation: 0,
      iconTheme: IconThemeData(color: Colors.white),
      backgroundColor: HexColor('32CD32'),
      leading: IconButton(
        icon: Icon(
          Icons.arrow_back,
          color: Colors.white,
        ),
        onPressed: () => MyBottomNaigationBar(),
      ),
    );
    return Scaffold(
      backgroundColor: HexColor('F6F6F6'),
      appBar: appBar,
      resizeToAvoidBottomInset: true,
      body: Container(
        height:
            MediaQuery.of(context).size.height - appBar.preferredSize.height,
        margin: EdgeInsets.only(bottom: 0),
        child: Column(
          children: [
            Expanded(
              child: PageView(
                controller: _controller,
                physics: NeverScrollableScrollPhysics(),
                onPageChanged: (page) {
                  setState(() {
                    _currentPage = page;
                  });
                },
                children: [
                  Column(
                    children: [
                      //Header
                      IndividualInfoFormsHeader(
                          heading: 'Personal Information', step: '1'),
                      // Forms
                      IndividualInfoForms(),
                      // SizedBox(
                      //   height: 25,
                      // ),

                      Expanded(
                        child: Align(
                          alignment: FractionalOffset.bottomRight,
                          child: Padding(
                            padding: EdgeInsets.only(right: 20, bottom: 10),
                            child: FloatingActionButton(
                              backgroundColor: Colors.white,
                              child: Icon(
                                Icons.arrow_forward,
                                color: HexColor('32CD32'),
                              ),
                              onPressed: () {
                                _controller.jumpToPage(_currentPage + 1);
                              },
                            ),
                          ),
                        ),
                      ),
                      // SizedBox(height: 30),
                    ],
                  ),
                  Column(
                    children: [
                      IndividualInfoFormsHeader(
                        heading: 'Qualification & Experience',
                        step: '2',
                      ),
                      QualificationInfoForms(),
                      SizedBox(
                        height: 40,
                      ),
                      Expanded(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Align(
                              alignment: FractionalOffset.bottomLeft,
                              child: Padding(
                                padding: EdgeInsets.only(left: 20, bottom: 10),
                                child: FloatingActionButton(
                                  backgroundColor: HexColor('32CD32'),
                                  child: Icon(
                                    Icons.arrow_back,
                                    color: Colors.white,
                                  ),
                                  onPressed: () {
                                    _controller.jumpToPage(_currentPage - 1);
                                  },
                                ),
                              ),
                            ),
                            Align(
                              alignment: FractionalOffset.bottomRight,
                              child: Padding(
                                padding: EdgeInsets.only(right: 20, bottom: 10),
                                child: FloatingActionButton(
                                  backgroundColor: Colors.white,
                                  child: Icon(
                                    Icons.arrow_forward,
                                    color: HexColor('32CD32'),
                                  ),
                                  onPressed: () {
                                    _controller.jumpToPage(_currentPage + 1);
                                  },
                                ),
                              ),
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                  Column(
                    children: [
                      IndividualInfoFormsHeader(
                          heading: 'Referee Information', step: '3'),
                      RefereeInfoForms(),
                      SizedBox(
                        height: 40,
                      ),
                      Expanded(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Align(
                              alignment: FractionalOffset.bottomLeft,
                              child: Padding(
                                padding: EdgeInsets.only(left: 20, bottom: 10),
                                child: FloatingActionButton(
                                  backgroundColor: HexColor('32CD32'),
                                  child: Icon(
                                    Icons.arrow_back,
                                    color: Colors.white,
                                  ),
                                  onPressed: () {
                                    _controller.jumpToPage(_currentPage - 1);
                                  },
                                ),
                              ),
                            ),
                            Align(
                              alignment: FractionalOffset.bottomRight,
                              child: Padding(
                                padding: EdgeInsets.only(right: 20, bottom: 10),
                                child: FloatingActionButton(
                                  backgroundColor: Colors.white,
                                  child: Icon(
                                    Icons.arrow_forward,
                                    color: HexColor('32CD32'),
                                  ),
                                  onPressed: () {
                                    _controller.jumpToPage(_currentPage + 1);
                                  },
                                ),
                              ),
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      IndividualInfoFormsHeader(
                        heading: 'Upload Picture',
                        step: '4',
                      ),
                      // header

                      // description
                      Padding(
                        padding: const EdgeInsets.symmetric(
                          horizontal: 16.0,
                          vertical: 6.0,
                        ),
                        child: Text(
                          'Upload a Profile Picture',
                          style: GoogleFonts.oxygen(
                            fontSize: 14,
                            color: HexColor('A7A7A7'),
                          ),
                        ),
                      ),

                      SizedBox(
                        height: 40,
                      ),

                      // Upload Picture here

                      Center(
                        child: ImagePickerWidget(
                          diameter: 160,
                          initialImage:
                              "https://strattonapps.com/wp-content/uploads/2020/02/flutter-logo-5086DD11C5-seeklogo.com_.png",
                          shape: ImagePickerWidgetShape.circle,
                          isEditable: true,
                          onChange: (File file) {
                            print("I changed the file to: ${file.path}");
                          },
                        ),
                      ),
                      SizedBox(height: 25),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          SizedBox(width: 20),
                          // save and continue button
                          Expanded(
                            child: GestureDetector(
                              onTap: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) =>
                                        AddExperiencePageIndividual(),
                                  ),
                                );
                              },
                              child: Container(
                                height: 50,
                                width: 160,
                                margin: EdgeInsets.only(right: 10.0),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Text(
                                      'SAVE AND CONTINUE',
                                      style: GoogleFonts.oxygen(
                                        fontSize: 16,
                                        fontWeight: FontWeight.w600,
                                        color: Colors.white,
                                      ),
                                    ),
                                  ],
                                ),
                                decoration: BoxDecoration(
                                  color: HexColor('32CD32'),
                                  borderRadius: BorderRadius.circular(50),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 20),
                      Padding(
                        padding: EdgeInsets.only(left: 20, bottom: 0),
                        child: FloatingActionButton(
                          backgroundColor: Colors.white,
                          child: Icon(
                            Icons.arrow_back,
                            color: HexColor('32CD32'),
                          ),
                          onPressed: () {
                            _controller.jumpToPage(_currentPage - 1);
                          },
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            // SizedBox(height: 10.0),
          ],
        ),
      ),
    );
  }
}
