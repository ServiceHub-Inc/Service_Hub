import 'dart:convert';
import 'dart:io';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:intl/intl.dart';
import 'package:rflutter_alert/rflutter_alert.dart';

class Utilities {
  static String formatAmounts(dynamic amt) {
    String formattedAmt;
    final formatter = new NumberFormat("#,##0.00", "en_US");
    // final formatter = new NumberFormat.simpleCurrency();

    if (amt == null || amt.isEmpty || amt == '0') {
      amt = "0,000.00";
      formattedAmt = amt;
    } else {
      double amtDouble = double.parse(amt);
      formattedAmt = formatter.format(amtDouble);
    }

    return formattedAmt;
  }

  static String dateFormat(DateTime date) {
    return DateFormat("d-MMM-yyyy").format(date);
    // return DateFormat.d().add_yMMM().format(date);
  }

  static String getServiceImage(String path) {
        return "assets/serviceImages/plumber.jpg";
  }

  static String newdateFormat(DateTime date) {
    return DateFormat("yyyy/MM/dd").format(date);
    // return DateFormat.yMMMd().format(_date);
  }

  static String serviceDateFormat(DateTime date) {
    return DateFormat("MMM dd").format(date);

    // return DateFormat.yMMMd().format(_date);
  }

  static DateTime dateFromString(String date) {
    var dateList = date.split('-');
    int year = int.parse(dateList[0]);
    int month = int.parse(dateList[1]);
    int day = int.parse(dateList[2]);

    var realDate = new DateTime(year, month, day);
    return realDate;
  }

  static String fullDate(DateTime date) {
    return DateFormat("EEEE,d-MMM-yyyy").format(date);
    // return DateFormat.d().add_yMMM().format(date);
  }

  static String yearMD(DateTime date) {
    return DateFormat("yyyy-MM-dd").format(date);
    // return DateFormat.d().add_yMMM().format(date);
  }

  static String formatCardNo(String cardNo) {
    String _cardNo = cardNo.substring(0, 4) +
        cardNo
            .substring(4, cardNo.length - 4)
            .replaceAll(RegExp(r'[0-9]'), '*') +
        cardNo.substring(cardNo.length - 4);

    StringBuffer _formattedCardNumber = StringBuffer();
    for (int i = 0; i < _cardNo.length; i++) {
      if (i % 4 == 0 && i != 0) {
        _formattedCardNumber.write(" ");
      }
      _formattedCardNumber.write(_cardNo[i]);
    }

    return _formattedCardNumber.toString();
  }

  static String graphdateFormat(DateTime date) {
    return DateFormat("d/M/yy").format(date);
    // return DateFormat.d().add_yMMM().format(date);
  }

  Future<String> imageToBase64(File path) async {
    // File file = await testCompressAndGetFile(path, "Elijah");

    List<int> imageBytes = await path.readAsBytes();
    print(imageBytes);
    String base64Image = base64Encode(imageBytes);
    return base64Image;
  }

  static String getAccountTypes(String data) {
    var newdata = data.split("- ");
    return newdata[1];
  }

  static String accountstypesname(String data) {
    var newdata = data.split("A - ");
    return newdata[1];
  }

  static List<String> currencyValue(String data) {
    var newdata = data.split("/");
    print(newdata);
    return newdata;
  }

  static AlertStyle alertStyle() {
    return AlertStyle(
      isCloseButton: false,
      isOverlayTapDismiss: true,
      overlayColor: Colors.black.withOpacity(0.55),
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
  }

  static String getServiceDisplayImage(String serviceType) {
    var type = serviceType.toLowerCase().contains("Support")
        ? 'Support'
        : serviceType.contains("teach")
            ? 'Teaching'
            : serviceType.contains("i.t")
            ? 'Support'
            : serviceType.contains("home")
            ? 'Cleaning'
            : serviceType.contains("wash")
            ? 'Laundry'
            : serviceType.contains("clean")
                ? "Cleaning"
                : serviceType.contains("laundry")
                    ? "Laundry"
                    : serviceType.contains("security")
                        ? "Security"
                        : serviceType.contains("tutor")
                            ? "Teaching"
                            : serviceType.contains("plumb")
                                ? "Plumbing"
                                : serviceType.contains("develop")
                                    ? "Development"
                                    : "";
    print(type);
    switch (type) {
      case "Support":
        return "assets/serviceImages/security_banner.jpg";
        break;
      case "Teaching":
        return "assets/serviceImages/Home_tutor.png";
        break;
      case "Cleaning":
        return "assets/serviceImages/cleaner.jpg";
        break;
      case "Laundry":
        return "assets/serviceImages/laundry.jpg";
        break;
      case "Security":
        return "assets/serviceImages/security.jpg";
        break;
      case "Plumbing":
        return "assets/serviceImages/plumber.jpg";
        break;
      default:
        return "assets/serviceImages/plumber.jpg";
    }
  }

  static String currencyImage(String data) {
    var type = data.replaceAll(new RegExp(r"\s+"), "");
    print(type);
    switch (type) {
      case "USD":
        return "assets/images/USD.png";
        break;
      case "GBP":
        return "assets/images/GBP.png";
        break;
      case "EUR":
        return "assets/images/EUR.png";
        break;
      case "SLL":
        return "assets/images/SLL.png";
        break;
      default:
        return "assets/images/SLL.png";
    }
  }

  static Color getColor(String type) {
    switch (type) {
      case "A":
        return Colors.green;
        break;
      case "B":
        return Colors.red;
        break;
      case "C":
        return Colors.yellow[800];
        break;
      default:
        return Colors.purpleAccent;
    }
  }

  static List<Color> getGradientColor(String type) {
    switch (type) {
      case "A":
        return [Colors.green[300], Colors.green];
        break;
      case "B":
        return [Colors.red[300], Colors.red];
        break;
      case "C":
        return [Colors.yellow[300], Colors.yellow];
        break;
      default:
        return [Colors.purpleAccent, Colors.purpleAccent[100]];
    }
  }

  String accNum(String acc) {
    int length = acc.length;
    String start = acc.substring(0, 3);
    String end = acc.substring(length - 3, length);
    int mask = length - 6;
    String hash = "*" * mask;
    return start + hash + end;
  }
}
