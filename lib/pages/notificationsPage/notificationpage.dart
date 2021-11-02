import 'package:eva_icons_flutter/eva_icons_flutter.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:servicehub/pages/notificationsPage/widgets/acceptedRequestTile.dart';
import 'package:servicehub/pages/notificationsPage/widgets/finishedServiceTile.dart';
import 'package:servicehub/pages/notificationsPage/widgets/sentRequestTile.dart';

class NotificationsPage extends StatelessWidget {
  const NotificationsPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: HexColor('E5E5E5'),
      appBar: AppBar(
        backgroundColor: HexColor('32CD32'),
        iconTheme: IconThemeData(color: Colors.white),
        elevation: 0,
        title: Text(
          'Notifications',
          style: GoogleFonts.oxygen(fontSize: 18, color: Colors.white),
        ),
        actions: [
          // settings icon
          IconButton(
              icon: Icon(
                EvaIcons.settings2,
                color: Colors.white,
                size: 20,
              ),
              onPressed: () {})
        ],
      ),
      // this list view would be turn into listview builder in future,
      // because it contains different notifications, including services and chats notification
      body: ListView(
        children: [
          // notification tile for a provider accepting your service request
          AcceptedRequestTile(),

          // notification tile for client that sent you a service request
          SentRequestTile(),

          // notification tile for client that sent you a service request
          FinishedServiceTile()
        ],
      ),
    );
  }
}
