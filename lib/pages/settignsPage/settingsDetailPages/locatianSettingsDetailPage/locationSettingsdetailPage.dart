import 'package:eva_icons_flutter/eva_icons_flutter.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:list_tile_switch/list_tile_switch.dart';

class LocationSettingsDetailPage extends StatefulWidget {
  const LocationSettingsDetailPage({Key key}) : super(key: key);

  @override
  _LocationSettingsDetailPageState createState() =>
      _LocationSettingsDetailPageState();
}

class _LocationSettingsDetailPageState
    extends State<LocationSettingsDetailPage> {
  List<bool> _switchValues = List.generate(7, (_) => false);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: HexColor('32CD32'),
        iconTheme: IconThemeData(color: Colors.white),
        elevation: 0,
        title: Text(
          'Location',
          style: GoogleFonts.oxygen(fontSize: 18, color: Colors.white),
        ),
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 15),
            child: Container(
              width: double.infinity,
              decoration: BoxDecoration(
                  color: Colors.white, borderRadius: BorderRadius.circular(10)),
              child: Padding(
                padding: const EdgeInsets.symmetric(vertical: 10),
                child: Column(
                  children: [
                    // switch
                    ListTileSwitch(
                      value: _switchValues[2],
                      leading: const Icon(
                        EvaIcons.pinOutline,
                        color: Colors.green,
                      ),
                      onChanged: (value) {
                        setState(() {
                          _switchValues[2] = value;
                        });
                      },
                      switchActiveColor: HexColor('32CD32'),
                      switchType: SwitchType.material,
                      title: const Text('Location',
                          style: TextStyle(fontSize: 20)),
                    ),
                    // write up
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 15),
                      child: Text(
                        'Turn location on or off. For better proximity of service providers turn on location',
                        style: GoogleFonts.oxygen(
                          color: Colors.grey,
                          fontSize: 14,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
