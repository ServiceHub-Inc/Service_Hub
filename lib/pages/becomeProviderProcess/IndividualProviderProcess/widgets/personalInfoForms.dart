import 'package:eva_icons_flutter/eva_icons_flutter.dart';
import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:servicehub/pages/requestServiceProcess/selectRequestLocation/locationMap.dart';

class IndividualInfoForms extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // List<String> languages = ['English', 'French', 'Twi', 'Ga'];

    List<String> iDTypes = [
      "Voter's ID",
      "Driver's License",
      'National ID Card',
      'Passport',
    ];

    return Container(
        width: double.infinity,
        color: Colors.white,
        child: Padding(
          padding: EdgeInsets.only(left: 15, right: 15, top: 10, bottom: 15),
          child: Column(
            children: [
              // Last Name
              FormBuilderTextField(
                name: 'Last Name',
                decoration: InputDecoration(
                  labelText: 'Last Name',
                ),

                // valueTransformer: (text) => num.tryParse(text),
                validator: (value) => "",
                keyboardType: TextInputType.text,
                textInputAction: TextInputAction.next,
              ),

              // Fist Name
              FormBuilderTextField(
                name: 'First Name',
                decoration: InputDecoration(
                  labelText: 'First Name',
                ),

                // valueTransformer: (text) => num.tryParse(text),
                validator: (value) => "",
                keyboardType: TextInputType.text,
                textInputAction: TextInputAction.next,
              ),

              // Date of Birth
              FormBuilderDateTimePicker(
                name: 'date',
                // onChanged: _onChanged,
                inputType: InputType.date,
                decoration: InputDecoration(
                    labelText: 'Date Of Birth',
                    suffixIcon: Icon(
                      EvaIcons.calendarOutline,
                      color: HexColor('32CD32'),
                    )),
                initialTime: TimeOfDay(hour: 8, minute: 0),
              ),

              // Language spoken
              FormBuilderTextField(
                name: 'LanguageSpoken',
                decoration: InputDecoration(
                  labelText: 'Language Spoken',
                  helperText: '(List at most four languages)',
                  helperStyle: TextStyle(
                    color: HexColor('32CD32'),
                  ),
                ),

                // valueTransformer: (text) => num.tryParse(text),
                validator: (value) => "",
                keyboardType: TextInputType.text,
                textInputAction: TextInputAction.next,
              ),

              // FormBuilderDropdown(
              //   name: 'LanguageSpoken',
              //   decoration: InputDecoration(
              //     labelText: 'Language Spoken',
              //     // helperText: 'List at most four languages',
              //   ),
              //   // initialValue: 'Male',
              //   allowClear: true,
              //   // hint: Text('Language Spoken'),
              //   validator: FormBuilderValidators.compose(
              //       [FormBuilderValidators.required(context)]),
              //   items: ['English', 'Twi', 'French', 'Ga']
              //       .map(
              //         (language) => DropdownMenuItem(
              //           value: language,
              //           child: Text('$language'),
              //         ),
              //       )
              //       .toList(),
              // ),

              // Customerservice skills
              FormBuilderTextField(
                name: 'customer_service_skills',
                decoration: InputDecoration(
                  labelText: 'Customer Service Skills',
                  helperText:
                      '(List top three customer service skills you possess)',
                  helperStyle: TextStyle(
                    color: HexColor('32CD32'),
                  ),
                ),

                // valueTransformer: (text) => num.tryParse(text),
                validator: (value) => "",
                keyboardType: TextInputType.text,
                textInputAction: TextInputAction.next,
              ),

              // Language Select
              FormBuilderDropdown(
                name: 'ID Type',
                decoration: InputDecoration(
                  labelText: 'ID Type',
                ),
                // initialValue: 'Ecowas Card',
                allowClear: true,
                validator: (value) => "",
                items: iDTypes
                    .map((iDType) => DropdownMenuItem(
                          value: iDType,
                          child: Text('$iDType'),
                        ))
                    .toList(),
              ),

              // Valid ID Number
              FormBuilderTextField(
                name: 'Valid ID Number',
                decoration: InputDecoration(
                  labelText: 'Valid ID Number',
                  suffixIcon: Icon(
                    EvaIcons.creditCardOutline,
                    color: HexColor('32CD32'),
                  ),
                ),

                // valueTransformer: (text) => num.tryParse(text),
                validator: (value) => "",
                keyboardType: TextInputType.number,
                textInputAction: TextInputAction.next,
              ),

              // Location
              FormBuilderTextField(
                name: 'Location',
                decoration: InputDecoration(
                    labelText: 'Location',
                    helperText:
                        '(The usual location from which your services are accessible)',
                    helperStyle: TextStyle(
                      color: HexColor('32CD32'),
                    ),
                    suffixIcon: IconButton(
                      icon: Icon(
                        EvaIcons.navigation2Outline,
                        color: HexColor('32CD32'),
                      ),
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => LocationMapScreen(),
                          ),
                        );
                      },
                    )),

                // valueTransformer: (text) => num.tryParse(text),
                validator: (value) => "",
                keyboardType: TextInputType.text,
                textInputAction: TextInputAction.next,
              ),
              SizedBox(height: 10),
              // first set of froms
            ],
          ),
        ));
  }
}
