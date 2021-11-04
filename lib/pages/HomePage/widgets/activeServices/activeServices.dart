import 'package:flutter/material.dart';
import 'package:servicehub/models/pendingServiceModel.dart';
import 'widgets/activeListItem.dart';

class ActiveServices extends StatelessWidget {
  final List<PendingServiceDatum> services;
  const ActiveServices({Key key, this.services}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    if (services.isEmpty) {
      return ActiveListItem(isEmpty: true);
    } else {
      return Container(
        width: double.infinity,
        height: 110,
        padding: EdgeInsets.symmetric(vertical: 4.0),
        child: ListView.builder(
          itemCount: services.length,
          scrollDirection: Axis.horizontal,
          itemBuilder: (context, index) {
            return ActiveListItem(isEmpty: false, service: services[index]);
          },
        ),
      );
    }
  }
}
