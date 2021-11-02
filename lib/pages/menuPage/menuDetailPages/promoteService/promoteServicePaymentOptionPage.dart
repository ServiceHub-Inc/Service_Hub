import 'package:eva_icons_flutter/eva_icons_flutter.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:servicehub/pages/menuPage/menuDetailPages/promoteService/promoteSevicePaymentPage.dart';

import '../../../../controllers/paymentOptionsController.dart';

class PromoteServicePaymentOptionPage extends StatelessWidget {
  final paymentOptionController = Get.put(PaymentOptionsController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: HexColor('32CD32'),
        iconTheme: IconThemeData(color: Colors.white),
        elevation: 0,
        title: Text(
          'Payment Options',
          style: GoogleFonts.oxygen(fontSize: 18, color: Colors.white),
        ),
      ),
      body: Obx(() {
        return ListView.builder(
            itemCount: paymentOptionController.paymentOptions.length,
            itemBuilder: (context, index) {
              return Padding(
                padding:
                    const EdgeInsets.symmetric(vertical: 2, horizontal: 15),
                child: GestureDetector(
                  onTap: () {
                    // Get.toNamed('/promoteServicePaymentPage', arguments: [
                    //   paymentOptionController.paymentOptions[index].imageUrl,
                    //   paymentOptionController.paymentOptions[index].optionTitle,
                    // ]);
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => PromoteServicePaymentPage(),
                      ),
                    );
                  },
                  child: Container(
                    width: double.infinity,
                    height: 80,
                    child: Row(
                      children: [
                        Expanded(
                          child: Row(
                            children: [
                              Container(
                                height: 60,
                                width: 60,
                                decoration: BoxDecoration(
                                  color: Colors.grey,
                                  borderRadius: BorderRadius.circular(10),
                                  image: DecorationImage(
                                      fit: BoxFit.cover,
                                      image: AssetImage(
                                        paymentOptionController
                                            .paymentOptions[index].imageUrl,
                                      )),
                                ),
                              ),
                              SizedBox(
                                width: 10,
                              ),
                              Text(
                                  paymentOptionController
                                      .paymentOptions[index].optionTitle,
                                  style: GoogleFonts.oxygen(
                                    fontSize: 14,
                                    color: HexColor('5F5F65'),
                                  )),
                            ],
                          ),
                        ),
                        Icon(
                          EvaIcons.arrowIosForward,
                          color: Colors.grey,
                        )
                      ],
                    ),
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10)),
                  ),
                ),
              );
            });
      }),
    );
  }
}
