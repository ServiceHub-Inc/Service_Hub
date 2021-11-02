import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:servicehub/pages/HomePage/controller/promotedServiceController.dart';
import 'package:servicehub/pages/HomePage/widgets/promotedSevice/widget/PromotedServiceListItem.dart';

class PromotedServiceList extends StatelessWidget {
  // define you popular list controller here
  final promotedServiceController = Get.put(PromotedServicesController());

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 265,
      width: double.infinity,
      margin: EdgeInsets.only(bottom: 15.0),
      // make list builder listen to the controller
      child: Obx(() {
        return ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: promotedServiceController.promotedServices.length,
          itemBuilder: (context, index) {
            return PromotedServiceListItem(
              imageUrl:
                  promotedServiceController.promotedServices[index].imageUrl,
              serviceType:
                  promotedServiceController.promotedServices[index].serviceType,
              startDate:
                  promotedServiceController.promotedServices[index].startDate,
              endDate:
                  promotedServiceController.promotedServices[index].endDate,
              serviceDescription: promotedServiceController
                  .promotedServices[index].serviceDescription,
              providerName: promotedServiceController
                  .promotedServices[index].providerName,
              providerImageUrl: promotedServiceController
                  .promotedServices[index].providerImageUrl,
              providerId:
                  promotedServiceController.promotedServices[index].providerId,
              providerRating: promotedServiceController
                  .promotedServices[index].providerRating,
            );
          },
        );
      }),
    );
  }
}
