import 'package:eva_icons_flutter/eva_icons_flutter.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:provider/provider.dart';
import 'package:servicehub/controllers/authController.dart';
import 'package:servicehub/provider/globals.dart';
import 'package:servicehub/utils/localStorage.dart';
import 'package:servicehub/utils/serviceLocator.dart';
import 'package:servicehub/utils/widgets/errorWidget.dart';

class SignInForms extends StatefulWidget {
  @override
  _SignInFormsState createState() => _SignInFormsState();
}

class _SignInFormsState extends State<SignInForms> {
  TextEditingController email = TextEditingController();
  TextEditingController password = TextEditingController();

  bool _showPassword = false;
  LocalStorageService storageService = locator<LocalStorageService>();

  @override
  void initState() {
    if (storageService.username != null && storageService.username.isNotEmpty) {
      email = TextEditingController(text: storageService.username);
    }
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final _globals = Provider.of<Globals>(context);

    return Form(
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
        child: Column(
          children: [
            // User name field
            TextFormField(
              keyboardType: TextInputType.emailAddress,
              controller: email,
              decoration: InputDecoration(
                // contentPadding: EdgeInsets.all(10),
                labelStyle: GoogleFonts.oxygen(color: Colors.grey),
                enabledBorder: new UnderlineInputBorder(
                    borderSide: new BorderSide(color: Colors.grey[300])),
                hintText: 'Phone or Email',
                hintStyle: GoogleFonts.oxygen(
                  fontSize: 14,
                  color: Colors.grey[400],
                ),
              ),
            ),

            SizedBox(
              height: 5,
            ),

            // Email field
            TextFormField(
              obscureText: !_showPassword,
              controller: password,
              decoration: InputDecoration(
                // contentPadding: EdgeInsets.all(10),
                labelStyle: GoogleFonts.oxygen(color: Colors.grey),
                enabledBorder: new UnderlineInputBorder(
                    borderSide: new BorderSide(color: Colors.grey[300])),
                hintText: 'Enter Password',
                hintStyle:
                    GoogleFonts.oxygen(fontSize: 14, color: Colors.grey[400]),
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

            // Phone numer field
            SizedBox(
              height: 25,
            ),

            // Password

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
                    : Text(
                        "SIGN IN",
                        style: GoogleFonts.oxygen(
                          fontSize: 18,
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          letterSpacing: 2,
                          height: 1.5,
                        ),
                      ),
                onPressed: () async {
                  if (email.text.isNotEmpty && password.text.isNotEmpty) {
                    await AuthController.login(
                      context,
                      email.text,
                      password.text,
                    );
                  } else {
                    showErrorMessage(context, "Please fill all fields");
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
