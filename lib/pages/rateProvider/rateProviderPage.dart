import 'package:eva_icons_flutter/eva_icons_flutter.dart';
import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:rflutter_alert/rflutter_alert.dart';
import 'package:servicehub/pages/HomePage/widgets/BottomNavigationBar.dart';

class RateProviderPage extends StatelessWidget {
  const RateProviderPage({Key key}) : super(key: key);

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

    return Scaffold(
        appBar: AppBar(
          iconTheme: IconThemeData(color: Colors.white),
          backgroundColor: HexColor('32CD32'),
          title: Text('Rate Provider',
              style: GoogleFonts.oxygen(fontSize: 18, color: Colors.white)),
          elevation: 0,
        ),
        body: Padding(
          padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 15),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                width: double.infinity,
                color: Colors.white,
                child: Padding(
                  padding:
                      const EdgeInsets.symmetric(vertical: 20, horizontal: 15),
                  child: Column(
                    children: [
                      // pic here
                      Center(
                        child: CircleAvatar(
                          backgroundColor: Colors.grey[200],
                          radius: 45,
                          child: Icon(EvaIcons.image),
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      ),

                      // Name here
                      Text('John Kwame Kudo',
                          style: GoogleFonts.oxygen(
                              fontSize: 18, color: HexColor('44493D'))),

                      // Rate here
                      Container(
                        width: double.infinity,
                        child: Text('Rate'),
                        // child: FormBuilderRating(
                        //   decoration: InputDecoration(
                        //     border: InputBorder.none,
                        //     fillColor: Colors.yellow,
                        //   ),
                        //   name: 'rate',
                        //   filledColor: Colors.yellow,
                        //   iconSize: 32.0,
                        //   initialValue: 1.0,
                        //   max: 5.0,
                        //   // onChanged: _onChanged,
                        // ),
                      ),

                      //  write a review here
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
                              labelText: 'Write a review',
                              labelStyle: GoogleFonts.oxygen(fontSize: 12)),
                          // onChanged: _onChanged,
                          // valueTransformer: (text) => num.tryParse(text),
                          validator: (value) => "",

                          keyboardType: TextInputType.text,
                        ),
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
                            // success alert
                            Alert(
                                style: alertStyle,
                                context: context,
                                title: "SUCCESS",
                                desc:
                                    "You have successfully rated this service",
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
              )
            ],
          ),
        ));
  }
}
