import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:servicehub/pages/InvoicePage/invoicePage.dart';

class PayButton extends StatelessWidget {
  const PayButton({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      color: Colors.white,
      child: Padding(
        padding: const EdgeInsets.symmetric(
          vertical: 10,
          horizontal: 15,
        ),
        child: Container(
          height: 50,
          width: double.infinity,
          child: TextButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => InvoicePage(),
                ),
              );
            },
            child: Text('PAY 12.6%',
                style: GoogleFonts.oxygen(
                    color: Colors.white,
                    fontSize: 14,
                    fontWeight: FontWeight.bold)),
          ),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(50),
            color: HexColor('32CD32'),
          ),
        ),
      ),
    );
  }
}
