import 'package:eva_icons_flutter/eva_icons_flutter.dart';
import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:rflutter_alert/rflutter_alert.dart';

class SubmitRequestFormSomeone extends StatelessWidget {
  final _formKey = GlobalKey<FormBuilderState>();

  @override
  Widget build(BuildContext context) {
    var alertStyle = AlertStyle(
      isCloseButton: false,
      isOverlayTapDismiss: false,
      descStyle: GoogleFonts.oxygen(fontSize: 13.5, color: HexColor('5F5F65')),
      descTextAlign: TextAlign.center,
      animationDuration: Duration(milliseconds: 400),
      alertBorder: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(15),
      ),
      titleStyle: TextStyle(
          fontSize: 20, color: HexColor('32CD32'), fontWeight: FontWeight.w600),
      alertAlignment: Alignment.centerRight,
    );

    return Container(
        width: double.infinity,
        child: FormBuilder(
            key: _formKey,
            child: Padding(
              padding: EdgeInsets.only(top: 10, bottom: 30),
              child: Column(
                children: [
                  // first four set of forms
                  Container(
                    width: double.infinity,
                    color: Colors.white,
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 15, vertical: 5),
                      child: Column(
                        children: [
                          // name
                          FormBuilderTextField(
                            name: 'name',
                            decoration: InputDecoration(
                              labelText: 'Name of Service Recipient',
                              suffixIcon: Icon(
                                EvaIcons.personOutline,
                                color: HexColor('32CD32'),
                              ),
                            ),

                            // valueTransformer: (text) => num.tryParse(text),
                            validator: FormBuilderValidators.compose([
                              FormBuilderValidators.required(context),
                              FormBuilderValidators.max(context, 70),
                            ]),
                            keyboardType: TextInputType.text,
                            textInputAction: TextInputAction.next,
                          ),

                          // Contact
                          FormBuilderTextField(
                            name: 'Contact',
                            decoration: InputDecoration(
                                labelText: 'Contact of Service Recipient',
                                suffixIcon: Icon(
                                  EvaIcons.phoneCallOutline,
                                  color: HexColor('32CD32'),
                                )),

                            // valueTransformer: (text) => num.tryParse(text),
                            validator: FormBuilderValidators.compose([
                              FormBuilderValidators.required(context),
                              FormBuilderValidators.numeric(context),
                              FormBuilderValidators.max(context, 10),
                            ]),
                            keyboardType: TextInputType.number,
                            textInputAction: TextInputAction.next,
                          ),

                          // Date of service required
                          FormBuilderDateTimePicker(
                            name: 'dateOfServiceRequired',
                            // onChanged: _onChanged,
                            inputType: InputType.date,
                            decoration: InputDecoration(
                                labelText: 'Start Date',
                                suffixIcon: Icon(
                                  EvaIcons.calendarOutline,
                                  color: HexColor('32CD32'),
                                )),
                            initialTime: TimeOfDay(hour: 8, minute: 0),
                          ),

                          // Time of service required
                          FormBuilderDateTimePicker(
                            name: 'timeOfServiceRequired',
                            // onChanged: _onChanged,
                            inputType: InputType.time,
                            decoration: InputDecoration(
                                labelText: 'Start Time',
                                suffixIcon: Icon(
                                  EvaIcons.clockOutline,
                                  color: HexColor('32CD32'),
                                )),
                            initialTime: TimeOfDay(hour: 8, minute: 0),
                          ),

                          // Duration
                          FormBuilderTextField(
                            name: 'duration',
                            decoration: InputDecoration(
                              helperText:
                                  '(Eg. 1-hr, 1-day, 1-week,unknown etc.)',
                              labelText: 'Estimated Duration',
                              suffixIcon: Icon(
                                EvaIcons.clock,
                                color: HexColor('32CD32'),
                              ),
                            ),

                            // valueTransformer: (text) => num.tryParse(text),
                            validator: FormBuilderValidators.compose([
                              FormBuilderValidators.required(context),
                              FormBuilderValidators.max(context, 70),
                            ]),
                            keyboardType: TextInputType.text,
                            textInputAction: TextInputAction.next,
                          ),

                          // description
                          Container(
                            margin: EdgeInsets.only(top: 20.0),
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
                                labelText: 'Briefly describe the service ',
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
                            ),
                          ),

                          // prefere service at provider's location
                          // FormBuilderCheckbox(
                          //   name: 'accept_terms',

                          //   initialValue: false,
                          //   // onChanged: (){},
                          //   title: RichText(
                          //     text: TextSpan(
                          //       children: [
                          //         TextSpan(
                          //           text:
                          //               "I prefer service at the provider’s location",
                          //           style: GoogleFonts.oxygen(
                          //               color: HexColor('5F5F65')),
                          //         ),
                          //       ],
                          //     ),
                          //   ),
                          //   validator: FormBuilderValidators.equal(
                          //     context,
                          //     true,
                          //     errorText:
                          //         'You must accept terms and conditions to continue',
                          //   ),
                          // ),

                          SizedBox(height: 20),
                        ],
                      ),
                    ),
                  ),

                  SizedBox(
                    height: 10,
                  ),

                  // Second set of forms
                  // agreed service charged service
                  Container(
                    color: Colors.white,
                    width: double.infinity,
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 15, vertical: 10),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          // actual form here
                          Container(
                            width: double.infinity,
                            decoration: BoxDecoration(
                                color: Colors.grey[300],
                                borderRadius: BorderRadius.circular(12)),
                            child: Container(
                              width: double.infinity,
                              child: FormBuilderTextField(
                                name: 'AgreedServiceCharge',
                                decoration: InputDecoration(
                                  contentPadding:
                                      EdgeInsets.symmetric(horizontal: 10),
                                  border: InputBorder.none,
                                  labelStyle:
                                      GoogleFonts.oxygen(color: Colors.grey),
                                  labelText: 'Enter agreed service fee',
                                ),

                                // valueTransformer: (text) => num.tryParse(text),
                                validator: FormBuilderValidators.compose([
                                  FormBuilderValidators.required(context),
                                  FormBuilderValidators.max(context, 70),
                                ]),
                                keyboardType: TextInputType.number,
                                textInputAction: TextInputAction.next,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  // i agree to these terms form here
                  Container(
                    width: double.infinity,
                    color: Colors.white,
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 15, vertical: 15),
                      child: Column(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Text(
                                'Agreements',
                                style: TextStyle(
                                  color: Colors.grey[600],
                                  fontSize: 15.0,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                            ],
                          ),
                          // first term
                          FormBuilderCheckbox(
                            name: 'accept_terms',
                            decoration:
                                InputDecoration(border: InputBorder.none),
                            initialValue: false,
                            // onChanged: (){},
                            title: RichText(
                              text: TextSpan(
                                children: [
                                  TextSpan(
                                    text:
                                        'I have agreed on the above service fee with the provider and is not subject to change after sending the service request ',
                                    style: GoogleFonts.oxygen(
                                        color: HexColor('5F5F65')),
                                  ),
                                ],
                              ),
                            ),
                            validator: FormBuilderValidators.equal(
                              context,
                              true,
                              errorText:
                                  'You must accept terms and conditions to continue',
                            ),
                          ),

                          // Second  term
                          FormBuilderCheckbox(
                            name: 'second_terms',
                            decoration:
                                InputDecoration(border: InputBorder.none),
                            initialValue: false,
                            // onChanged: (){},
                            title: RichText(
                              text: TextSpan(
                                children: [
                                  TextSpan(
                                    text: 'I understand and agree to pay ',
                                    style: GoogleFonts.oxygen(
                                        color: HexColor('5F5F65')),
                                  ),
                                  TextSpan(
                                    text: '3% ',
                                    style: GoogleFonts.oxygen(
                                        color: HexColor('32CD32')),
                                  ),
                                  TextSpan(
                                    text:
                                        'of the agreed service fee as platform fee',
                                    style: GoogleFonts.oxygen(
                                        color: HexColor('5F5F65')),
                                  ),
                                ],
                              ),
                            ),
                            validator: FormBuilderValidators.equal(
                              context,
                              true,
                              errorText:
                                  'You must accept terms and conditions to continue',
                            ),
                          ),

                          // third term
                          FormBuilderCheckbox(
                            name: 'second_terms',
                            decoration:
                                InputDecoration(border: InputBorder.none),
                            initialValue: false,
                            // onChanged: (){},
                            title: RichText(
                              text: TextSpan(
                                children: [
                                  TextSpan(
                                    text: 'I understand that ',
                                    style: GoogleFonts.oxygen(
                                        color: HexColor('5F5F65')),
                                  ),
                                  TextSpan(
                                    text: '12.6% ',
                                    style: GoogleFonts.oxygen(
                                        color: HexColor('32CD32')),
                                  ),
                                  TextSpan(
                                    text:
                                        'of the overall service cost must be paid as commitment fee to confirm this request',
                                    style: GoogleFonts.oxygen(
                                        color: HexColor('5F5F65')),
                                  ),
                                ],
                              ),
                            ),
                            validator: FormBuilderValidators.equal(
                              context,
                              true,
                              errorText:
                                  'You must accept terms and conditions to continue',
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),

                  //  Send button
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 15),
                    child: Container(
                      height: 50,
                      width: double.infinity,
                      child: TextButton(
                        onPressed: () {
                          // succuess Alert
                          Alert(
                              style: alertStyle,
                              context: context,
                              title: "SUCCESS",
                              desc:
                                  "Service request has been successfully sent to James Anthony, Please allow up to 5 minutes for the provider to accept the request",
                              image: Image.asset("assets/quizLogo/check.png"),
                              buttons: [
                                DialogButton(
                                  onPressed: () {
                                    Get.offAllNamed('/MyBottomNavigationBar');
                                  },
                                  child: Text(
                                    "Ok",
                                    style: TextStyle(
                                        color: Colors.white, fontSize: 20),
                                  ),
                                )
                              ]).show();
                        },
                        child: Text('SEND',
                            style: GoogleFonts.oxygen(
                                fontSize: 16,
                                fontWeight: FontWeight.w600,
                                color: Colors.white)),
                      ),
                      decoration: BoxDecoration(
                          color: HexColor('32CD32'),
                          borderRadius: BorderRadius.circular(50)),
                    ),
                  ),
                ],
              ),
            )));
  }
}
