import 'package:eva_icons_flutter/eva_icons_flutter.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:servicehub/pages/ServicesListPage/controller/servicesController.dart';
import '../../widgets/promotedServiceListItem.dart';

class PromoteServiceList extends StatefulWidget {
  const PromoteServiceList({Key key}) : super(key: key);

  @override
  _PromoteServiceListState createState() => _PromoteServiceListState();
}

class _PromoteServiceListState extends State<PromoteServiceList> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: HexColor('32CD32'),
        iconTheme: IconThemeData(color: Colors.white),
        elevation: 0,
        title: Text(
          'Select Service',
          style: GoogleFonts.oxygen(fontSize: 18, color: Colors.white),
        ),
      ),
      body: Column(
        children: [
          // icon with text here
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
            child: Row(
              children: [
                Icon(
                  EvaIcons.briefcaseOutline,
                  color: HexColor('32CD32'),
                  size: 24,
                ),
                SizedBox(
                  width: 10,
                ),
                Text('Select service category',
                    style: GoogleFonts.oxygen(
                      color: HexColor('44493D'),
                      fontSize: 14,
                      fontWeight: FontWeight.w600,
                    )),
              ],
            ),
          ),
          SizedBox(
            height: 12,
          ),
          Expanded(
            child: Container(
              width: double.infinity,
              child: GetX<ServicesController>(builder: (controller) {
                return ListView.builder(
                  itemCount: controller.services.length,
                  itemBuilder: (context, index) {
                    return PromotedServiceListItem(
                      imageUrl: controller.services[index].imageUrl,
                      serviceTitle: controller.services[index].serviceTitle,
                    );
                  },
                );
              }),
            ),
          )
        ],
      ),
    );
  }
}
