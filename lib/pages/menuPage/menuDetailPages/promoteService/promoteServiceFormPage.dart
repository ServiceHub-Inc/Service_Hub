import 'package:eva_icons_flutter/eva_icons_flutter.dart';
import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:servicehub/pages/menuPage/menuDetailPages/promoteService/promoteServiceBannerUploadPage.dart';

class PromoteServiceFormPage extends StatefulWidget {
  final String image;
  final String title;

  const PromoteServiceFormPage({Key key, this.image, this.title})
      : super(key: key);
  @override
  _PromoteServiceFormPageState createState() => _PromoteServiceFormPageState();
}

class _PromoteServiceFormPageState extends State<PromoteServiceFormPage> {
// passing data from the list

  final _formKey = GlobalKey<FormBuilderState>();

  @override
  Widget build(BuildContext context) {
    // alert styling
    return Scaffold(
      appBar: AppBar(
        backgroundColor: HexColor('32CD32'),
        iconTheme: IconThemeData(color: Colors.white),
        elevation: 0,
        title: Text(
          'Promote Service',
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
                        EvaIcons.briefcaseOutline,
                        color: HexColor('32CD32'),
                        size: 24,
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Text(widget.title,
                          style: GoogleFonts.oxygen(
                            color: HexColor('32CD32'),
                            fontSize: 14,
                            fontWeight: FontWeight.w600,
                          )),
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
                          horizontal: 15, vertical: 10),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(
                            height: 10,
                          ),
                          // Promotion title
                          FormBuilderTextField(
                            name: 'PromotionTitle',
                            maxLines: 1,
                            decoration: InputDecoration(
                              labelText: 'Promotion Title',
                              suffixIcon: Icon(
                                EvaIcons.text,
                                color: HexColor('32CD32'),
                              ),
                            ),
                            autovalidateMode:
                                AutovalidateMode.onUserInteraction,
                            // onChanged: _onChanged,
                            // valueTransformer: (text) => num.tryParse(text),

                            validator: (val) {
                              if (val.split(' ').length > 10) {
                                return 'Title must be at most 10 words';
                              } else
                                return null;
                            },
                            keyboardType: TextInputType.text,
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          // Promotion start date
                          FormBuilderDateTimePicker(
                            name: 'PromotionStartDate',
                            // onChanged: _onChanged,
                            inputType: InputType.date,
                            decoration: InputDecoration(
                                labelText: 'Promotion start date',
                                suffixIcon: Icon(
                                  EvaIcons.calendarOutline,
                                  color: HexColor('32CD32'),
                                )),
                            // initialTime: TimeOfDay(hour: 8, minute: 0),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          // Promotion end date:
                          FormBuilderDateTimePicker(
                            name: 'PromotionEndDate',
                            // onChanged: _onChanged,
                            inputType: InputType.date,
                            decoration: InputDecoration(
                                labelText: 'Promotion end date',
                                suffixIcon: Icon(
                                  EvaIcons.calendarOutline,
                                  color: HexColor('32CD32'),
                                )),
                            // initialTime: TimeOfDay(hour: 8, minute: 0),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          // Details about the promotion:
                          Text(
                            'Details about the promotion',
                            style: GoogleFonts.oxygen(
                              color: HexColor('44493D'),
                              fontSize: 14,
                              height: 2.0,
                            ),
                          ),
                          FormBuilderTextField(
                            name: 'brief_description',
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
                          ), // question three   // question five
                          Text(
                            'Choose a Package',
                            style: GoogleFonts.oxygen(
                              color: HexColor('44493D'),
                              fontSize: 14,
                              height: 2.0,
                            ),
                          ),
                          FormBuilderRadioGroup(
                            decoration:
                                InputDecoration(border: InputBorder.none),
                            name: 'choose_package',
                            // onChanged: _onChanged,
                            validator: (value) => "",

                            options: [
                              'Promote the service for 60 days @GH₵50',
                              'Promote the service for 30 days @GH₵25',
                              'Promote the service for 20 days @GH₵15',
                              'Promote the service for 10 days @GH₵10',
                              'Promote the service for 5 days @GH₵5',
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
                          // sumbit here
                          Container(
                            height: 50,
                            width: double.infinity,
                            child: TextButton(
                              onPressed: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => UploadBannerPage(),
                                  ),
                                );
                                
                              },
                              child: Text('NEXT',
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
