import 'package:flutter/material.dart';

class Constants {
  static const appName = "ServiceHub";
  static const logoImage = "assets/images/logoo.png";

  //UI constants

  static Color mainColor = Color(0XFF1786b5);
  static Color secondaryColor = Color(0XFF867851);
  static int kPinLength = 4;
  static String kBackgroundImage = "assets/images/bk2.jpg";
  static String noDataFound = "assets/images/no_file.svg";
  static String apiError = "assets/images/errors.svg";

  //Urls

  static String url = "https://servicehub.cruitin.com/api";

  static final dynamic header = {
    "content-Type": "application/json",
  };
  static final dynamic header2 = {
    "Accept": "application/json",
    "content-type": "application/json"
  };

  static const double dialogPadding = 20;
  static const double dialogAvatarRadius = 45;
}
