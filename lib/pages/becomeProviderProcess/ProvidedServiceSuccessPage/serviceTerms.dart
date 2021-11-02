import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:servicehub/pages/becomeProviderProcess/ProvidedServiceSuccessPage/providedServiceSuccessPage.dart';

class ServiceTerms extends StatelessWidget {
  const ServiceTerms({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var appBar = AppBar(
      title: Text('Become Provider'),
    );
    return Scaffold(
      appBar: appBar,
      body: Container(
        height:
            MediaQuery.of(context).size.height - appBar.preferredSize.height,
        padding: EdgeInsets.symmetric(horizontal: 10.0, vertical: 15.0),
        child: Column(
          // crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Service Provider Terms of Payment',
                  style: GoogleFonts.oxygen(
                    color: Colors.black54,
                    fontSize: 18.0,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ],
            ),
            SizedBox(height: 6.0),
            Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 8.0, vertical: 3.0),
              child: Text(
                'You must review and accept the terms below to complete your subscription as a service provider on ServiceHub.',
                textAlign: TextAlign.center,
                style: GoogleFonts.oxygen(
                  fontSize: 13.0,
                  color: Colors.grey[400],
                ),
              ),
            ),
            SizedBox(height: 12.0),
            RichText(
              text: TextSpan(
                text: "I.",
                style: GoogleFonts.oxygen(
                  fontSize: 16.0,
                  fontWeight: FontWeight.w600,
                  color: Colors.grey[800],
                ),
                children: <TextSpan>[
                  TextSpan(
                    text:
                        " Before accepting any service request, the provider must engage the requester to agree on the service fee based on the scope of the task.",
                    style: GoogleFonts.oxygen(
                      fontSize: 15.0,
                      fontWeight: FontWeight.w400,
                      color: Colors.grey[700],
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 10.0),
            RichText(
              text: TextSpan(
                text: "II.",
                style: GoogleFonts.oxygen(
                  fontSize: 16.0,
                  fontWeight: FontWeight.w600,
                  color: Colors.grey[800],
                ),
                children: <TextSpan>[
                  TextSpan(
                    text:
                        "	The service fee agreed between the provider and requester is not subject to change after acceptance of the request by the provider.",
                    style: GoogleFonts.oxygen(
                      fontSize: 15.0,
                      fontWeight: FontWeight.w400,
                      color: Colors.grey[700],
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 10.0),
            RichText(
              text: TextSpan(
                text: "III.",
                style: GoogleFonts.oxygen(
                  fontSize: 16.0,
                  fontWeight: FontWeight.w600,
                  color: Colors.grey[800],
                ),
                children: <TextSpan>[
                  TextSpan(
                    text:
                        "	The agreed service fee is payable by the requester to the provider only on completion of the requested service.",
                    style: GoogleFonts.oxygen(
                      fontSize: 15.0,
                      fontWeight: FontWeight.w400,
                      color: Colors.grey[700],
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 10.0),
            RichText(
              text: TextSpan(
                text: "IV.",
                style: GoogleFonts.oxygen(
                  fontSize: 16.0,
                  fontWeight: FontWeight.w600,
                  color: Colors.grey[800],
                ),
                children: <TextSpan>[
                  TextSpan(
                    text:
                        "	For every request accepted by the provider, ServiceHub will charge the provider a platform fee of up to",
                    style: GoogleFonts.oxygen(
                      fontSize: 15.0,
                      fontWeight: FontWeight.w400,
                      color: Colors.grey[700],
                    ),
                  ),
                  TextSpan(
                    text: "	10%",
                    style: GoogleFonts.oxygen(
                      fontSize: 15.0,
                      fontWeight: FontWeight.w500,
                      color: Colors.grey[800],
                    ),
                  ),
                  TextSpan(
                    text: " on the agreed service fee.",
                    style: GoogleFonts.oxygen(
                      fontSize: 15.0,
                      fontWeight: FontWeight.w400,
                      color: Colors.grey[700],
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 10.0),
            RichText(
              text: TextSpan(
                text: "V.",
                style: GoogleFonts.oxygen(
                  fontSize: 16.0,
                  fontWeight: FontWeight.w600,
                  color: Colors.grey[800],
                ),
                children: <TextSpan>[
                  TextSpan(
                    text: "	The",
                    style: GoogleFonts.oxygen(
                      fontSize: 15.0,
                      fontWeight: FontWeight.w400,
                      color: Colors.grey[700],
                    ),
                  ),
                  TextSpan(
                    text: "	10%",
                    style: GoogleFonts.oxygen(
                      fontSize: 15.0,
                      fontWeight: FontWeight.w500,
                      color: Colors.grey[800],
                    ),
                  ),
                  TextSpan(
                    text:
                        "	platform fee chargeable to the provider will be payable by the requester at the time of the request in the form of a commitment fee.",
                    style: GoogleFonts.oxygen(
                      fontSize: 15.0,
                      fontWeight: FontWeight.w400,
                      color: Colors.grey[700],
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 10.0),
            RichText(
              text: TextSpan(
                text: "VI.",
                style: GoogleFonts.oxygen(
                  fontSize: 16.0,
                  fontWeight: FontWeight.w600,
                  color: Colors.grey[800],
                ),
                children: <TextSpan>[
                  TextSpan(
                    text: "	Consequently, only",
                    style: GoogleFonts.oxygen(
                      fontSize: 15.0,
                      fontWeight: FontWeight.w400,
                      color: Colors.grey[700],
                    ),
                  ),
                  TextSpan(
                    text: "	90%",
                    style: GoogleFonts.oxygen(
                      fontSize: 15.0,
                      fontWeight: FontWeight.w500,
                      color: Colors.grey[800],
                    ),
                  ),
                  TextSpan(
                    text:
                        "	of the agreed service fee will be due the provider on completion of the service.",
                    style: GoogleFonts.oxygen(
                      fontSize: 15.0,
                      fontWeight: FontWeight.w400,
                      color: Colors.grey[700],
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 10.0),
            RichText(
              text: TextSpan(
                text: "VII.",
                style: GoogleFonts.oxygen(
                  fontSize: 16.0,
                  fontWeight: FontWeight.w600,
                  color: Colors.grey[800],
                ),
                children: <TextSpan>[
                  TextSpan(
                    text:
                        "	The mode of payment by the requester to the provider is to be determined by both parties without recourse to ServiceHub.",
                    style: GoogleFonts.oxygen(
                      fontSize: 15.0,
                      fontWeight: FontWeight.w400,
                      color: Colors.grey[700],
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 10.0),
            RichText(
              text: TextSpan(
                text: "VIII.",
                style: GoogleFonts.oxygen(
                  fontSize: 16.0,
                  fontWeight: FontWeight.w600,
                  color: Colors.grey[800],
                ),
                children: <TextSpan>[
                  TextSpan(
                    text:
                        "	Where the service is being requested for a third party other than the requester, the agreed service fee will be payable by either the requester or the third party subject to the terms above. ",
                    style: GoogleFonts.oxygen(
                      fontSize: 15.0,
                      fontWeight: FontWeight.w400,
                      color: Colors.grey[700],
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
                child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Container(
                  height: 50,
                  width: MediaQuery.of(context).size.width * 0.65,
                  margin: EdgeInsets.only(bottom: 15),
                  child: TextButton(
                    onPressed: () {
                      Navigator.pushAndRemoveUntil(
                        context,
                        MaterialPageRoute(
                          builder: (context) => ProvidedServiceSuccesspage(),
                        ),
                        (route) => false,
                      );
                    },
                    child: Text('I accept Payment Terms',
                        style: GoogleFonts.oxygen(
                            fontSize: 16,
                            fontWeight: FontWeight.w400,
                            color: Colors.white)),
                  ),
                  decoration: BoxDecoration(
                    color: HexColor('32CD32'),
                    borderRadius: BorderRadius.circular(15),
                  ),
                ),
              ],
            ))
          ],
        ),
      ),
    );
  }
}
