import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:rflutter_alert/rflutter_alert.dart';
import 'package:servicehub/pages/HomePage/widgets/BottomNavigationBar.dart';

class ServiceCancellationFormPage extends StatelessWidget {
  const ServiceCancellationFormPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // forms key
    GlobalKey<FormBuilderState> _formKey = GlobalKey();

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
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.white),
        backgroundColor: HexColor('32CD32'),
        title: Text('Service Cancellation',
            style: GoogleFonts.oxygen(fontSize: 18, color: Colors.white)),
        elevation: 0,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            // header info
            Container(
              width: double.infinity,
              color: Colors.white,
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
                child: Column(
                  children: [
                    ListTile(
                      title: Text(
                        'Service ',
                        style: GoogleFonts.oxygen(
                          fontSize: 12,
                          color: HexColor("B8B3B3"),
                        ),
                      ),
                      subtitle: Text(
                        'Cancellation Form',
                        style: GoogleFonts.oxygen(
                            fontSize: 18,
                            color: HexColor("44493D"),
                            fontWeight: FontWeight.w600),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 10,
            ),

            // forms here,
            Container(
                width: double.infinity,
                color: Colors.white,
                child: FormBuilder(
                  key: _formKey,
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                        vertical: 15, horizontal: 15),
                    child: Column(
                      children: [
                        //
                        FormBuilderRadioGroup(
                          wrapDirection: Axis.vertical,
                          decoration: InputDecoration(
                            labelText: 'Reason for cancellation',
                            labelStyle: GoogleFonts.oxygen(
                              fontSize: 20,
                              color: HexColor("32CD32"),
                            ),
                          ),
                          name: 'best_language',
                          // onChanged: _onChanged,
                          validator: (value) => "",
                          options: [
                            'I changed my mind',
                            'I encountered some emergency',
                            'Service seeker requested a cancellation',
                          ]
                              .map((lang) => FormBuilderFieldOption(
                                    value: lang,
                                    child: Text('$lang'),
                                  ))
                              .toList(growable: false),
                        ),
                        SizedBox(
                          height: 30,
                        ),

                        Row(
                          children: [
                            Text(
                              'Other',
                              style: GoogleFonts.oxygen(
                                fontSize: 14,
                                color: HexColor("32CD32"),
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        // Brief description
                        Container(
                          decoration: BoxDecoration(
                            color: Colors.grey[200],
                            borderRadius: BorderRadius.circular(15),
                          ),
                          width: double.infinity,
                          child: FormBuilderTextField(
                            maxLines: 3,
                            name: 'other',
                            decoration: InputDecoration(
                              border: InputBorder.none,
                              contentPadding: EdgeInsets.symmetric(
                                  horizontal: 10, vertical: 15),
                              // labelText:'other',
                            ),
                            // onChanged: _onChanged,
                            // valueTransformer: (text) => num.tryParse(text),
                            validator: (value) => "",
                            keyboardType: TextInputType.text,
                          ),
                        ),
                        SizedBox(
                          height: 20,
                        ),

                        // Submit button
                        //  Send button
                        Container(
                          height: 50,
                          width: double.infinity,
                          child: TextButton(
                            onPressed: () {
                              // success alert
                              Alert(
                                  style: alertStyle,
                                  context: context,
                                  title: "SUCCESS",
                                  desc:
                                      "Service is cancelled successfully, We will inform (Provider name) of your reason",
                                  image:
                                      Image.asset("assets/quizLogo/check.png"),
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
                                            color: Colors.white, fontSize: 20),
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
                )),
          ],
        ),
      ),
    );
  }
}
