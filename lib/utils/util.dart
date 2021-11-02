// import 'dart:convert';
// import 'dart:io';
// import 'package:best_mobile/model/accountModels.dart';
// import 'package:best_mobile/model/loginModel.dart';
// import 'package:best_mobile/screens/pages/accountServices/widgets/account_selection_tile.dart';
// import 'package:flash/flash.dart';
// import 'package:flutter/material.dart';
// import 'package:intl/intl.dart';

// class Utilities {
//   static String formatAmounts(dynamic amt) {
//     String formattedAmt;
//     final formatter = new NumberFormat("#,##0.00", "en_US");
//     // final formatter = new NumberFormat.simpleCurrency();

//     if (amt == null || amt.isEmpty || amt == '0') {
//       amt = "0,000.00";
//       formattedAmt = amt;
//     } else {
//       double amtDouble = double.parse(amt);
//       formattedAmt = formatter.format(amtDouble);
//     }

//     return formattedAmt;
//   }

//   static String dateFormat(DateTime date) {
//     return DateFormat("d-MMM-yyyy").format(date);
//     // return DateFormat.d().add_yMMM().format(date);
//   }

//   static String newdateFormat(DateTime date) {
//     return DateFormat("yyyy-M-dd").format(date);
//     // return DateFormat.yMMMd().format(_date);
//   }

//   static DateTime dateFromString(String date) {
//     var dateList = date.split('-');
//     int year = int.parse(dateList[0]);
//     int month = int.parse(dateList[1]);
//     int day = int.parse(dateList[2]);

//     var realDate = new DateTime(year, month, day);
//     return realDate;
//   }

//   static String fullDate(DateTime date) {
//     return DateFormat("EEEE,d-MMM-yyyy").format(date);
//     // return DateFormat.d().add_yMMM().format(date);
//   }

//   static String yearMD(DateTime date) {
//     return DateFormat("yyyy-MM-dd").format(date);
//     // return DateFormat.d().add_yMMM().format(date);
//   }

//   static String formatCardNo(String cardNo) {
//     String _cardNo = cardNo.substring(0, 4) +
//         cardNo
//             .substring(4, cardNo.length - 4)
//             .replaceAll(RegExp(r'[0-9]'), '*') +
//         cardNo.substring(cardNo.length - 4);

//     StringBuffer _formattedCardNumber = StringBuffer();
//     for (int i = 0; i < _cardNo.length; i++) {
//       if (i % 4 == 0 && i != 0) {
//         _formattedCardNumber.write(" ");
//       }
//       _formattedCardNumber.write(_cardNo[i]);
//     }

//     return _formattedCardNumber.toString();
//   }

//   static String graphdateFormat(DateTime date) {
//     return DateFormat("d/M/yy").format(date);
//     // return DateFormat.d().add_yMMM().format(date);
//   }

//   Future<String> imageToBase64(File path) async {
//     // File file = await testCompressAndGetFile(path, "Elijah");

//     List<int> imageBytes = await path.readAsBytes();
//     print(imageBytes);
//     String base64Image = base64Encode(imageBytes);
//     return base64Image;
//   }

//   static String getAccountTypes(String data) {
//     var newdata = data.split("- ");
//     return newdata[1];
//   }

//   static String accountstypesname(String data) {
//     var newdata = data.split("A - ");
//     return newdata[1];
//   }

//   static List<String> currencyValue(String data) {
//     var newdata = data.split("/");
//     print(newdata);
//     return newdata;
//   }

//   static String currencyImage(String data) {
//     var type = data.replaceAll(new RegExp(r"\s+"), "");
//     print(type);
//     switch (type) {
//       case "USD":
//         return "assets/images/USD.png";
//         break;
//       case "GBP":
//         return "assets/images/GBP.png";
//         break;
//       case "EUR":
//         return "assets/images/EUR.png";
//         break;
//       case "SLL":
//         return "assets/images/SLL.png";
//         break;
//       default:
//         return "assets/images/SLL.png";
//     }
//   }

//   static Color getColor(String type) {
//     switch (type) {
//       case "A":
//         return Colors.green;
//         break;
//       case "B":
//         return Colors.red;
//         break;
//       case "C":
//         return Colors.yellow[800];
//         break;
//       default:
//         return Colors.purpleAccent;
//     }
//   }

//   static List<Color> getGradientColor(String type) {
//     switch (type) {
//       case "A":
//         return [Colors.green[300], Colors.green];
//         break;
//       case "B":
//         return [Colors.red[300], Colors.red];
//         break;
//       case "C":
//         return [Colors.yellow[300], Colors.yellow];
//         break;
//       default:
//         return [Colors.purpleAccent, Colors.purpleAccent[100]];
//     }
//   }

//   String accNum(String acc) {
//     int length = acc.length;
//     String start = acc.substring(0, 3);
//     String end = acc.substring(length - 3, length);
//     int mask = length - 6;
//     String hash = "*" * mask;
//     return start + hash + end;
//   }

//   static void showErrorMessage(String message, BuildContext context) {
//     showFlash(
//         context: context,
//         duration: Duration(seconds: 5),
//         builder: (_, controller) {
//           return Flash(
//             backgroundColor: Colors.redAccent,
//             controller: controller,
//             position: FlashPosition.top,
//             style: FlashStyle.grounded,
//             child: FlashBar(
//               icon: Icon(
//                 Icons.error,
//                 size: 36.0,
//                 color: Colors.white,
//               ),
//               message: Text(
//                 message,
//                 style: TextStyle(
//                   color: Colors.white,
//                 ),
//               ),
//             ),
//           );
//         });
//   }

//   static void selectAccount({
//     BuildContext context,
//     List<AccountModelDatum> accounts,
//     onAcctSelected,
//     int selectedAcc,
//   }) {
//     double _screenHeight = MediaQuery.of(context).size.height;
//     double _screenWidth = MediaQuery.of(context).size.width;

//     showModalBottomSheet(
//       context: context,
//       isScrollControlled: true,
//       backgroundColor: Colors.transparent,
//       builder: (context) {
//         return StatefulBuilder(
//           builder: (context, setState) {
//             return Container(
//               height: _screenHeight * (0.11 * accounts.length + 0.25),
//               padding: EdgeInsets.symmetric(
//                 horizontal: _screenWidth * 0.001,
//                 vertical: _screenHeight * 0.000,
//               ),
//               decoration: BoxDecoration(
//                 color: Colors.white,
//                 borderRadius: BorderRadius.only(
//                   topLeft: Radius.circular(30.0),
//                   topRight: Radius.circular(30.0),
//                 ),
//               ),
//               child: Container(
//                 padding: EdgeInsets.symmetric(
//                   horizontal: _screenWidth * 0.03,
//                   vertical: _screenHeight * 0.001,
//                 ),
//                 decoration: BoxDecoration(
//                   color: Colors.transparent,
//                   borderRadius: BorderRadius.only(
//                     topLeft: Radius.circular(30.0),
//                     topRight: Radius.circular(30.0),
//                   ),
//                 ),
//                 child: Column(
//                   mainAxisSize: MainAxisSize.max,
//                   mainAxisAlignment: MainAxisAlignment.start,
//                   crossAxisAlignment: CrossAxisAlignment.center,
//                   children: [
//                     SizedBox(height: _screenHeight * 0.004),
//                     Container(
//                       width: _screenWidth * 0.12,
//                       height: _screenHeight * 0.0035,
//                       decoration: BoxDecoration(
//                         color: Colors.grey[600],
//                         borderRadius: BorderRadius.circular(3.0),
//                       ),
//                     ),
//                     SizedBox(height: _screenHeight * 0.015),
//                     Align(
//                       alignment: Alignment.center,
//                       child: Text(
//                         "Select Account",
//                         textAlign: TextAlign.center,
//                         style: TextStyle(
//                             fontSize: 18.0,
//                             fontWeight: FontWeight.w500,
//                             color: Colors.grey[700]),
//                       ),
//                     ),
//                     SizedBox(height: _screenHeight * 0.003),
//                     Text(
//                       'Tap on the preferred account to select it',
//                       style: TextStyle(fontSize: 13.3, color: Colors.grey[500]),
//                     ),
//                     SizedBox(height: _screenHeight * 0.03),
//                     Expanded(
//                       child: ListView.builder(
//                         itemCount: accounts.length,
//                         itemBuilder: (context, index) => AccountSelectionTile(
//                           account: accounts[index],
//                           index: index,
//                           selectedIndex: selectedAcc,
//                           onActivated: () {
//                             Navigator.of(context).pop();
//                             onAcctSelected(accounts[index]);
//                           },
//                         ),
//                       ),
//                     ),
//                     // SizedBox(height: _screenHeight * 0.002),
//                   ],
//                 ),
//               ),
//             );
//           },
//         );
//       },
//     );
//   }
// }
