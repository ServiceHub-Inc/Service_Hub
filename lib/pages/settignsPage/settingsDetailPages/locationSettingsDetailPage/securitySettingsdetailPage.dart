import 'package:eva_icons_flutter/eva_icons_flutter.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:list_tile_switch/list_tile_switch.dart';

class SecuritySettingsDetailPage extends StatefulWidget {
  const SecuritySettingsDetailPage({Key key}) : super(key: key);

  @override
  _SecuritySettingsDetailPageState createState() =>
      _SecuritySettingsDetailPageState();
}

class _SecuritySettingsDetailPageState
    extends State<SecuritySettingsDetailPage> {
  List<bool> _switchValues = List.generate(7, (_) => false);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: HexColor('32CD32'),
        iconTheme: IconThemeData(color: Colors.white),
        elevation: 0,
        title: Text(
          'Security',
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
                      title: const Text('Security',
                          style: TextStyle(fontSize: 20)),
                    ),
                    // write up
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 15),
                      child: Text(
                        'We will send an authentication code via SMS, email or ServiceHub Notication when using an unrecognized device or browser to login',
                        style: GoogleFonts.oxygen(
                          color: Colors.grey,
                          fontSize: 14,
                        ),
                      ),
                    ),

                    // device shows her
                    Padding(
                      padding: const EdgeInsets.symmetric(
                          vertical: 10, horizontal: 5),
                      child: Container(
                        width: double.infinity,
                        child: Padding(
                          padding: const EdgeInsets.symmetric(
                              vertical: 10, horizontal: 10),
                          child: Row(
                            children: [
                              Icon(
                                EvaIcons.smartphoneOutline,
                                color: Colors.green,
                              ),
                              SizedBox(
                                width: 10,
                              ),
                              Expanded(
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      'This device (SM-A54928)',
                                      style: GoogleFonts.oxygen(
                                          color: Colors.green,
                                          fontSize: 16,
                                          fontWeight: FontWeight.bold),
                                      maxLines: 1,
                                      overflow: TextOverflow.ellipsis,
                                    ),
                                    Text(
                                      'This device (SM-A54928)',
                                      style: GoogleFonts.oxygen(
                                        color: Colors.black54,
                                        fontSize: 12,
                                      ),
                                      maxLines: 1,
                                      overflow: TextOverflow.ellipsis,
                                    ),
                                    Row(
                                      children: [
                                        Text(
                                          'Accra Ghana',
                                          style: GoogleFonts.oxygen(
                                            color: Colors.black54,
                                            fontSize: 12,
                                          ),
                                          maxLines: 1,
                                          overflow: TextOverflow.ellipsis,
                                        ),
                                        SizedBox(
                                          width: 5,
                                        ),
                                        Text(
                                          '(Active now)',
                                          style: GoogleFonts.oxygen(
                                              color: Colors.green,
                                              fontSize: 12,
                                              fontWeight: FontWeight.bold),
                                          maxLines: 1,
                                          overflow: TextOverflow.ellipsis,
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              )
                            ],
                          ),
                        ),
                        decoration: BoxDecoration(
                            color: Colors.green.withOpacity(0.3),
                            borderRadius: BorderRadius.circular(10)),
                      ),
                    )
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
