import 'package:eva_icons_flutter/eva_icons_flutter.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:servicehub/models/promotedServiceModel.dart';

class AllPromotedServiceListItem extends StatelessWidget {
  final PromotedServiceDatum service;

  AllPromotedServiceListItem({
    this.service,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 2, horizontal: 10),
      child: Container(
        width: double.infinity,
        decoration: BoxDecoration(
            color: Colors.white, borderRadius: BorderRadius.circular(10)),
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 15),
          child: Column(
            children: [
              // individual or corporate & type of service
              Container(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Icon(
                          EvaIcons.person,
                          size: 12,
                          color: HexColor('32CD32'),
                        ),
                        SizedBox(
                          width: 5,
                        ),
                        Text(
                          'Individual',
                          style: GoogleFonts.oxygen(
                              fontSize: 12, color: HexColor('5F5F65')),
                        ),
                      ],
                    ),
                    Text(
                      'Food & catering service',
                      style: GoogleFonts.oxygen(
                          fontSize: 12, color: HexColor('5F5F65')),
                    )
                  ],
                ),
              ),
              SizedBox(
                height: 10,
              ),
              // image , name , decription , enddate
              Row(
                children: [
                  CircleAvatar(
                    radius: 24,
                    backgroundImage: AssetImage(
                      // service.providerLastname ??
                                  "assets/avatar/avatar.jpg"),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "${service.providerFirstname} ${service.providerLastname}",
                          style: GoogleFonts.oxygen(
                              fontSize: 16,
                              color: HexColor('5F5F65'),
                              fontWeight: FontWeight.bold),
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                        ),
                        Text(
                          service.description,
                          style: GoogleFonts.oxygen(
                            fontSize: 14,
                            color: HexColor('5F5F65'),
                          ),
                          maxLines: 2,
                          overflow: TextOverflow.ellipsis,
                        ),
                        SizedBox(
                          height: 3,
                        ),
                        Row(
                          children: [
                            Text('End Date',
                                style: GoogleFonts.oxygen(
                                    fontSize: 14,
                                    color: HexColor('5F5F65'),
                                    fontWeight: FontWeight.bold)),
                            SizedBox(
                              width: 5,
                            ),
                            Container(
                              child: Padding(
                                padding: const EdgeInsets.symmetric(
                                    vertical: 2, horizontal: 8),
                                child: Text(service.promotionEndDate ?? "Today",
                                    style: GoogleFonts.oxygen(
                                        fontSize: 12,
                                        color: Colors.white,
                                        fontWeight: FontWeight.w600)),
                              ),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(100),
                                color: HexColor('32CD32').withOpacity(0.5),
                              ),
                            )
                          ],
                        )
                      ],
                    ),
                  )
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
