import 'package:eva_icons_flutter/eva_icons_flutter.dart';
import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:provider/provider.dart';
import 'package:rflutter_alert/rflutter_alert.dart';
import 'package:servicehub/controllers/serviceControllers.dart';
import 'package:servicehub/models/categoriesModel.dart';
import 'package:servicehub/models/loginModel.dart';
import 'package:servicehub/models/mini_models.dart';
import 'package:servicehub/pages/HomePage/widgets/BottomNavigationBar.dart';
import 'package:servicehub/provider/globals.dart';
import 'package:servicehub/utils/util.dart';
import 'package:servicehub/utils/widgets/custom_list_modal.dart';
import 'package:servicehub/utils/widgets/errorWidget.dart';

class ProposeNewServicePage extends StatefulWidget {
  @override
  State<ProposeNewServicePage> createState() => _ProposeNewServicePageState();
}

class _ProposeNewServicePageState extends State<ProposeNewServicePage> {
  TextEditingController serviceName = TextEditingController();
  TextEditingController serviceDescription = TextEditingController();
  TextEditingController servicePrice = TextEditingController();
  TextEditingController serviceProposal = TextEditingController();
  UserData user;

  final _formKey = GlobalKey<FormBuilderState>();

  bool serviceReferrals = false;

  createService() async {
    if (serviceName.text.isNotEmpty &&
        serviceDescription.text.isNotEmpty &&
        servicePrice.text.isNotEmpty) {
      Map<String, dynamic> details = {
        "created_by_id": "2",
        "category_id": serviceCategory.value,
        "provider_id": "4",
        "price": servicePrice.text,
        "discount": 0,
        "title": serviceName.text,
        "description": serviceDescription.text,
        "banner": "jkhaksdjlsdfxeiojecdaks;aejrxxse",
        "otherProposal": serviceProposal.text,
        "attachment": ""
      };

      var res = await ServiceController.createService(context, details);

      if (res == null) {
        print("is null res");
        Alert(
            style: Utilities.alertStyle(),
            context: context,
            title: "SUCCESSFUL",
            desc:
                "Thank you for proposing a new service for this platform. If it meets our requirements, our team will contact you",
            image: Image.asset("assets/quizLogo/check.png"),
            buttons: [
              DialogButton(
                onPressed: () {
                  Navigator.pushAndRemoveUntil(
                      context,
                      MaterialPageRoute(
                        builder: (context) => MyBottomNaigationBar(),
                      ),
                      (route) => false);
                },
                child: Text(
                  "Ok",
                  style: TextStyle(color: Colors.white, fontSize: 20),
                ),
              )
            ]).show();
      }
    } else {
      showErrorMessage(context, 'Please provide all service information');
    }
  }

  List<ListOfItemsModel> categories = [];
  ListOfItemsModel serviceCategory;

  getCategories() {
    ServiceController.serviceCategories(context).then((value) {
      setState(() {
        categories = categoriesToList(value);
      });
    });
  }

  @override
  void initState() {
    final _globals = Provider.of<Globals>(context, listen: false);
    user = _globals.getUser;
    getCategories();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final _globals = Provider.of<Globals>(context);

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
                          FeildLabel(label: "Name of Service"),
                          FormBuilderTextField(
                            name: 'question_one',
                            controller: serviceName,
                            decoration: InputDecoration(
                              labelText: 'Type here.',
                            ),
                            // onChanged: _onChanged,
                            // valueTransformer: (text) => num.tryParse(text),
                            validator: (value) => "",

                            keyboardType: TextInputType.text,
                          ),
                          SizedBox(
                            height: 20,
                          ),

                          // question two

                          FeildLabel(label: "Briefly describe the new service"),
                          FormBuilderTextField(
                            name: 'brief_description',
                            controller: serviceDescription,
                            maxLines: 3,
                            decoration: InputDecoration(
                              labelText: 'Type here',
                            ),
                            // onChanged: _onChanged,
                            // valueTransformer: (text) => num.tryParse(text),
                            validator: (value) => "",

                            keyboardType: TextInputType.text,
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          FeildLabel(label: "Service Category"),
                          CustomListModal(
                            label: "Select",
                            list: categories,
                            onSelected: (val) {
                              print(val.name);
                              setState(() {
                                serviceCategory = val;
                              });
                            },
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          // question three

                          FeildLabel(
                              label:
                                  "How much would it cost to request or deliver this new service?"),
                          FormBuilderTextField(
                            name: 'question_three',
                            controller: servicePrice,
                            decoration: InputDecoration(
                              labelText: 'Type here.',
                            ),
                            // onChanged: _onChanged,
                            // valueTransformer: (text) => num.tryParse(text),
                            validator: (value) => "",

                            keyboardType: TextInputType.text,
                          ),
                          SizedBox(
                            height: 20,
                          ),

                          // question five

                          FeildLabel(
                              label:
                                  "If offered the opportunity, do you want to become a promoting Agent for this new service?"),
                          FormBuilderRadioGroup(
                            decoration:
                                InputDecoration(border: InputBorder.none),
                            name: 'question_two',
                            // onChanged: _onChanged,
                            validator: (value) => "",

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

                          FeildLabel(
                              label:
                                  'As a promoting Agent for this new service, how many referrals can you bring within 3-6months?'),
                          FormBuilderRadioGroup(
                            decoration:
                                InputDecoration(border: InputBorder.none),
                            name: 'question_two',
                            orientation: OptionsOrientation.vertical,
                            onChanged: (val) {
                              if (val == 'Other') {
                                setState(() {
                                  serviceReferrals = true;
                                });
                                print('other  == $serviceReferrals');
                              } else {
                                setState(() {
                                  serviceReferrals = false;
                                });
                              }
                            },
                            validator: (value) => "",
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
                          if (serviceReferrals) ...[
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
                                  validator: (value) => "",

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
                                createService();
                              },
                              child: _globals.getLoading
                                  ? SpinKitCircle(
                                      color: Colors.white,
                                      size: 23,
                                    )
                                  : Text('SUBMIT',
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
  }
}

class FeildLabel extends StatelessWidget {
  final String label;
  const FeildLabel({Key key, this.label}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(label,
        style: GoogleFonts.oxygen(
            color: HexColor('44493D'), fontSize: 14, height: 2.0));
  }
}
