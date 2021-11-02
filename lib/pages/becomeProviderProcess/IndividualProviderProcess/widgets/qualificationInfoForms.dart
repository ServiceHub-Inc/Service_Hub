import 'package:eva_icons_flutter/eva_icons_flutter.dart';
import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:servicehub/controllers/becomeProviderController.dart';

class QualificationInfoForms extends StatelessWidget {
  final becomeProviderController = Get.put(BecomeProviderController());

  @override
  Widget build(BuildContext context) {
    // list for qualification
    List<String> qualifications = [
      "J.H.S/B.E.C.E",
      "Vocational/Technical Institute/Certificate",
      "Apprenticeship",
      "S.HS/S.S.C.E",
      "Polytechnic/HND",
      "University/Health Training Institution/Diploma",
      "University/Bachelor’s degree",
      "University/Master’s degree",
      "University/PhD",
      "Other",
    ];

    return GetBuilder<BecomeProviderController>(
      init: BecomeProviderController(),
      initState: (_) {},
      builder: (_) {
        return Container(
          width: double.infinity,
          color: Colors.white,
          child: Padding(
            padding: EdgeInsets.only(left: 15, right: 15, top: 10, bottom: 30),
            child: Column(
              children: [
                Container(
                  color: Colors.white,
                  child: Padding(
                    padding: const EdgeInsets.only(bottom: 10),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        // Row(
                        //   mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        //   children: [
                        //     // (Your Experience text here)
                        //     Text(
                        //       'Qualification & Experience',
                        //       style: GoogleFonts.oxygen(
                        //           fontSize: 22,
                        //           color: HexColor('44493D'),
                        //           fontWeight: FontWeight.bold),
                        //     ),
                        //     // Text(
                        //     //   'Your Experience',
                        //     //   style: GoogleFonts.oxygen(
                        //     //       color: HexColor(
                        //     //         '5F5F65',
                        //     //       ),
                        //     //       fontSize: 14,
                        //     //       fontWeight: FontWeight.bold),
                        //     // ),
                        //     // (Driving in Chip widget text here)
                        //     Chip(
                        //       label: Text(
                        //         'Driving',
                        //         style:
                        //             GoogleFonts.oxygen(color: Colors.white),
                        //       ),
                        //       backgroundColor:
                        //           HexColor('32CD32').withOpacity(0.5),
                        //     )
                        //   ],
                        // ),
                        // (Description text here)
                        // RichText(
                        //   text: TextSpan(
                        //       text: "You are required to add",
                        //       style: GoogleFonts.oxygen(
                        //         color: HexColor(
                        //           '5F5F65',
                        //         ),
                        //         fontSize: 13,
                        //       ),
                        //       children: [
                        //         TextSpan(
                        //           text: " driving",
                        //           style: GoogleFonts.oxygen(
                        //             color: HexColor(
                        //               '32CD32',
                        //             ),
                        //             fontSize: 13,
                        //           ),
                        //         ),
                        //         TextSpan(
                        //           text:
                        //               " experience at this stage of the becoming a provider.",
                        //           style: GoogleFonts.oxygen(
                        //             color: HexColor(
                        //               '5F5F65',
                        //             ),
                        //             fontSize: 13,
                        //           ),
                        //         )
                        //       ]),
                        // ),
                        // Forms is here

                        // Qualification Experience
                        FormBuilderDropdown(
                          name: 'Qualification',
                          decoration: InputDecoration(
                            labelText: 'Highest Level of Education',
                          ),
                          hint: Text('Education'),
                          allowClear: true,
                          onChanged: (val) {
                            if (val == 'Other') {
                              becomeProviderController
                                  .toggleEnterQualification(true);
                              print(
                                  'other  == ${becomeProviderController.enterQualification}');
                            } else {
                              becomeProviderController
                                  .toggleEnterQualification(false);
                            }
                          },
                          validator: FormBuilderValidators.compose(
                              [FormBuilderValidators.required(context)]),
                          items: qualifications
                              .map((qualifications) => DropdownMenuItem(
                                    value: qualifications,
                                    child: Text('$qualifications'),
                                  ))
                              .toList(),
                        ),
                        SizedBox(height: 15.0),
                        if (becomeProviderController
                            .enterQualification.isTrue) ...[
                          Text('Please state your highest level of education'),
                          Container(
                            margin: EdgeInsets.only(top: 8.0),
                            padding: EdgeInsets.symmetric(
                                horizontal: 8.0, vertical: 1.0),
                            decoration: BoxDecoration(
                              color: Colors.grey[300],
                              borderRadius: BorderRadius.circular(10.0),
                            ),
                            child: FormBuilderTextField(
                              maxLines: 2,
                              name: 'Qualification',
                              decoration: InputDecoration(
                                border: InputBorder.none,
                                labelText: 'Level of Education',
                                // hintText:
                                //     "Briefly highlight your previous experiences and future offerings",
                              ),

                              // valueTransformer: (text) => num.tryParse(text),
                              validator: FormBuilderValidators.compose([
                                FormBuilderValidators.required(context),
                                FormBuilderValidators.max(context, 150),
                              ]),
                              keyboardType: TextInputType.text,
                              textInputAction: TextInputAction.next,
                            ),
                          ),
                        ],

                        // Years of Experience
                        FormBuilderTextField(
                          name: 'yearsOfExperience',
                          decoration: InputDecoration(
                            labelText: 'Years of Experience in Chosen Service',
                            suffixIcon: Icon(
                              EvaIcons.clockOutline,
                              color: HexColor('32CD32'),
                            ),
                          ),

                          // valueTransformer: (text) => num.tryParse(text),
                          validator: FormBuilderValidators.compose([
                            FormBuilderValidators.required(context),
                            FormBuilderValidators.numeric(context),
                            FormBuilderValidators.max(context, 10),
                          ]),
                          keyboardType: TextInputType.number,
                          textInputAction: TextInputAction.next,
                        ),
                        // FormBuilderDropdown(
                        //   name: 'yearsOfExperience',
                        //   decoration: InputDecoration(
                        //     labelText:
                        //         'Years of Experience in Chosen Service',
                        //   ),
                        //   allowClear: true,
                        //   hint: Text('Years of experience'),
                        //   validator: FormBuilderValidators.compose(
                        //       [FormBuilderValidators.required(context)]),
                        //   items: yearsOfExperience
                        //       .map((yearsOfExperience) => DropdownMenuItem(
                        //             value: yearsOfExperience,
                        //             child: Text('$yearsOfExperience'),
                        //           ))
                        //       .toList(),
                        // ),

                        // Brief Description
                        SizedBox(height: 20.0),
                        Text(
                          'Describe your previous experiences and future offerings',
                          style: GoogleFonts.oxygen(
                            color: HexColor('44493D'),
                            height: 2.0,
                          ),
                        ),
                        SizedBox(height: 10.0),

                        Container(
                          margin: EdgeInsets.only(top: 0.0),
                          padding: EdgeInsets.symmetric(
                              horizontal: 12, vertical: 8.0),
                          decoration: BoxDecoration(
                              color: Colors.grey[300],
                              borderRadius: BorderRadius.circular(20.0)),
                          child: FormBuilderTextField(
                            name: 'briefDescription',
                            maxLines: 3,
                            decoration: InputDecoration(
                              helperText: '150 words max',
                              labelText: 'Experience and offer ',
                              border: InputBorder.none,
                            ),
                            // onChanged: _onChanged,
                            // valueTransformer: (text) => num.tryParse(text),
                            validator: FormBuilderValidators.compose([
                              FormBuilderValidators.required(context),
                              // FormBuilderValidators.numeric(context),
                              FormBuilderValidators.max(context, 150),
                            ]),
                            keyboardType: TextInputType.text,
                            textInputAction: TextInputAction.next,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
