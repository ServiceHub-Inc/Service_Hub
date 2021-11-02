import 'package:eva_icons_flutter/eva_icons_flutter.dart';
import 'package:flutter/material.dart';
import 'package:servicehub/pages/notificationsPage/notificationspage.dart';

class NotificationIcon extends StatelessWidget {
  const NotificationIcon({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(children: [
      IconButton(
        iconSize: 24,
        icon: Icon(
          EvaIcons.bell,
          color: Colors.white,
        ),
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => NotificationsPage(),
            ),
          );
        },
      ),
      // red dot
      Positioned(
        top: 15,
        left: 25,
        child: Container(
          height: 8,
          width: 8,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(100), color: Colors.red),
        ),
      )
    ]);
  }
}
