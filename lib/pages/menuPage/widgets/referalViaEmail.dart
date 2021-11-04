import 'package:eva_icons_flutter/eva_icons_flutter.dart';
import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:rflutter_alert/rflutter_alert.dart';
import 'package:servicehub/pages/HomePage/widgets/BottomNavigationBar.dart';

class ReferalViaEmail extends StatelessWidget {
  const ReferalViaEmail({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // form key
    final _formKey = GlobalKey<FormBuilderState>();
    // alert styling
    var alertStyle = AlertStyle(
        isOverlayTapDismiss: false,
        isCloseButton: false,
        descStyle: GoogleFonts.oxygen(fontSize: 14, color: HexColor('44493D')),
        titleStyle: GoogleFonts.oxygen(
            fontSize: 16,
            color: HexColor('32CD32'),
            fontWeight: FontWeight.w600));
    return Container(
      width: double.infinity,
      color: Colors.white,
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
        child: Column(
          children: [
            // Referal via phone text here
            ListTile(
              leading: Icon(
                EvaIcons.emailOutline,
                color: HexColor('32CD32'),
              ),
              title: Text(
                'Referral via email',
                style: GoogleFonts.oxygen(
                  fontSize: 14,
                  color: HexColor("44493D"),
                ),
              ),
              subtitle: Text(
                'Referral code wil be sent to your email',
                style: GoogleFonts.oxygen(
                  fontSize: 14,
                  color: HexColor("B8B3B3"),
                ),
              ),
            ),
            // Form field here
            // phone number field
            Container(
              width: double.infinity,
              color: Colors.white,
              child: FormBuilder(
                  key: _formKey,
                  child: Padding(
                    padding: EdgeInsets.symmetric(horizontal: 15, vertical: 10),
                    child: Column(
                      children: [
                        // Phone Number
                        FormBuilderTextField(
                          name: 'email',
                          decoration: InputDecoration(
                            labelText: 'Email',
                          ),

                          // valueTransformer: (text) => num.tryParse(text),
                          validator: FormBuilderValidators.compose([
                            FormBuilderValidators.required(context),
                            FormBuilderValidators.max(context, 70),
                          ]),
                          keyboardType: TextInputType.number,
                          textInputAction: TextInputAction.next,
                        ),
                        SizedBox(
                          height: 10,
                        ),

                        SizedBox(
                          height: 20,
                        ),

                        // Submit button
                        Container(
                          height: 50,
                          width: double.infinity,
                          child: TextButton(
                            onPressed: () {
                              Alert(
                                  style: alertStyle,
                                  context: context,
                                  title: "SUCCESS",
                                  desc:
                                      "Referral code has been successfully sent to your email address: faddaful@gmail.com",
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
                            child: Text(
                              "SUBMIT",
                              textAlign: TextAlign.start,
                              style: GoogleFonts.oxygen(
                                  color: Colors.white, fontSize: 14),
                            ),
                          ),
                          decoration: BoxDecoration(
                              color: HexColor('32CD32'),
                              borderRadius: BorderRadius.circular(50)),
                        ),
                      ],
                    ),
                  )),
            )
          ],
        ),
      ),
    );
  }
}
