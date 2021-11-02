import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:servicehub/pages/ServicesListPage/controller/servicesController.dart';
import 'widgets/PopularServiceListItem.dart';

class PopularServiceList extends StatelessWidget {
  // define you popular list controller here
  // final popularServicesController = Get.put(PopularServiceController());
  final popularServicesController = Get.put(ServicesController());

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 120,
      width: double.infinity,
      // make list builder listen to the controller
      child: Obx(() {
        return ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: popularServicesController.services.length,
          itemBuilder: (context, index) {
            return PopularServiceListItem(
              imageUrl: popularServicesController.services[index].imageUrl,
              pricerange: popularServicesController.services[index].priceRange
                  .toString(),
              serviceTitle:
                  popularServicesController.services[index].serviceTitle,
              serviceDescription:
                  popularServicesController.services[index].serviceDescription,
            );
          },
        );
      }),
    );
  }
}
