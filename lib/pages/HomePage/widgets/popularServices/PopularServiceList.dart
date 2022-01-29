import 'package:flutter/material.dart';
import 'package:servicehub/models/popularServiceModel.dart';
import 'widgets/PopularServiceListItem.dart';

class PopularServiceList extends StatelessWidget {
  final List<PopularServiceDatum> services;

  const PopularServiceList({Key key, this.services}) : super(key: key);
  // define you popular list controller here
  // final popularServicesController = Get.put(PopularServiceController());

  @override
  Widget build(BuildContext context) {
    return Container(
        height: 120,
        width: double.infinity,
        // make list builder listen to the controller
        child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: services.length ?? 0,
          itemBuilder: (context, index) {
            return PopularServiceListItem(service: services[index]);
          },
        ),);
  }
}
