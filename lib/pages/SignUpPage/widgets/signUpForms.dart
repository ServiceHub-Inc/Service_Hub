import 'package:eva_icons_flutter/eva_icons_flutter.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:provider/provider.dart';
import 'package:servicehub/controllers/authController.dart';
import 'package:servicehub/pages/HomePage/widgets/BottomNavigationBar.dart';
import 'package:servicehub/pages/SignUpPage/widgets/signupWidgets.dart';
import 'package:servicehub/provider/globals.dart';
import 'package:servicehub/utils/widgets/errorWidget.dart';

class SignUpForms extends StatefulWidget {
  SignUpForms({Key key}) : super(key: key);

  @override
  _SignUpFormsState createState() => _SignUpFormsState();
}

class _SignUpFormsState extends State<SignUpForms> {
  TextEditingController fName = TextEditingController();
  TextEditingController lName = TextEditingController();
  TextEditingController email = TextEditingController();
  TextEditingController phone = TextEditingController();
  TextEditingController password = TextEditingController();
  TextEditingController confirmPassword = TextEditingController();
  TextEditingController refCode = TextEditingController();

  bool _showPassword = false;
  bool _showRepeatPassword = false;

  @override
  Widget build(BuildContext context) {
    final _globals = Provider.of<Globals>(context);
    return Form(
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
        child: Column(
          children: [
            // First name
            TextFormField(
              textInputAction: TextInputAction.next,
              keyboardType: TextInputType.text,
              controller: fName,
              decoration: InputDecoration(
                labelStyle: GoogleFonts.oxygen(color: Colors.grey),
                enabledBorder: new UnderlineInputBorder(
                    borderSide: new BorderSide(color: Colors.grey[300])),
                hintText: 'First Name',
                hintStyle:
                    GoogleFonts.oxygen(color: Colors.grey[400], fontSize: 14),
              ),
            ),

            SizedBox(
              height: 5,
            ),

            // Last Name
            TextFormField(
              textInputAction: TextInputAction.next,
              keyboardType: TextInputType.text,
              controller: lName,
              decoration: InputDecoration(
                labelStyle: GoogleFonts.oxygen(color: Colors.grey),
                enabledBorder: new UnderlineInputBorder(
                    borderSide: new BorderSide(color: Colors.grey[300])),
                hintText: 'Last Name',
                hintStyle:
                    GoogleFonts.oxygen(color: Colors.grey[400], fontSize: 14),
              ),
            ),

            SizedBox(
              height: 5,
            ),

            // Email field
            TextFormField(
              textInputAction: TextInputAction.next,
              keyboardType: TextInputType.emailAddress,
              controller: email,
              decoration: InputDecoration(
                labelStyle: GoogleFonts.oxygen(color: Colors.grey),
                enabledBorder: new UnderlineInputBorder(
                    borderSide: new BorderSide(color: Colors.grey[300])),
                hintText: 'Email (Optional)',
                hintStyle:
                    GoogleFonts.oxygen(color: Colors.grey[400], fontSize: 14),
              ),
            ),

            SizedBox(
              height: 5,
            ),

            // Phone numer field
            TextFormField(
              textInputAction: TextInputAction.next,
              keyboardType: TextInputType.number,
              controller: phone,
              decoration: InputDecoration(
                labelStyle: GoogleFonts.oxygen(color: Colors.grey),
                enabledBorder: new UnderlineInputBorder(
                    borderSide: new BorderSide(color: Colors.grey[300])),
                hintText: 'Phone Number',
                hintStyle:
                    GoogleFonts.oxygen(color: Colors.grey[400], fontSize: 14),
              ),
            ),

            SizedBox(
              height: 5,
            ),

            // Password
            TextFormField(
              textInputAction: TextInputAction.next,
              obscureText: !_showPassword,
              controller: password,
              decoration: InputDecoration(
                labelStyle: GoogleFonts.oxygen(color: Colors.grey),
                enabledBorder: new UnderlineInputBorder(
                    borderSide: new BorderSide(color: Colors.grey[300])),
                hintText: 'Enter Password',
                hintStyle:
                    GoogleFonts.oxygen(color: Colors.grey[400], fontSize: 14),
                suffixIcon: GestureDetector(
                  onTap: () {
                    setState(() {
                      _showPassword = !_showPassword;
                    });
                  },
                  child: Icon(
                    _showPassword ? EvaIcons.eye : EvaIcons.eyeOff,
                    size: 16,
                  ),
                ),
              ),
            ),

            SizedBox(
              height: 5,
            ),

            // Repeat Password
            TextFormField(
              textInputAction: TextInputAction.next,
              keyboardType: TextInputType.text,
              obscureText: !_showRepeatPassword,
              controller: confirmPassword,
              decoration: InputDecoration(
                  labelStyle: GoogleFonts.oxygen(color: Colors.grey),
                  enabledBorder: new UnderlineInputBorder(
                      borderSide: new BorderSide(color: Colors.grey[300])),
                  hintText: 'Repeat Password',
                  hintStyle:
                      GoogleFonts.oxygen(color: Colors.grey[400], fontSize: 14),
                  suffixIcon: GestureDetector(
                      onTap: () {
                        setState(() {
                          _showRepeatPassword = !_showRepeatPassword;
                        });
                      },
                      child: Icon(
                        _showRepeatPassword ? EvaIcons.eye : EvaIcons.eyeOff,
                        size: 16,
                      ))),
            ),

            SizedBox(
              height: 5,
            ),

            // Refferall code here
            TextFormField(
              textInputAction: TextInputAction.done,
              controller: refCode,
              decoration: InputDecoration(
                labelStyle: GoogleFonts.oxygen(color: Colors.grey),
                enabledBorder: new UnderlineInputBorder(
                    borderSide: new BorderSide(color: Colors.grey[300])),
                hintText: 'Enter Referral Code',
                hintStyle: GoogleFonts.oxygen(
                  fontSize: 14,
                  color: Colors.grey[400],
                ),
              ),
            ),

            // Custom check Box
            CustomCheckedBox(),

            // Button here
            Container(
              height: 50,
              width: double.infinity,
              decoration: BoxDecoration(
                  color: HexColor('32CD32'),
                  borderRadius: BorderRadius.circular(10)),
              child: TextButton(
                child: _globals.getLoading
                    ? SpinKitCircle(
                        size: 25,
                        color: Colors.white,
                      )
                    : _globals.getLoading
                        ? SpinKitCircle(
                            size: 27,
                            color: Colors.white,
                          )
                        : Text(
                            "SIGN UP",
                            style: GoogleFonts.oxygen(
                              fontSize: 18,
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              letterSpacing: 2,
                              height: 1.5,
                            ),
                          ),
                onPressed: () async {
                  if (fName.text.isNotEmpty &&
                      lName.text.isNotEmpty &&
                      phone.text.isNotEmpty &&
                      email.text.isNotEmpty &&
                      password.text.isNotEmpty &&
                      confirmPassword.text.isNotEmpty) {
                    if (password.text != confirmPassword.text) {
                      Map<String, dynamic> details = {
                        "firstName": fName.text,
                        "lastName": lName.text,
                        "phone": phone.text,
                        "email": email.text,
                        "password": password.text,
                        "confirmPassword": confirmPassword.text,
                        "refCode": refCode.text,
                      };
                      var res = await AuthController.signup(details);

                      if (res != null) {
                        Navigator.pushAndRemoveUntil(
                            context,
                            MaterialPageRoute(
                              builder: (context) => MyBottomNaigationBar(),
                            ),
                            (route) => false);
                      }
                    } else {
                      showErrorMessage(context, "Passwords do not match");
                    }
                  } else {
                    showErrorMessage(context, "Please fill all all fields");
                  }
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
