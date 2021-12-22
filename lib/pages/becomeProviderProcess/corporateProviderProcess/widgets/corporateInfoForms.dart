import 'package:eva_icons_flutter/eva_icons_flutter.dart';
import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hexcolor/hexcolor.dart';

// ignore: must_be_immutable
class CorporateInfoForms extends StatelessWidget {
  final _formKey = GlobalKey<FormBuilderState>();

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      color: Colors.white,
      child: FormBuilder(
        key: _formKey,
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 15, vertical: 10),
          child: Column(
            children: [
              // Corporate name
              FormBuilderTextField(
                name: 'CompanyName',
                decoration: InputDecoration(
                  labelText: 'Company Name',
                ),

                // valueTransformer: (text) => num.tryParse(text),
                validator: (value) => "",
                keyboardType: TextInputType.text,
                textInputAction: TextInputAction.next,
              ),

              // Date of Incorporation
              FormBuilderDateTimePicker(
                name: 'date',
                // onChanged: _onChanged,
                inputType: InputType.date,
                decoration: InputDecoration(
                    labelText: 'Date of Incorporation',
                    suffixIcon: Icon(
                      EvaIcons.calendarOutline,
                      color: HexColor('32CD32'),
                    )),
                initialTime: TimeOfDay(hour: 8, minute: 0),
              ),

              // Email
              FormBuilderTextField(
                name: 'corporationEmail',
                decoration: InputDecoration(
                  labelText: 'Corporate Email',
                ),

                // valueTransformer: (text) => num.tryParse(text),
                validator: (value) => "",
                keyboardType: TextInputType.text,
                textInputAction: TextInputAction.next,
              ),

              // Bussiness Registration Number
              FormBuilderTextField(
                name: 'BusinessRegistrationNumber',
                decoration: InputDecoration(
                  labelText: 'Business Registration Number',
                ),

                // valueTransformer: (text) => num.tryParse(text),
                validator: (value) => "",
                keyboardType: TextInputType.text,
                textInputAction: TextInputAction.next,
              ),

              // Name of Corporate Liason
              FormBuilderTextField(
                name: 'NameOfCorporateLiason',
                decoration: InputDecoration(
                  labelText: 'Name of Corporate Liaison',
                ),

                // valueTransformer: (text) => num.tryParse(text),
                validator: (value) => "",
                keyboardType: TextInputType.number,
                textInputAction: TextInputAction.next,
              ),

              // Contact of Corporate Liason
              FormBuilderTextField(
                name: 'ContactOfCorporateLiason',
                decoration: InputDecoration(
                    labelText: ' Contact of Corporate Liaison',
                    suffixIcon: Icon(
                      EvaIcons.phoneCallOutline,
                      color: HexColor('32CD32'),
                    )),

                // valueTransformer: (text) => num.tryParse(text),
                validator: (value) => "",
                keyboardType: TextInputType.number,
                textInputAction: TextInputAction.next,
              ),

              FormBuilderTextField(
                name: 'Bussiness Location',
                decoration: InputDecoration(
                    labelText: 'Location',
                    helperText:
                        'The usual location from which your services are accessible',
                    helperStyle: GoogleFonts.oxygen(
                      color: HexColor('32CD32'),
                    ),
                    suffixIcon: Icon(
                      EvaIcons.navigation2Outline,
                      color: HexColor('32CD32'),
                    )),

                // valueTransformer: (text) => num.tryParse(text),
                validator: (value) => "",
                keyboardType: TextInputType.number,
                textInputAction: TextInputAction.next,
              ),
              SizedBox(height: 20),
              // first set of froms
            ],
          ),
        ),
      ),
    );
  }
}
