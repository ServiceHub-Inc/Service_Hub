import 'package:eva_icons_flutter/eva_icons_flutter.dart';
import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:hexcolor/hexcolor.dart';

class RefereeInfoForms extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
        width: double.infinity,
        color: Colors.white,
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 15, vertical: 10),
          child: Column(
            children: [
              // RefereeName
              FormBuilderTextField(
                name: 'RefereeName',
                decoration: InputDecoration(
                  labelText: 'Referee name',
                ),

                // valueTransformer: (text) => num.tryParse(text),
                validator: (value) => "",
                keyboardType: TextInputType.text,
                textInputAction: TextInputAction.next,
              ),

              // Referee contact
              FormBuilderTextField(
                name: 'Referee contact',
                decoration: InputDecoration(
                    labelText: 'Referee contact',
                    suffixIcon: Icon(
                      EvaIcons.phoneCallOutline,
                      color: HexColor('32CD32'),
                    )),

                // valueTransformer: (text) => num.tryParse(text),
                validator: (value) => "",
                keyboardType: TextInputType.number,
                textInputAction: TextInputAction.next,
              ),

              // Contact
              FormBuilderTextField(
                name: 'Referee contact',
                decoration: InputDecoration(
                  labelText: 'Relationship to referee',
                ),

                // valueTransformer: (text) => num.tryParse(text),
                validator: (value) => "",
                keyboardType: TextInputType.number,
                textInputAction: TextInputAction.next,
              ),

              SizedBox(height: 40),

              // GestureDetector(
              //   onTap: () {
              //     Get.toNamed("/addExperiencePage_individual");
              //   },
              //   child: Container(
              //     height: 50,
              //     width: double.infinity,
              //     child: Row(
              //       mainAxisAlignment: MainAxisAlignment.center,
              //       children: [
              //         Text('NEXT',
              //             style: GoogleFonts.oxygen(
              //                 fontSize: 16,
              //                 fontWeight: FontWeight.w600,
              //                 color: Colors.white)),
              //         Icon(EvaIcons.arrowForwardOutline,
              //             color: Colors.white),
              //       ],
              //     ),
              //     decoration: BoxDecoration(
              //         color: HexColor('32CD32'),
              //         borderRadius: BorderRadius.circular(50)),
              //   ),
              // ),
              SizedBox(height: 30),
            ],
          ),
        ));
  }
}
