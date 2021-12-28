import 'package:eva_icons_flutter/eva_icons_flutter.dart';
import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:servicehub/pages/becomeProviderProcess/corporateProviderProcess/uploadCorporateProfilePicture.dart';

class CorporateExperienceInfoForms extends StatelessWidget {
  final _formKey = GlobalKey<FormBuilderState>();

  @override
  Widget build(BuildContext context) {
    // // list for qualification
    // List<String> qualifications = [
    //   "J.H.S/B.E.C.E",
    //   "Vocational/Technical Institute/Certificate",
    //   "Apprenticeship",
    //   "S.HS/S.S.C.E",
    //   "Polytechnic/HND",
    //   "University/Health Training Institution/Diploma",
    //   "University/Bachelor’s degree",
    //   "University/Master’s degree",
    //   "University/PhD",
    //   "Other",
    // ];

    return Container(
      width: double.infinity,
      color: Colors.white,
      child: FormBuilder(
        key: _formKey,
        child: Padding(
          padding: EdgeInsets.only(left: 15, right: 15, top: 10, bottom: 30),
          child: Column(
            children: [
              SizedBox(height: 10),
              Container(
                color: Colors.white,
                child: Padding(
                  padding: const EdgeInsets.only(bottom: 10),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
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
                        validator: (value) => "",
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
                      SizedBox(height: 30.0),
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
                        padding:
                            EdgeInsets.symmetric(horizontal: 12, vertical: 8.0),
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
                          validator: (value) => "",
                          keyboardType: TextInputType.text,
                          textInputAction: TextInputAction.next,
                        ),
                      ),
                      SizedBox(height: 40),

                      GestureDetector(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) =>
                                  UploadCorporateProfilePicture(),
                            ),
                          );
                        },
                        child: Container(
                          height: 50,
                          width: double.infinity,
                          child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  'NEXT',
                                  style: GoogleFonts.oxygen(
                                    fontSize: 16,
                                    fontWeight: FontWeight.w600,
                                    color: Colors.white,
                                  ),
                                ),
                                Icon(EvaIcons.arrowForwardOutline,
                                    color: Colors.white),
                              ]),
                          decoration: BoxDecoration(
                            color: HexColor('32CD32'),
                            borderRadius: BorderRadius.circular(50),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 30,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
