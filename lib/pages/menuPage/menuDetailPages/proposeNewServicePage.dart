import 'package:eva_icons_flutter/eva_icons_flutter.dart';
import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:rflutter_alert/rflutter_alert.dart';
import 'package:servicehub/controllers/becomeProviderController.dart';
import 'package:servicehub/pages/HomePage/widgets/BottomNavigationBar.dart';

class ProposeNewServicePage extends StatelessWidget {
  final _formKey = GlobalKey<FormBuilderState>();
  final becomeProviderController = Get.put(BecomeProviderController());

  @override
  Widget build(BuildContext context) {
    // alert styling
    var alertStyle = AlertStyle(
      isCloseButton: false,
      isOverlayTapDismiss: false,
      descStyle: GoogleFonts.oxygen(fontSize: 14, color: HexColor('5F5F65')),
      descTextAlign: TextAlign.center,
      animationDuration: Duration(milliseconds: 400),
      alertBorder: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(15),
      ),
      titleStyle: TextStyle(
          fontSize: 20, color: HexColor('32CD32'), fontWeight: FontWeight.w600),
      alertAlignment: Alignment.centerRight,
    );

    return GetBuilder<BecomeProviderController>(
      init: BecomeProviderController(),
      initState: (_) {},
      builder: (_) {
        return Scaffold(
          appBar: AppBar(
            backgroundColor: HexColor('32CD32'),
            iconTheme: IconThemeData(color: Colors.white),
            elevation: 0,
            title: Text(
              'Propose new service',
              style: GoogleFonts.oxygen(fontSize: 18, color: Colors.white),
            ),
          ),
          body: SingleChildScrollView(
            child: SafeArea(
              child: Padding(
                padding: const EdgeInsets.symmetric(vertical: 15),
                child: Column(
                  children: [
                    // icon with text here
                    Padding(
                      padding: const EdgeInsets.only(left: 15),
                      child: Row(
                        children: [
                          Icon(
                            EvaIcons.personDone,
                            color: HexColor('32CD32'),
                            size: 24,
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Text(
                            'Propose Service',
                            style: GoogleFonts.oxygen(
                              color: HexColor('32CD32'),
                              fontSize: 14,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 12,
                    ),

                    // questions and answers
                    Container(
                      color: Colors.white,
                      width: double.infinity,
                      child: FormBuilder(
                        key: _formKey,
                        child: Padding(
                          padding: const EdgeInsets.symmetric(
                            horizontal: 15,
                            vertical: 10,
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              // question one
                              Text('Name of service',
                                  style: GoogleFonts.oxygen(
                                      color: HexColor('44493D'),
                                      fontSize: 14,
                                      height: 2.0)),
                              FormBuilderTextField(
                                name: 'question_one',
                                decoration: InputDecoration(
                                  labelText: 'Type here.',
                                ),
                                // onChanged: _onChanged,
                                // valueTransformer: (text) => num.tryParse(text),
                                validator: FormBuilderValidators.compose([
                                  FormBuilderValidators.required(context),
                                  FormBuilderValidators.numeric(context),
                                  FormBuilderValidators.max(context, 70),
                                ]),
                                keyboardType: TextInputType.text,
                              ),
                              SizedBox(
                                height: 20,
                              ),

                              // question two
                              Text('Briefly describe the new service',
                                  style: GoogleFonts.oxygen(
                                      color: HexColor('44493D'),
                                      fontSize: 14,
                                      height: 2.0)),
                              FormBuilderTextField(
                                name: 'brief_description',
                                maxLines: 3,
                                decoration: InputDecoration(
                                  labelText: 'Type here',
                                ),
                                // onChanged: _onChanged,
                                // valueTransformer: (text) => num.tryParse(text),
                                validator: FormBuilderValidators.compose([
                                  FormBuilderValidators.required(context),
                                  FormBuilderValidators.numeric(context),
                                  FormBuilderValidators.max(context, 70),
                                ]),
                                keyboardType: TextInputType.text,
                              ),
                              SizedBox(
                                height: 20,
                              ),

                              // question three
                              Text(
                                  'How much would it cost to request or deliver this new service?',
                                  style: GoogleFonts.oxygen(
                                      color: HexColor('44493D'),
                                      fontSize: 14,
                                      height: 2.0)),
                              FormBuilderTextField(
                                name: 'question_three',
                                decoration: InputDecoration(
                                  labelText: 'Type here.',
                                ),
                                // onChanged: _onChanged,
                                // valueTransformer: (text) => num.tryParse(text),
                                validator: FormBuilderValidators.compose([
                                  FormBuilderValidators.required(context),
                                  FormBuilderValidators.numeric(context),
                                  FormBuilderValidators.max(context, 70),
                                ]),
                                keyboardType: TextInputType.text,
                              ),
                              SizedBox(
                                height: 20,
                              ),

                              // question five
                              Text(
                                  'If offered the opportunity, do you want to become a promoting Agent for this new service?',
                                  style: GoogleFonts.oxygen(
                                      color: HexColor('44493D'),
                                      fontSize: 14,
                                      height: 2.0)),
                              FormBuilderRadioGroup(
                                decoration:
                                    InputDecoration(border: InputBorder.none),
                                name: 'question_two',
                                // onChanged: _onChanged,
                                validator: FormBuilderValidators.compose(
                                    [FormBuilderValidators.required(context)]),
                                options: [
                                  'Yes',
                                  'No',
                                ]
                                    .map((lang) => FormBuilderFieldOption(
                                          value: lang,
                                          child: Text('$lang'),
                                        ))
                                    .toList(growable: false),
                              ),
                              SizedBox(
                                height: 20,
                              ),

                              // question five
                              Text(
                                  'As a promoting Agent for this new service, how many referrals can you bring within 3-6months?',
                                  style: GoogleFonts.oxygen(
                                      color: HexColor('44493D'),
                                      fontSize: 14,
                                      height: 2.0)),
                              FormBuilderRadioGroup(
                                decoration:
                                    InputDecoration(border: InputBorder.none),
                                name: 'question_two',
                                orientation: OptionsOrientation.vertical,
                                onChanged: (val) {
                                  if (val == 'Other') {
                                    becomeProviderController
                                        .toggleProposedServiceReferrals(true);
                                    print(
                                        'other  == ${becomeProviderController.proposedServiceReferrals}');
                                  } else {
                                    becomeProviderController
                                        .toggleProposedServiceReferrals(false);
                                  }
                                },
                                validator: FormBuilderValidators.compose(
                                    [FormBuilderValidators.required(context)]),
                                options: [
                                  '10 new providers & 50 new requesters',
                                  '20 new providers & 150 new requesters',
                                  '50 new providers & 250 new requesters',
                                  '50 new providers & 500 new requesters',
                                  'Other',
                                ]
                                    .map((lang) => FormBuilderFieldOption(
                                          value: lang,
                                          child: Text('$lang'),
                                        ))
                                    .toList(growable: false),
                              ),

                              // briefly explain
                              if (becomeProviderController
                                  .proposedServiceReferrals.isTrue) ...[
                                Container(
                                  decoration: BoxDecoration(
                                    color: Colors.grey[100],
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                  child: Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: FormBuilderTextField(
                                      name: 'brief',
                                      decoration: InputDecoration(
                                        labelText: 'Briefly propose your offer',
                                        labelStyle: GoogleFonts.oxygen(
                                          fontSize: 12,
                                        ),
                                        border: InputBorder.none,
                                      ),
                                      // onChanged: _onChanged,
                                      // valueTransformer: (text) => num.tryParse(text),
                                      validator: FormBuilderValidators.compose([
                                        FormBuilderValidators.required(context),
                                        FormBuilderValidators.numeric(context),
                                        FormBuilderValidators.max(context, 70),
                                      ]),
                                      keyboardType: TextInputType.text,
                                      maxLines: 3,
                                    ),
                                  ),
                                ),
                              ],

                              SizedBox(
                                height: 20,
                              ),
                              // sumbit here
                              Container(
                                height: 50,
                                width: double.infinity,
                                child: TextButton(
                                  onPressed: () {
                                    // success alert
                                    Alert(
                                        style: alertStyle,
                                        context: context,
                                        title: "SUCCESSFUL",
                                        desc:
                                            "Thank you for proposing a new service for this platform. If it meets our requirements, our team will contact you",
                                        image: Image.asset(
                                            "assets/quizLogo/check.png"),
                                        buttons: [
                                          DialogButton(
                                            onPressed: () {
                                              Navigator.pushAndRemoveUntil(
                                                  context,
                                                  MaterialPageRoute(
                                                    builder: (context) =>
                                                        MyBottomNaigationBar(),
                                                  ),
                                                  (route) => false);
                                            },
                                            child: Text(
                                              "Ok",
                                              style: TextStyle(
                                                  color: Colors.white,
                                                  fontSize: 20),
                                            ),
                                          )
                                        ]).show();
                                  },
                                  child: Text('SUBMIT',
                                      style: GoogleFonts.oxygen(
                                          fontSize: 16,
                                          fontWeight: FontWeight.w600,
                                          color: Colors.white)),
                                ),
                                decoration: BoxDecoration(
                                    color: HexColor('32CD32'),
                                    borderRadius: BorderRadius.circular(50)),
                              ),
                            ],
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),
          ),
        );
      },
    );
  }
}
