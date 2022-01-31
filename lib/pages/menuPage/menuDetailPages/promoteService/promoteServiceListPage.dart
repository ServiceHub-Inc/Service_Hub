import 'package:eva_icons_flutter/eva_icons_flutter.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:provider/provider.dart';
import 'package:servicehub/models/popularServiceModel.dart';
import 'package:servicehub/provider/globals.dart';
import 'package:servicehub/utils/util.dart';
import '../../widgets/promotedServiceListItem.dart';

class PromoteServiceList extends StatefulWidget {

  @override
  _PromoteServiceListState createState() => _PromoteServiceListState();
}

class _PromoteServiceListState extends State<PromoteServiceList> {
  List<PopularServiceDatum> services;

  @override
  void initState() {
    final _def = Provider.of<Globals>(context, listen: false);

    setState(() {
      services = _def.getServices;
    });
    super.initState();
  }

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
              child: ListView.builder(
                  itemCount: services.length,
                  itemBuilder: (context, index) {
                    return PromotedServiceListItem(
                      imageUrl: Utilities.getServiceDisplayImage(services[index].title),
                      serviceTitle: services[index].title,
                    );
                  },
                
              ),
            ),
          )
        ],
      ),
    );
  }
}
