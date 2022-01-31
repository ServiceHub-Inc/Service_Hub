import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:pin_code_fields/pin_code_fields.dart';
import 'package:servicehub/pages/becomeProviderProcess/IndividualProviderProcess/personalInfoFormsPage.dart';

class PinCodeForm extends StatefulWidget {
  PinCodeForm({Key key}) : super(key: key);

  @override
  _PinCodeFormState createState() => _PinCodeFormState();
}

class _PinCodeFormState extends State<PinCodeForm> {
    @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 40),
      child: PinCodeTextField(
        keyboardType: TextInputType.number,
        appContext: context,
        length: 5,
        onChanged: (value) {
          print(value);
        },
        pinTheme: PinTheme(
            selectedColor: HexColor('32CD32'),
            activeColor: HexColor('32CD32'),
            inactiveColor: HexColor('C4C4C4'),
            fieldHeight: 50,
            fieldWidth: 40),
        // Alert
        onCompleted: (value) {
          Navigator.pushAndRemoveUntil(
            context,
            MaterialPageRoute(
              builder: (context) => IndividualInfoFormsPage(),
            ),
            (route) => false,
          );
        },
      ),
    );
  }
}
