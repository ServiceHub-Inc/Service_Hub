import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:servicehub/pages/ServicesListPage/controller/servicesController.dart';
import 'package:servicehub/pages/ServicesListPage/widgets/serviceListItem.dart';

class ServiceList extends StatelessWidget {
  // Create Instance of the controller
  final servicesController = Get.put(ServicesController());

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        width: double.infinity,
        child: Obx(() {
          return ListView.builder(
            itemCount: servicesController.services.length,
            itemBuilder: (context, index) {
              return ServicelistItem(
                imageUrl: servicesController.services[index].imageUrl,
                priceRange:
                    servicesController.services[index].priceRange.toString(),
                serviceTitle: servicesController.services[index].serviceTitle,
                serviceDescription:
                    servicesController.services[index].serviceDescription,
              );
            },
          );
        }),
      ),
    );
  }
}
