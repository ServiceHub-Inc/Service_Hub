import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:rflutter_alert/rflutter_alert.dart';
import 'package:servicehub/pages/HomePage/widgets/BottomNavigationBar.dart';
import '../../widgets/selectedNetworkImage.dart';

class PromoteServicePaymentPage extends StatelessWidget {
  final String image;
  final String title;

  const PromoteServicePaymentPage({Key key, this.image, this.title})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    final _formKey = GlobalKey<FormBuilderState>();

    // alert style
    var alertStyle = AlertStyle(
        isOverlayTapDismiss: false,
        isCloseButton: false,
        descStyle: GoogleFonts.oxygen(fontSize: 14, color: HexColor('44493D')),
        titleStyle: GoogleFonts.oxygen(
            fontSize: 16,
            color: HexColor('32CD32'),
            fontWeight: FontWeight.w600));
    return Scaffold(
      appBar: AppBar(
        backgroundColor: HexColor('32CD32'),
        iconTheme: IconThemeData(color: Colors.white),
        elevation: 0,
        title: Text(
          'Payment',
          style: GoogleFonts.oxygen(fontSize: 18, color: Colors.white),
        ),
      ),
      body: Column(
        children: [
          // slected image here
          SelectedNetworkImage(image, title),
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
                      Container(
                        decoration: BoxDecoration(
                            color: Colors.grey[100],
                            borderRadius: BorderRadius.circular(10)),
                        child: Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 10),
                          child: FormBuilderTextField(
                            name: 'phoneNumber',
                            decoration: InputDecoration(
                              labelText: 'Phone number',
                              border: InputBorder.none,
                              prefixText: '+233',
                            ),

                            // valueTransformer: (text) => num.tryParse(text),
                            validator: (value) => "",

                            keyboardType: TextInputType.number,
                            textInputAction: TextInputAction.next,
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      // payment button
                      Container(
                        height: 50,
                        width: double.infinity,
                        child: TextButton(
                          onPressed: () {
                            Alert(
                                style: alertStyle,
                                context: context,
                                title: "PAYMENT SUCCESSFUL",
                                desc:
                                    "You have successfully completed the registration for the promotion of your service. Please allow up to 1-hour for the display of the promotion to users",
                                image: Image.asset("assets/quizLogo/check.png"),
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
                                      "OK",
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 20,
                                      ),
                                    ),
                                  )
                                ]).show();
                          },
                          child: Text(
                            "PAY",
                            textAlign: TextAlign.start,
                            style: GoogleFonts.oxygen(
                                color: Colors.white, fontSize: 14),
                          ),
                        ),
                        decoration: BoxDecoration(
                          color: HexColor('32CD32'),
                          borderRadius: BorderRadius.circular(50),
                        ),
                      ),
                    ],
                  ),
                )),
          )
        ],
      ),
    );
  }
}
