import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:servicehub/models/promotedServiceModel.dart';
import 'package:servicehub/pages/HomePage/widgets/promotedSevice/widget/PromotedServiceListItem.dart';

class PromotedServiceList extends StatelessWidget {
  final List<PromotedServiceDatum> promotedServices;

  PromotedServiceList({Key key, this.promotedServices}) : super(key: key);

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
          itemCount: promotedServices.length,
          itemBuilder: (context, index) {
            return PromotedServiceListItem(
              imageUrl: promotedServices[index].banner,
              serviceType: promotedServices[index].title,
              startDate: promotedServices[index].promotionStartDate,
              endDate: promotedServices[index].promotionEndDate,
              serviceDescription: promotedServices[index].description,
              providerName: promotedServices[index].providerFirstname +
                  promotedServices[index].providerLastname,
              providerImageUrl: promotedServices[index].providerPhoto,
              providerId: promotedServices[index].providerId,
              providerRating: 4,
            );
          },
        );
      }),
    );
  }
}
